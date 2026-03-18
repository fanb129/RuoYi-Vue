<template>
  <div class="workbench-container">
    <div class="toolbar">
      <el-button-group>
        <el-button type="primary" icon="el-icon-plus" size="small" @click="addNode">添加节点</el-button>
        <el-button
          :type="isEdgeMode ? 'success' : 'primary'"
          icon="el-icon-share"
          size="small"
          @click="toggleEdgeMode">
          {{ isEdgeMode ? '退出连线模式' : '进入连线模式' }}
        </el-button>
        <el-button type="danger" icon="el-icon-delete" size="small" @click="deleteSelected">删除选中</el-button>
        <el-button type="warning" icon="el-icon-refresh-left" size="small" @click="clearCanvas">清空画布</el-button>
      </el-button-group>

      <div style="float: right;">
        <el-button
          v-if="currentGraphDetail"
          type="warning"
          icon="el-icon-edit-outline"
          size="small"
          @click="handleUpdateGraph">
          保存
        </el-button>
        <el-button type="success" icon="el-icon-upload2" size="small" @click="saveGraph">
          {{ currentGraphDetail ? '另存为新图' : '保存到我的图库' }}
        </el-button>

        <template v-if="isAdmin">
          <el-button
            v-if="currentCaseDetail"
            type="warning"
            icon="el-icon-edit-outline"
            size="small"
            @click="handleUpdateCase">
            覆盖保存案例
          </el-button>
          <el-button type="info" icon="el-icon-s-promotion" size="small" @click="publishCase">
            {{ currentCaseDetail ? '另存为新案例' : '发布为案例' }}
          </el-button>
        </template>
      </div>
    </div>

    <div class="main-content">
      <div id="graph-container" class="canvas-area"></div>

      <div class="side-panel">
        <el-card class="panel-card" shadow="hover">
          <div slot="header" class="clearfix">
            <span>图属性统计</span>
          </div>
          <div class="info-item">节点总数：<el-tag size="small">{{ graphStats.nodeCount }}</el-tag></div>
          <div class="info-item">边总数：<el-tag size="small" type="success">{{ graphStats.edgeCount }}</el-tag></div>
          <el-divider></el-divider>

          <template v-if="currentNode && currentNode.type === 'node'">
            <div class="info-item" style="display: flex; align-items: center;">
              节点名称：
              <el-input
                v-model="currentNode.label"
                size="small"
                style="width: 140px; margin-left: 10px;"
                @change="updateNodeLabel"
                @keyup.enter.native="updateNodeLabel"
                placeholder="修改节点名称"
              ></el-input>
            </div>
            <div class="info-item">节点度数：<b>{{ currentNode.degree }}</b></div>
          </template>

          <template v-else-if="currentNode && currentNode.type === 'edge'">
            <div class="info-item" style="display: flex; align-items: center;">
              连线权重：
              <el-input
                v-model.number="currentNode.weight"
                size="small"
                style="width: 140px; margin-left: 10px;"
                placeholder="请输入数字权重"
                @change="updateEdgeWeight"
                @keyup.enter.native="updateEdgeWeight"
              ></el-input>
            </div>
<!--            <div class="info-item">节点度数：<b>-</b></div>-->
          </template>

          <template v-else>
            <div class="info-item">当前选中：<b>未选中任何元素</b></div>
<!--            <div class="info-item">节点度数：<b>-</b></div>-->
          </template>
        </el-card>

        <el-card class="panel-card" shadow="hover" style="margin-top: 15px;">
          <div slot="header" class="clearfix">
            <span>算法仿真执行</span>
          </div>
          <el-select v-model="selectedAlgorithm" placeholder="请选择经典算法" size="small" style="width: 100%; margin-bottom: 15px;">
            <el-option label="广度优先搜索 (BFS)" value="bfs"></el-option>
            <el-option label="深度优先搜索 (DFS)" value="dfs"></el-option>
            <el-option label="Dijkstra 最短路径" value="dijkstra"></el-option>
          </el-select>
          <div class="algo-controls">
            <el-button
              type="primary"
              size="small"
              @click="handleAlgorithmAction">
              {{ isSimulating ? '下一步 (Step)' : '开始仿真' }}
            </el-button>
            <el-button size="small" @click="resetAlgorithm">重置状态</el-button>
          </div>
        </el-card>
      </div>

      </div>
    <el-dialog title="保存到我的图库" :visible.sync="saveGraphOpen" width="500px" append-to-body>
      <el-form ref="graphForm" :model="graphForm" :rules="graphRules" label-width="80px">
        <el-form-item label="图库名称" prop="graphName">
          <el-input v-model="graphForm.graphName" placeholder="给你的图起个名字吧" />
        </el-form-item>
        <el-form-item label="备注描述" prop="remark">
          <el-input v-model="graphForm.remark" type="textarea" placeholder="记录一下这个图的用途..." />
        </el-form-item>
      </el-form>
      <div slot="footer" class="dialog-footer">
        <el-button type="primary" @click="submitSaveGraph">确 定</el-button>
        <el-button @click="saveGraphOpen = false">取 消</el-button>
      </div>
    </el-dialog>
    <el-dialog title="发布为教学案例" :visible.sync="publishCaseOpen" width="500px" append-to-body>
      <el-form ref="caseForm" :model="caseForm" :rules="caseRules" label-width="80px">
        <el-form-item label="案例名称" prop="caseName">
          <el-input v-model="caseForm.caseName" placeholder="请输入教学案例名称" />
        </el-form-item>
        <el-form-item label="案例分类" prop="caseType">
          <el-select v-model="caseForm.caseType" placeholder="请选择案例分类" style="width: 100%">
            <el-option
              v-for="dict in dict.type.case_type"
              :key="dict.value"
              :label="dict.label"
              :value="dict.value"
            ></el-option>
          </el-select>
        </el-form-item>
        <el-form-item label="教学说明" prop="remark">
          <el-input v-model="caseForm.remark" type="textarea" placeholder="请输入教学指导说明..." />
        </el-form-item>
      </el-form>
      <div slot="footer" class="dialog-footer">
        <el-button type="primary" @click="submitPublishCase">确 定</el-button>
        <el-button @click="publishCaseOpen = false">取 消</el-button>
      </div>
    </el-dialog>

  </div>
</template>

<script>
import G6 from '@antv/g6';
import { addGraph, getGraph, updateGraph } from "@/api/graph/graph";
import { addTeaching, getTeaching, updateTeaching } from "@/api/teaching/teaching";

export default {
  name: 'Workbench',
  dicts: ['case_type'],
  data() {
    return {
      graph: null,
      isAdmin: false,
      isEdgeMode: false, // 是否处于连线模式
      isSimulating: false,
      algoSteps: [],       // 存放算法解析出来的所有步骤路径
      currentStepIndex: 0, // 当前演示到了第几步
      nodeCounter: 0, // 用于生成唯一节点编号
      graphStats: { nodeCount: 0, edgeCount: 0 },
      currentNode: null,
      selectedAlgorithm: 'bfs',

      saveGraphOpen: false,
      publishCaseOpen: false,
      graphForm: { graphName: undefined, remark: undefined },
      caseForm: { caseName: undefined, caseType: undefined, remark: undefined },
      graphRules: {
        graphName: [{ required: true, message: "图库名称不能为空", trigger: "blur" }]
      },
      caseRules: {
        caseName: [{ required: true, message: "教学案例名称不能为空", trigger: "blur" }],
        caseType: [{ required: true, message: "必须选择一个案例分类", trigger: "change" }]
      },
      currentGraphDetail: null, // 如果是从【我的图库】跳转来，存图库详情
      currentCaseDetail: null,  // 如果是从【教学案例】跳转来，存案例详情
    };
  },
  created() {
    // 若依框架中，当前用户的角色数组存在 this.$store.getters.roles 里
    // 取出角色数组，判断里面是否包含 'admin'
    const roles = this.$store.getters.roles || [];
    this.isAdmin = roles.includes('admin') || roles.includes('sys_admin');
  },
  mounted() {
    this.initGraph();
    this.loadDataFromRoute();
  },
  methods: {
    // 1. 初始化核心画布
    initGraph() {
      const container = document.getElementById('graph-container');
      this.graph = new G6.Graph({
        container: container,
        width: container.scrollWidth,
        height: container.scrollHeight || 600,
        modes: {
          // 【修改1】：去掉了 'click-select'，我们自己来控制选中！
          default: ['drag-canvas', 'zoom-canvas', 'drag-node'],
          addEdge: ['create-edge', 'drag-canvas', 'zoom-canvas']
        },
        defaultNode: {
          type: 'circle',
          size: 40,
          style: { fill: '#C6E5FF', stroke: '#5B8FF9', lineWidth: 2, cursor: 'pointer' },
          labelCfg: { style: { fill: '#333', fontSize: 14, fontWeight: 'bold' } }
        },
        defaultEdge: {
          type: 'line',
          label: '1', // 【关键】给每一条新创建出来的线一个默认权重 1
          style: {
            stroke: '#A3B1BF',
            lineWidth: 2,
            endArrow: true,
            cursor: 'pointer',
            lineAppendWidth: 15 // 保持这个隐形点击热区
          },
          // 【新增】配置权重文字显示的样式和位置
          labelCfg: {
            autoRotate: true, // 文字随连线角度自动旋转，不会倒着显示
            refY: -10, // 文字距离连线本体向上偏移 10px，防止压线
            style: { fill: '#333', fontSize: 13, fontWeight: 'bold' }
          }
        },
        nodeStateStyles: {
          selected: { fill: '#9EC9FF', stroke: '#5B8FF9', lineWidth: 3 },
          active: { fill: '#FFC069', stroke: '#FA8C16', lineWidth: 3 }
        },
        edgeStateStyles: {
          selected: { stroke: '#F56C6C', lineWidth: 3 }, // 选中边时变成红色，给用户强提示
          active: { stroke: '#FA8C16', lineWidth: 3 }
        }
      });

      // // 初始化测试数据
      // const initData = {
      //   nodes: [{ id: 'node1', label: 'V1', x: 200, y: 200 }, { id: 'node2', label: 'V2', x: 400, y: 200 }],
      //   edges: [{ source: 'node1', target: 'node2' }]
      // };
      // this.graph.data(initData);
      // this.graph.render();
      this.updateGraphStats();

      // --- 事件绑定 ---
      this.graph.on('aftercreateedge', (e) => {
        this.updateGraphStats();
      });

      // 1. 监听节点点击
      this.graph.on('node:click', (e) => {
        if (this.isEdgeMode) return;
        this.clearAllSelected();
        this.graph.setItemState(e.item, 'selected', true);

        const item = e.item;
        const totalEdges = item.getEdges().length;
        const inEdges = item.getInEdges().length;
        const outEdges = item.getOutEdges().length;

        this.currentNode = {
          id: item.getModel().id,
          label: item.getModel().label, // 绑定到右侧输入框
          degree: `${totalEdges} (入:${inEdges} 出:${outEdges})`,
          type: 'node' // 【新增】：告诉右侧面板这是一个节点
        };
      });

      // 2. 监听边点击 (在 initGraph 方法内)
      this.graph.on('edge:click', (e) => {
        if (this.isEdgeMode) return;
        this.clearAllSelected();
        this.graph.setItemState(e.item, 'selected', true);

        const item = e.item;
        const model = item.getModel(); // 获取边的底层数据模型

        this.currentNode = {
          id: model.id,
          // 【核心】：获取 G6 边的 label（即权重），如果没有，默认给个 1 字符串
          weight: model.label || '1',
          type: 'edge' // 告诉面板这是一个边
        };
      });

      // 3. 点击空白处 (在 initGraph 方法内)
      this.graph.on('canvas:click', () => {
        this.clearAllSelected();
        this.currentNode = null;
      });
    },

    // 根据路由参数加载历史数据
    loadDataFromRoute() {
      const graphId = this.$route.query.graphId;
      const caseId = this.$route.query.caseId;

      if (graphId) {
        getGraph(graphId).then(res => {
          if (res.data) {
            this.currentGraphDetail = res.data; // 【关键】保存原始完整数据
            if (res.data.graphData) {
              const dataObj = JSON.parse(res.data.graphData);
              this.graph.read(dataObj);
              this.updateGraphStats();
            }
            this.$message.success(`正在编辑图库: ${res.data.graphName}`);
          }
        });
      } else if (caseId) {
        getTeaching(caseId).then(res => {
          if (res.data) {
            this.currentCaseDetail = res.data; // 【关键】保存原始完整数据
            if (res.data.graphData) {
              const dataObj = JSON.parse(res.data.graphData);
              this.graph.read(dataObj);
              this.updateGraphStats();
            }
            this.$message.success(`正在编辑案例: ${res.data.caseName}`);
          }
        });
      }
    },
    updateNodeLabel() {
      // 严谨校验：确保当前真的选中了一个节点，且输入框有值
      if (!this.currentNode || this.currentNode.type !== 'node') return;
      if (!this.currentNode.label) {
        return this.$message.warning('节点名称不能为空');
      }

      // 1. 通过底层绝不重复的 ID 找到 G6 画布上的那个真实节点对象
      const item = this.graph.findById(this.currentNode.id);

      if (item) {
        // 2. 核心 API：局部更新节点的属性（图会自动重绘这个节点）
        this.graph.updateItem(item, {
          label: this.currentNode.label
        });
        this.$message.success('名称修改成功！');
      }
    },
    updateEdgeWeight() {
      // 严谨校验：确保当前真的选中了一条边，且输入框有值
      if (!this.currentNode || this.currentNode.type !== 'edge') return;

      // 输入校验：因为权重在 Dijkstra 算法里必须是数字（通常是非负数）
      if (this.currentNode.weight === '' || isNaN(this.currentNode.weight)) {
        this.$message.warning('连线权重必须是数字');
        // 将输入框重置回画布上的旧值
        const item = this.graph.findById(this.currentNode.id);
        this.currentNode.weight = item.getModel().label;
        return;
      }

      // 1. 找到对应的真实连线对象
      const item = this.graph.findById(this.currentNode.id);

      if (item) {
        // 2. 核心 API：局部更新边的属性 label（这里我们把它当作“权重”来用）
        // 在存入底层前，最好转成字符串，防止 G6 警告
        this.graph.updateItem(item, {
          label: String(this.currentNode.weight)
        });
        this.$message.success('连线权重修改成功！');
      }
    },
    handleUpdateGraph() {
      // 组装提交对象：把老对象的属性展开（包含了ID、名字、备注等），然后用新的画板数据覆盖过去
      const submitData = {
        ...this.currentGraphDetail,
        graphData: JSON.stringify(this.graph.save()),
        nodeCount: this.graphStats.nodeCount,
        edgeCount: this.graphStats.edgeCount
      };

      updateGraph(submitData).then(response => {
        this.$modal.msgSuccess("覆盖保存成功！");
      });
    },
    handleUpdateCase() {
      const submitData = {
        ...this.currentCaseDetail,
        graphData: JSON.stringify(this.graph.save()),
        nodeCount: this.graphStats.nodeCount,
        edgeCount: this.graphStats.edgeCount
      };

      updateTeaching(submitData).then(response => {
        this.$modal.msgSuccess("案例数据覆盖保存成功！");
      });
    },
    // 2. 更新统计数据
    updateGraphStats() {
      if (!this.graph) return;
      this.graphStats.nodeCount = this.graph.getNodes().length;
      this.graphStats.edgeCount = this.graph.getEdges().length;
    },

    // 3. 核心工具类：添加节点
    addNode() {
      this.$prompt('请输入节点名称', '添加节点', {
        confirmButtonText: '确定',
        cancelButtonText: '取消',
        inputValue: `V${this.nodeCounter}`, // 给个默认值，方便用户直接回车
      }).then(({ value }) => {
        // 使用时间戳生成更加绝对唯一的底层 ID
        const uniqueId = `node_${new Date().getTime()}`;

        const model = {
          id: uniqueId,   // 底层唯一标识，绝对不重复
          label: value,   // 用户输入的展示名称，哪怕重复也无所谓！
          x: 300 + Math.random() * 100,
          y: 200 + Math.random() * 100,
        };

        this.graph.addItem('node', model);
        this.nodeCounter++;
        this.updateGraphStats();
        this.$message.success(`成功添加节点: ${value}`);
      }).catch(() => {
        // 用户点击取消，什么都不做
      });
    },

    // 4. 核心工具类：切换连线模式
    toggleEdgeMode() {
      this.isEdgeMode = !this.isEdgeMode;
      // 核心 API：根据状态切换 G6 的交互模式
      this.graph.setMode(this.isEdgeMode ? 'addEdge' : 'default');
      if (this.isEdgeMode) {
        this.$message.warning('已进入连线模式：请在节点上按下鼠标并拖拽到另一个节点');
      } else {
        this.$message.success('已退出连线模式：恢复节点拖拽');
      }
    },

    // 5. 核心工具类：删除选中
    deleteSelected() {
      // 获取当前所有处于 selected 状态的节点和边
      const selectedNodes = this.graph.findAllByState('node', 'selected');
      const selectedEdges = this.graph.findAllByState('edge', 'selected');

      if (selectedNodes.length === 0 && selectedEdges.length === 0) {
        return this.$message.warning('请先点击选中需要删除的节点或边！');
      }

      // 先删边，后删节点，防止报错
      selectedEdges.forEach(edge => this.graph.removeItem(edge));
      selectedNodes.forEach(node => this.graph.removeItem(node));

      this.currentNode = null;
      this.updateGraphStats();
      this.$message.success('删除成功');
    },

    // 【新增方法】：手动清除画布上所有节点和边的 selected (选中) 状态
    clearAllSelected() {
      if (!this.graph) return;
      // 找出现有被选中的节点并取消选中
      this.graph.findAllByState('node', 'selected').forEach(node => {
        this.graph.setItemState(node, 'selected', false);
      });
      // 找出现有被选中的边并取消选中
      this.graph.findAllByState('edge', 'selected').forEach(edge => {
        this.graph.setItemState(edge, 'selected', false);
      });
    },

    clearCanvas() {
      this.$confirm('确定要清空画布吗?', '提示', { type: 'warning' }).then(() => {
        this.graph.clear();
        this.currentNode = null;
        this.nodeCounter = 1;
        this.updateGraphStats();
      }).catch(() => {});
    },

    saveGraph() {
      if (this.graph.getNodes().length === 0) return this.$message.warning("画布为空，无需保存");
      this.graphForm = { graphName: undefined, remark: undefined };
      this.saveGraphOpen = true;
    },
    submitSaveGraph() {
      this.$refs["graphForm"].validate(valid => {
        if (valid) {
          // 1. 获取画布底层数据并转为字符串
          const graphJsonData = JSON.stringify(this.graph.save());
          // 2. 组装发给后端的对象
          const submitData = {
            ...this.graphForm,
            graphData: graphJsonData,
            nodeCount: this.graphStats.nodeCount,
            edgeCount: this.graphStats.edgeCount,
            // 提醒：userId 在若依后端通常会自动处理，如果后端报错说 userId 为空，
            // 可以在这里加上 userId: this.$store.getters.id 或者 userId: 1 做测试
            // userId: 1
          };

          addGraph(submitData).then(response => {
            this.$modal.msgSuccess("保存成功，请去【我的图库】查看");
            this.saveGraphOpen = false;
          });
        }
      });
    },

    publishCase() {
      if (this.graph.getNodes().length === 0) return this.$message.warning("画布为空，无法发布");
      this.caseForm = { caseName: undefined, caseType: undefined, remark: undefined };
      this.publishCaseOpen = true;
    },
    submitPublishCase() {
      this.$refs["caseForm"].validate(valid => {
        if (valid) {
          const graphJsonData = JSON.stringify(this.graph.save());
          const submitData = {
            ...this.caseForm,
            graphData: graphJsonData,
            nodeCount: this.graphStats.nodeCount,
            edgeCount: this.graphStats.edgeCount
          };

          addTeaching(submitData).then(response => {
            this.$modal.msgSuccess("发布教学案例成功！");
            this.publishCaseOpen = false;
          });
        }
      });
    },
    // --- 重点：算法仿真动画框架 ---
    handleAlgorithmAction() {
      // 如果还没开始，就初始化算法；如果已经开始了，就执行下一步
      if (!this.isSimulating) {
        this.startSimulation();
      } else {
        this.stepForward();
      }
    },

    // 2. 初始化算法并预计算出轨迹
    startSimulation() {
      // 安全校验
      if (!this.currentNode || this.currentNode.label === '边') {
        return this.$message.warning('请先在画布上点击选中一个【起始节点】！');
      }

      this.resetAlgorithm(); // 清空历史颜色
      this.algoSteps = [];   // 清空步骤池
      this.currentStepIndex = 0;

      const startNodeId = this.currentNode.id;
      const startNodeItem = this.graph.findById(startNodeId);

      // ==============================================================
      // 算法 1：BFS (广度优先搜索) - 像水波一样层层扩散
      // ==============================================================
      if (this.selectedAlgorithm === 'bfs') {
        const queue = [startNodeItem];
        const visitedNodes = new Set([startNodeId]);
        const visitedEdges = new Set();

        while (queue.length > 0) {
          const currNode = queue.shift();
          this.algoSteps.push({ type: 'node', item: currNode });
          const outEdges = currNode.getOutEdges();
          for (let edge of outEdges) {
            const edgeId = edge.getID();
            if (!visitedEdges.has(edgeId)) {
              visitedEdges.add(edgeId);
              this.algoSteps.push({ type: 'edge', item: edge });
              const neighbor = edge.getTarget();
              if (!visitedNodes.has(neighbor.getID())) {
                visitedNodes.add(neighbor.getID());
                queue.push(neighbor);
              }
            }
          }
        }
      }
        // ==============================================================
        // 算法 2：DFS (深度优先搜索) - 沿一条路走到黑，撞墙再回头
      // ==============================================================
      else if (this.selectedAlgorithm === 'dfs') {
        const visitedNodes = new Set();
        const visitedEdges = new Set();

        // 内部定义一个递归函数来实现 DFS
        const dfsTraverse = (node) => {
          visitedNodes.add(node.getID());
          this.algoSteps.push({ type: 'node', item: node });

          const outEdges = node.getOutEdges();
          for (let edge of outEdges) {
            const neighbor = edge.getTarget();
            // 如果这条边没走过，且对面的节点也没去过，就深入进去
            if (!visitedNodes.has(neighbor.getID())) {
              visitedEdges.add(edge.getID());
              this.algoSteps.push({ type: 'edge', item: edge });
              dfsTraverse(neighbor); // 递归深入
            }
          }
        };

        dfsTraverse(startNodeItem);
      }
        // ==============================================================
        // 算法 3：Dijkstra 最短路径 - 结合“连线权重”的核心亮点
      // ==============================================================
      else if (this.selectedAlgorithm === 'dijkstra') {
        const dist = {};       // 记录起点到各个节点的最短距离
        const visited = new Set(); // 记录已经确定最短路径的节点
        const parentEdge = {}; // 记录是通过哪条边来到这个节点的（用于画路径）

        // 初始化：所有节点距离设为无穷大，起点设为 0
        this.graph.getNodes().forEach(n => dist[n.getID()] = Infinity);
        dist[startNodeId] = 0;

        // 经典的 Dijkstra 循环
        while (true) {
          let u = null;
          let minDist = Infinity;

          // 1. 在未访问的节点中，找一个距离起点最近的节点 u
          this.graph.getNodes().forEach(n => {
            const id = n.getID();
            if (!visited.has(id) && dist[id] < minDist) {
              minDist = dist[id];
              u = n;
            }
          });

          // 如果找不到，或者剩下的节点都不可达，算法结束
          if (!u) break;

          // 2. 将找到的最优节点 u 标记为已访问
          visited.add(u.getID());

          // 记录动画步骤：点亮让我们来到节点 u 的那条边 (如果是起点则没有 parentEdge)
          if (parentEdge[u.getID()]) {
            this.algoSteps.push({ type: 'edge', item: parentEdge[u.getID()] });
          }
          // 记录动画步骤：点亮节点 u
          this.algoSteps.push({ type: 'node', item: u });

          // 3. 核心松弛操作：遍历节点 u 指出去的所有边，看看能不能让邻居离起点更近
          u.getOutEdges().forEach(edge => {
            const v = edge.getTarget();
            if (!visited.has(v.getID())) {
              // 划重点：这里直接读取你刚才做的边权重 (label)，如果没有就默认是 1
              const weight = parseFloat(edge.getModel().label) || 1;

              if (dist[u.getID()] + weight < dist[v.getID()]) {
                dist[v.getID()] = dist[u.getID()] + weight; // 更新最短距离
                parentEdge[v.getID()] = edge;               // 记住这是更优的路
              }
            }
          });
        }
      }

      // 解析完成后，切换系统状态
      this.isSimulating = true;
      this.$message.success(`${this.selectedAlgorithm.toUpperCase()} 路径解析完成！请点击【下一步】观察过程。`);

      // 自动先亮起第一个节点（起点）
      this.stepForward();
    },

    // 3. 核心演示：走一步，亮一个
    stepForward() {
      if (this.currentStepIndex >= this.algoSteps.length) {
        this.$message.success('算法演示完毕！已遍历所有可达节点。');
        this.isSimulating = false; // 变回“开始仿真”按钮
        return;
      }

      // 从队列里拿出当前这一步应该变色的元素（可能是节点，也可能是边）
      const step = this.algoSteps[this.currentStepIndex];

      // 调用 G6 API 让它变成橙色 (active 状态是在 initGraph 里配好的)
      this.graph.setItemState(step.item, 'active', true);

      // 指针后移
      this.currentStepIndex++;
    },

    // 4. 重置状态
    resetAlgorithm() {
      this.isSimulating = false;
      this.algoSteps = [];
      this.currentStepIndex = 0;
      // 抹掉所有的橙色
      this.graph.getNodes().forEach(node => this.graph.clearItemStates(node, ['active']));
      this.graph.getEdges().forEach(edge => this.graph.clearItemStates(edge, ['active']));
    }
  }
};
</script>

<style scoped>
/* 保持上一版的样式不变 */
.workbench-container { display: flex; flex-direction: column; height: calc(100vh - 84px); padding: 10px; background-color: #f0f2f5; }
.toolbar { background: #fff; padding: 10px 15px; border-radius: 4px; margin-bottom: 10px; box-shadow: 0 1px 4px rgba(0,21,41,.08); }
.main-content { display: flex; flex: 1; overflow: hidden; }
.canvas-area { flex: 1; background: #fff; border-radius: 4px; box-shadow: 0 1px 4px rgba(0,21,41,.08); margin-right: 10px; position: relative; background-image: linear-gradient(#f0f0f0 1px, transparent 0), linear-gradient(90deg, #f0f0f0 1px, transparent 0); background-size: 20px 20px; }
.side-panel { width: 300px; display: flex; flex-direction: column; }
.panel-card { border-radius: 4px; }
.info-item { margin-bottom: 12px; font-size: 14px; color: #606266; }
.algo-controls { display: flex; justify-content: space-between; }
</style>
