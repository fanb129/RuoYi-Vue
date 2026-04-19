<template>
  <div class="workbench-container">
    <div class="toolbar">
      <el-button-group>
        <el-button type="primary" icon="el-icon-plus" size="small" @click="addNode">添加节点</el-button>
        <el-button type="success" icon="el-icon-magic-stick" size="small" @click="openGenerateModel" plain>快捷生成模型</el-button>

        <el-dialog title="快捷生成图模型" :visible.sync="generateModelOpen" width="450px" append-to-body>
          <el-form ref="modelForm" :model="modelForm" label-width="110px">
            <el-form-item label="模型类型">
              <el-select v-model="modelForm.type" placeholder="请选择模型" style="width: 100%">
                <el-option label="有向完全图" value="complete"></el-option>
                <el-option label="星型图" value="star"></el-option>
                <el-option label="环形图" value="ring"></el-option>
                <el-option label="线性路径图" value="path"></el-option>
                <el-option label="完全二叉树" value="binaryTree"></el-option>
                <el-option label="N 叉树" value="naryTree"></el-option>
                <el-option label="二维网格图" value="grid"></el-option>
              </el-select>
            </el-form-item>

            <template v-if="modelForm.type === 'binaryTree'">
              <el-form-item label="层数 (Layers)">
                <el-input-number v-model="modelForm.layers" :min="1" :max="6" size="small"></el-input-number>
                <div style="font-size: 12px; color: #909399;">{{ Math.pow(2, modelForm.layers) - 1 }} 个节点</div>
              </el-form-item>
            </template>

            <template v-else-if="modelForm.type !== 'grid'">
              <el-form-item label="节点总数 (N)">
                <el-input-number v-model="modelForm.nodeCount" :min="3" :max="60" size="small"></el-input-number>
              </el-form-item>
            </template>

            <template v-if="modelForm.type === 'naryTree'">
              <el-form-item label="分支数 (N)">
                <el-input-number v-model="modelForm.branchFactor" :min="3" :max="5" size="small"></el-input-number>
                <span style="font-size: 12px; color: #909399; margin-left: 10px;">每个节点最多几个子节点</span>
              </el-form-item>
            </template>

            <template v-if="modelForm.type === 'grid'">
              <el-form-item label="行数 (Rows)">
                <el-input-number v-model="modelForm.rows" :min="2" :max="10" size="small"></el-input-number>
              </el-form-item>
              <el-form-item label="列数 (Cols)">
                <el-input-number v-model="modelForm.cols" :min="2" :max="10" size="small"></el-input-number>
              </el-form-item>
            </template>

          </el-form>
          <div slot="footer" class="dialog-footer">
            <el-button type="primary" @click="submitGenerateModel">立即生成</el-button>
            <el-button @click="generateModelOpen = false">取 消</el-button>
          </div>
        </el-dialog>
        <el-button
          :type="isEdgeMode ? 'success' : 'primary'"
          icon="el-icon-share"
          size="small"
          @click="toggleEdgeMode">
          {{ isEdgeMode ? '退出连线模式' : '进入连线模式' }}
        </el-button>
        <el-button type="danger" icon="el-icon-delete" size="small" @click="deleteSelected">删除选中</el-button>
        <el-dropdown @command="alignNodes" style="margin: 0 10px;">
          <el-button type="info" size="small">
            对齐方式 <i class="el-icon-arrow-down el-icon--right"></i>
          </el-button>
          <el-dropdown-menu slot="dropdown">
            <el-dropdown-item command="top">顶部对齐</el-dropdown-item>
            <el-dropdown-item command="bottom">底部对齐</el-dropdown-item>
            <el-dropdown-item command="left">左侧对齐</el-dropdown-item>
            <el-dropdown-item command="right">右侧对齐</el-dropdown-item>
            <el-dropdown-item command="center">水平居中对齐</el-dropdown-item>
          </el-dropdown-menu>
        </el-dropdown>
        <span style="font-size: 13px; color: #909399; margin-right: 15px;">
          <i class="el-icon-info"></i> 提示：按住 <b style="color: #409EFF;">Shift</b> 键框选多个节点即可对齐
        </span>
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
              <el-input v-model="currentNode.label" size="small" style="width: 140px; margin-left: 10px;" @change="updateNode" @keyup.enter.native="updateNode"></el-input>
            </div>
            <div class="info-item" style="display: flex; align-items: center;">
              节点形状：
              <el-select v-model="currentNode.shape" size="small" style="width: 140px; margin-left: 10px;" @change="updateNode">
                <el-option label="圆形 (Circle)" value="circle"></el-option>
                <el-option label="矩形 (Rect)" value="rect"></el-option>
                <el-option label="三角形 (Triangle)" value="triangle"></el-option>
                <el-option label="菱形 (Diamond)" value="diamond"></el-option>
              </el-select>
            </div>
            <div class="info-item" style="display: flex; align-items: center;">
              节点颜色：
              <el-color-picker v-model="currentNode.color" size="small" style="margin-left: 10px;" @change="updateNode"></el-color-picker>
            </div>
            <div class="info-item">节点度数：<b>{{ currentNode.degree }}</b></div>
          </template>

          <template v-else-if="currentNode && currentNode.type === 'edge'">
            <div class="info-item" style="display: flex; align-items: center;">
              连线权重：
              <el-input v-model.number="currentNode.weight" size="small" style="width: 140px; margin-left: 10px;" placeholder="请输入数字权重" @change="updateEdge" @keyup.enter.native="updateEdge"></el-input>
            </div>
            <div class="info-item" style="display: flex; align-items: center;">
              连线颜色：
              <el-color-picker v-model="currentNode.color" size="small" style="margin-left: 10px;" @change="updateEdge"></el-color-picker>
            </div>
          </template>

          <template v-else>
            <div class="info-item">当前选中：<b>未选中任何元素</b></div>
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
      generateModelOpen: false,
      modelForm: {
        type: 'complete',
        nodeCount: 6,
        branchFactor: 3, // N叉树专属
        rows: 4,         // 网格图专属
        cols: 5          // 网格图专属
      },
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
      // ==================== 【实例化对齐线插件】 ====================
      const snapLine = new G6.SnapLine({
        line: { stroke: '#F56C6C', lineWidth: 1, lineDash: [5, 5] }, // 红色虚线
        itemAlignType: 'center' // 按照节点中心对齐
      });
      const container = document.getElementById('graph-container');
      this.graph = new G6.Graph({
        container: container,
        width: container.scrollWidth,
        height: container.scrollHeight || 600,
        plugins: [snapLine],
        modes: {
          // 【核心修改】：加入 'brush-select'，允许按住 Shift 键拖拽鼠标进行框选多选
          default: ['drag-canvas', 'zoom-canvas', 'drag-node', {
            type: 'brush-select',
            trigger: 'shift', // 触发快捷键为 Shift
            includeEdges: false // 框选时只选节点，不选线，方便对齐
          }],
          addEdge: ['create-edge', 'drag-canvas', 'zoom-canvas']
        },
        defaultNode: {
          type: 'circle',
          size: 40,
          // 初始默认颜色为浅蓝色 #C6E5FF
          style: { fill: '#C6E5FF', stroke: null, cursor: 'pointer' },
          labelCfg: { style: { fill: '#333', fontSize: 14, fontWeight: 'bold' } },
        },

        defaultEdge: {
          type: 'line',
          label: '1',
          style: { stroke: '#A3B1BF', lineWidth: 2, endArrow: true, cursor: 'pointer', lineAppendWidth: 15 },
          labelCfg: { autoRotate: true, refY: -10, style: { fill: '#333', fontSize: 13, fontWeight: 'bold' } },
        },
        nodeStateStyles: {
          selected: {
            fill: '#FFFFFF', // 掏空效果（纯白底，防止背景线条穿透）
            stroke: '#C6E5FF', // 边框使用它原本的填充色
            lineWidth: 4,
            shadowColor: '#C6E5FF',
            shadowBlur: 12
          },
          active: {
            fill: '#FFFFFF',
            stroke: '#C6E5FF',
            lineWidth: 5,
            shadowColor: '#C6E5FF',
            shadowBlur: 15
          }
        },
        edgeStateStyles: {
          // 默认线条的高亮，我们使用偏红/橙色作为未编辑时的警示色
          selected: { stroke: '#A3B1BF', lineWidth: 3, shadowColor: '#A3B1BF', shadowBlur: 10 },
          active: { stroke: '#A3B1BF', lineWidth: 4, shadowColor: '#A3B1BF', shadowBlur: 10 }
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

      // 1. 监听节点点击 (在 initGraph 方法内)
      this.graph.on('node:click', (e) => {
        if (this.isEdgeMode) return;
        this.clearAllSelected();
        this.graph.setItemState(e.item, 'selected', true);

        const item = e.item;
        const model = item.getModel(); // 获取底层模型

        this.currentNode = {
          id: model.id,
          label: model.label,
          type: 'node',
          degree: `${item.getEdges().length} (入:${item.getInEdges().length} 出:${item.getOutEdges().length})`,
          // 【新增】：抓取节点的形状和颜色反显到右侧面板
          shape: model.type || 'circle',
          color: (model.style && model.style.fill) || '#C6E5FF'
        };
      });

      // 2. 监听边点击 (在 initGraph 方法内)
      this.graph.on('edge:click', (e) => {
        if (this.isEdgeMode) return;
        this.clearAllSelected();
        this.graph.setItemState(e.item, 'selected', true);

        const item = e.item;
        const model = item.getModel();

        this.currentNode = {
          id: model.id,
          weight: model.label || '1',
          type: 'edge',
          // 【新增】：抓取连线的颜色反显
          color: (model.style && model.style.stroke) || '#A3B1BF'
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

    updateNode() {
      if (!this.currentNode || this.currentNode.type !== 'node') return;
      const item = this.graph.findById(this.currentNode.id);
      if (item) {
        // 定义一个标准的尺寸映射表，专门解决三角形显得太大的问题
        const sizeMap = {
          circle: 40,
          rect: [40, 40],
          diamond: [45, 45],
          triangle: [25, 25] // 故意把三角形稍微缩小一点，视觉上就统一了
        };

        const currentColor = this.currentNode.color;
        // 1. 先取消选中状态，清空旧缓存
        this.graph.setItemState(item, 'selected', false);

        // 2. 更新属性
        this.graph.updateItem(item, {
          label: this.currentNode.label,
          type: this.currentNode.shape,
          size: sizeMap[this.currentNode.shape] || 40,
          style: {
            fill: currentColor,
            stroke: null
          },
          // 【核心统一】：编辑后的节点，选中时也是掏空填充，同色系边框发光
          stateStyles: {
            selected: {
              fill: '#FFFFFF', // 掏空效果
              stroke: currentColor, // 边框用当前颜色
              lineWidth: 4,
              shadowColor: currentColor,
              shadowBlur: 12
            },
            active: {
              fill: '#FFFFFF',
              stroke: currentColor,
              lineWidth: 5,
              shadowColor: currentColor,
              shadowBlur: 15
            }
          }
        });

        // 3. 恢复选中状态
        this.graph.setItemState(item, 'selected', true);
        this.$message.success('节点属性修改成功！');
      }
    },

    alignNodes(direction) {
      // 1. 获取所有当前被选中的节点
      const selectedNodes = this.graph.findAllByState('node', 'selected');
      if (selectedNodes.length < 2) {
        return this.$message.warning('请按住 Shift 键拖拽鼠标，框选至少 2 个节点进行对齐');
      }

      // 2. 提取所有选中节点的坐标
      const xs = selectedNodes.map(node => node.getModel().x);
      const ys = selectedNodes.map(node => node.getModel().y);

      // 3. 根据对齐命令计算目标坐标
      let targetX, targetY;
      switch (direction) {
        case 'top':
          targetY = Math.min(...ys); // 找到最上面那个节点的 Y 坐标
          selectedNodes.forEach(node => this.graph.updateItem(node, { y: targetY }));
          break;
        case 'bottom':
          targetY = Math.max(...ys); // 找到最下面那个节点的 Y 坐标
          selectedNodes.forEach(node => this.graph.updateItem(node, { y: targetY }));
          break;
        case 'left':
          targetX = Math.min(...xs); // 找到最左边那个节点的 X 坐标
          selectedNodes.forEach(node => this.graph.updateItem(node, { x: targetX }));
          break;
        case 'right':
          targetX = Math.max(...xs); // 找到最右边那个节点的 X 坐标
          selectedNodes.forEach(node => this.graph.updateItem(node, { x: targetX }));
          break;
        case 'center':
          // 水平居中：取所有 X 坐标的平均值
          targetX = xs.reduce((a, b) => a + b, 0) / xs.length;
          selectedNodes.forEach(node => this.graph.updateItem(node, { x: targetX }));
          break;
      }
      this.$message.success('对齐成功！');
    },

    updateEdge() {
      if (!this.currentNode || this.currentNode.type !== 'edge') return;
      if (this.currentNode.weight === '' || isNaN(this.currentNode.weight)) {
        return this.$message.warning('连线权重必须是数字');
      }

      const item = this.graph.findById(this.currentNode.id);
      if (item) {
        const currentColor = this.currentNode.color;

        // 1. 先取消选中状态
        this.graph.setItemState(item, 'selected', false);

        // 2. 更新属性
        this.graph.updateItem(item, {
          type: 'line',
          label: String(this.currentNode.weight),
          style: {
            stroke: currentColor,
            lineWidth: 2,
            endArrow: true,
            cursor: 'pointer',
            lineAppendWidth: 15,
          },
          labelCfg: { autoRotate: true, refY: -10, style: { fill: '#333', fontSize: 13, fontWeight: 'bold' } },
          // 【核心统一】：编辑后的线条，纯粹的高亮，不改变任何其他形态
          stateStyles: {
            selected: {
              stroke: currentColor,
              lineWidth: 3,
              shadowColor: currentColor,
              shadowBlur: 10
            },
            active: {
              stroke: currentColor,
              lineWidth: 4,
              shadowColor: currentColor,
              shadowBlur: 10
            }
          }
        });

        // 3. 恢复选中状态
        this.graph.setItemState(item, 'selected', true);
        this.$message.success('连线属性修改成功！');
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
    },
    openGenerateModel() {
      if (this.graph.getNodes().length > 0) {
        this.$confirm('快捷生成将会清空当前画布的数据，是否继续？', '提示', { type: 'warning' })
          .then(() => { this.generateModelOpen = true; })
          .catch(() => {});
      } else {
        this.generateModelOpen = true;
      }
    },

    submitGenerateModel() {
      const { type, nodeCount, layers, branchFactor, rows, cols } = this.modelForm;
      const data = { nodes: [], edges: [] };
      const centerX = 400;
      const centerY = 300;

      // 1. 确定最终节点数量
      let finalNodeCount = nodeCount;
      if (type === 'binaryTree') {
        finalNodeCount = Math.pow(2, layers) - 1; // 满二叉树节点数公式
      } else if (type === 'grid') {
        finalNodeCount = rows * cols;
      }

      // 2. 生成节点坐标
      if (['complete', 'star', 'ring'].includes(type)) {
        const radius = 100 + (finalNodeCount * 5);
        for (let i = 0; i < finalNodeCount; i++) {
          const angle = (2 * Math.PI / finalNodeCount) * i;
          data.nodes.push({
            id: `node_gen_${i}`,
            label: `V${i + 1}`,
            x: (type === 'star' && i === 0) ? centerX : centerX + radius * Math.cos(angle),
            y: (type === 'star' && i === 0) ? centerY : centerY + radius * Math.sin(angle),
          });
        }
      }
      else if (type === 'path') {
        const spacing = 80;
        const startX = centerX - ((finalNodeCount - 1) * spacing) / 2;
        for (let i = 0; i < finalNodeCount; i++) {
          data.nodes.push({ id: `node_gen_${i}`, label: `V${i + 1}`, x: startX + i * spacing, y: centerY });
        }
      }
      else if (['binaryTree', 'naryTree'].includes(type)) {
        const N = type === 'binaryTree' ? 2 : branchFactor;
        const layerInfo = [];
        const depthCount = {};

        for (let i = 0; i < finalNodeCount; i++) {
          const depth = i === 0 ? 0 : layerInfo[Math.floor((i - 1) / N)].depth + 1;
          if (depthCount[depth] === undefined) depthCount[depth] = 0;
          layerInfo.push({ depth: depth, indexInLayer: depthCount[depth] });
          depthCount[depth]++;
        }

        const maxDepth = Math.max(...Object.keys(depthCount).map(Number));
        const treeWidth = Math.min(600, finalNodeCount * 40);
        const startY = centerY - (maxDepth * 80) / 2;

        for (let i = 0; i < finalNodeCount; i++) {
          const info = layerInfo[i];
          const spacingX = treeWidth / (depthCount[info.depth] + 1);
          data.nodes.push({
            id: `node_gen_${i}`, label: `V${i + 1}`,
            x: (centerX - treeWidth / 2) + spacingX * (info.indexInLayer + 1),
            y: startY + info.depth * 80
          });
        }
      }
      else if (type === 'grid') {
        const spacing = 80;
        const startX = centerX - ((cols - 1) * spacing) / 2;
        const startY = centerY - ((rows - 1) * spacing) / 2;
        for (let r = 0; r < rows; r++) {
          for (let c = 0; c < cols; c++) {
            const i = r * cols + c;
            data.nodes.push({ id: `node_gen_${i}`, label: `V${i + 1}`, x: startX + c * spacing, y: startY + r * spacing });
          }
        }
      }

      // 3. 生成连线关系
      if (type === 'complete') {
        // 【修改点】：有向完全图，每个顶点对之间生成两条相反方向的边
        for (let i = 0; i < finalNodeCount; i++) {
          for (let j = 0; j < finalNodeCount; j++) {
            if (i !== j) {
              data.edges.push({ source: `node_gen_${i}`, target: `node_gen_${j}`, label: '1' });
            }
          }
        }
        G6.Util.processParallelEdges(data.edges, 30, 'quadratic', 'loop');
      }
      else if (type === 'star') {
        for (let i = 1; i < finalNodeCount; i++) {
          data.edges.push({ source: `node_gen_0`, target: `node_gen_${i}`, label: '1' });
        }
      }
      else if (type === 'ring') {
        for (let i = 0; i < finalNodeCount; i++) {
          data.edges.push({ source: `node_gen_${i}`, target: `node_gen_${(i + 1) % finalNodeCount}`, label: '1' });
        }
      }
      else if (type === 'path') {
        for (let i = 0; i < finalNodeCount - 1; i++) {
          data.edges.push({ source: `node_gen_${i}`, target: `node_gen_${i + 1}`, label: '1' });
        }
      }
      else if (['binaryTree', 'naryTree'].includes(type)) {
        const N = type === 'binaryTree' ? 2 : branchFactor;
        for (let i = 1; i < finalNodeCount; i++) {
          const parentIndex = Math.floor((i - 1) / N);
          data.edges.push({ source: `node_gen_${parentIndex}`, target: `node_gen_${i}`, label: '1' });
        }
      }
      else if (type === 'grid') {
        for (let r = 0; r < rows; r++) {
          for (let c = 0; c < cols; c++) {
            const i = r * cols + c;
            if (c < cols - 1) data.edges.push({ source: `node_gen_${i}`, target: `node_gen_${i + 1}`, label: '1' });
            if (r < rows - 1) data.edges.push({ source: `node_gen_${i}`, target: `node_gen_${i + cols}`, label: '1' });
          }
        }
      }

      // 4. 执行渲染
      this.graph.clear();
      this.graph.read(data);
      this.updateGraphStats();
      this.nodeCounter = finalNodeCount;
      this.generateModelOpen = false;
      this.$message.success(`模型生成成功：共 ${finalNodeCount} 个节点，${data.edges.length} 条边`);
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
