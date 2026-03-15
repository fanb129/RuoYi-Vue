<template>
  <div class="app-container">
    <el-form :model="queryParams" ref="queryForm" size="small" :inline="true" v-show="showSearch" label-width="68px">
      <el-form-item label="图库名称" prop="graphName">
        <el-input
          v-model="queryParams.graphName"
          placeholder="请输入图库名称"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
<!--      <el-form-item label="所属用户ID(关联sys_user表)" prop="userId">-->
<!--        <el-input-->
<!--          v-model="queryParams.userId"-->
<!--          placeholder="请输入所属用户ID(关联sys_user表)"-->
<!--          clearable-->
<!--          @keyup.enter.native="handleQuery"-->
<!--        />-->
<!--      </el-form-item>-->
      <el-form-item>
        <el-button type="primary" icon="el-icon-search" size="mini" @click="handleQuery">搜索</el-button>
        <el-button icon="el-icon-refresh" size="mini" @click="resetQuery">重置</el-button>
      </el-form-item>
    </el-form>

    <el-row :gutter="10" class="mb8">
      <el-col :span="1.5">
        <el-button
          type="primary"
          plain
          icon="el-icon-plus"
          size="mini"
          @click="handleAdd"
          v-hasPermi="['graph:graph:add']"
        >新增</el-button>
      </el-col>
<!--      <el-col :span="1.5">-->
<!--        <el-button-->
<!--          type="success"-->
<!--          plain-->
<!--          icon="el-icon-edit"-->
<!--          size="mini"-->
<!--          :disabled="single"-->
<!--          @click="handleUpdate"-->
<!--          v-hasPermi="['graph:graph:edit']"-->
<!--        >修改</el-button>-->
<!--      </el-col>-->
      <el-col :span="1.5">
        <el-button
          type="danger"
          plain
          icon="el-icon-delete"
          size="mini"
          :disabled="multiple"
          @click="handleDelete"
          v-hasPermi="['graph:graph:remove']"
        >删除</el-button>
      </el-col>
<!--      <el-col :span="1.5">-->
<!--        <el-button-->
<!--          type="warning"-->
<!--          plain-->
<!--          icon="el-icon-download"-->
<!--          size="mini"-->
<!--          @click="handleExport"-->
<!--          v-hasPermi="['graph:graph:export']"-->
<!--        >导出</el-button>-->
<!--      </el-col>-->
      <right-toolbar :showSearch.sync="showSearch" @queryTable="getList"></right-toolbar>
    </el-row>

    <el-table v-loading="loading" :data="graphList" @selection-change="handleSelectionChange">
      <el-table-column type="selection" width="55" align="center" />
<!--      <el-table-column label="图ID主键" align="center" prop="graphId" />-->
      <el-table-column label="序号" align="center" type="index" />
      <el-table-column label="图库名称" align="center" prop="graphName" />
<!--      <el-table-column label="图JSON结构数据(存G6导出的节点和边)" align="center" prop="graphData" />-->
      <el-table-column label="节点数量" align="center" prop="nodeCount" />
      <el-table-column label="边数量" align="center" prop="edgeCount" />
<!--      <el-table-column label="所属用户ID(关联sys_user表)" align="center" prop="userId" />-->
      <el-table-column label="备注" align="center" prop="remark" />
      <el-table-column label="操作" align="center" class-name="small-padding fixed-width">
        <template slot-scope="scope">
          <el-button
            size="mini"
            type="text"
            icon="el-icon-edit"
            @click="handleLook(scope.row)"
            v-hasPermi="['graph:graph:edit']"
          >查看</el-button>
          <el-button
            size="mini"
            type="text"
            icon="el-icon-edit"
            @click="handleUpdate(scope.row)"
            v-hasPermi="['graph:graph:edit']"
          >编辑</el-button>
          <el-button
            size="mini"
            type="text"
            icon="el-icon-delete"
            @click="handleDelete(scope.row)"
            v-hasPermi="['graph:graph:remove']"
          >删除</el-button>
        </template>
      </el-table-column>
    </el-table>

    <pagination
      v-show="total>0"
      :total="total"
      :page.sync="queryParams.pageNum"
      :limit.sync="queryParams.pageSize"
      @pagination="getList"
    />

    <!-- 添加或修改我的图库对话框 -->
    <el-dialog :title="title" :visible.sync="open" width="500px" append-to-body>
      <el-form ref="form" :model="form" :rules="rules" label-width="80px">
        <el-form-item label="图库名称" prop="graphName">
          <el-input v-model="form.graphName" placeholder="请输入图库名称" />
        </el-form-item>
<!--        <el-form-item label="图JSON结构数据(存G6导出的节点和边)" prop="graphData">-->
<!--          <el-input v-model="form.graphData" type="textarea" placeholder="请输入内容" />-->
<!--        </el-form-item>-->
<!--        <el-form-item label="节点数量(方便列表展示)" prop="nodeCount">-->
<!--          <el-input v-model="form.nodeCount" placeholder="请输入节点数量(方便列表展示)" />-->
<!--        </el-form-item>-->
<!--        <el-form-item label="边数量(方便列表展示)" prop="edgeCount">-->
<!--          <el-input v-model="form.edgeCount" placeholder="请输入边数量(方便列表展示)" />-->
<!--        </el-form-item>-->
<!--        <el-form-item label="所属用户ID(关联sys_user表)" prop="userId">-->
<!--          <el-input v-model="form.userId" placeholder="请输入所属用户ID(关联sys_user表)" />-->
<!--        </el-form-item>-->
        <el-form-item label="备注或描述" prop="remark">
          <el-input v-model="form.remark" type="textarea" placeholder="请输入内容" />
        </el-form-item>
      </el-form>
      <div slot="footer" class="dialog-footer">
        <el-button type="primary" @click="submitForm">确 定</el-button>
        <el-button @click="cancel">取 消</el-button>
      </div>
    </el-dialog>
  </div>
</template>

<script>
import { listGraph, getGraph, delGraph, addGraph, updateGraph } from "@/api/graph/graph"

export default {
  name: "Graph",
  data() {
    return {
      // 遮罩层
      loading: true,
      // 选中数组
      ids: [],
      // 非单个禁用
      single: true,
      // 非多个禁用
      multiple: true,
      // 显示搜索条件
      showSearch: true,
      // 总条数
      total: 0,
      // 我的图库表格数据
      graphList: [],
      // 弹出层标题
      title: "",
      // 是否显示弹出层
      open: false,
      // 查询参数
      queryParams: {
        pageNum: 1,
        pageSize: 10,
        graphName: null,
        userId: null,
      },
      // 表单参数
      form: {
        graphData:'{}'
      },
      // 表单校验
      rules: {
        graphName: [
          { required: true, message: "图库名称不能为空", trigger: "blur" }
        ],
        // userId: [
        //   { required: true, message: "所属用户ID不能为空", trigger: "blur" }
        // ],
      }
    }
  },
  created() {
    this.getList()
  },
  methods: {
    /** 查询我的图库列表 */
    getList() {
      this.loading = true
      listGraph(this.queryParams).then(response => {
        this.graphList = response.rows
        this.total = response.total
        this.loading = false
      })
    },
    // 取消按钮
    cancel() {
      this.open = false
      this.reset()
    },
    // 表单重置
    reset() {
      this.form = {
        graphId: null,
        graphName: null,
        graphData: null,
        nodeCount: null,
        edgeCount: null,
        userId: null,
        createBy: null,
        createTime: null,
        updateBy: null,
        updateTime: null,
        remark: null
      }
      this.resetForm("form")
    },
    /** 搜索按钮操作 */
    handleQuery() {
      this.queryParams.pageNum = 1
      this.getList()
    },
    /** 重置按钮操作 */
    resetQuery() {
      this.resetForm("queryForm")
      this.handleQuery()
    },
    // 多选框选中数据
    handleSelectionChange(selection) {
      this.ids = selection.map(item => item.graphId)
      this.single = selection.length!==1
      this.multiple = !selection.length
    },
    /** 新增按钮操作 */
    handleAdd() {
      this.reset()
      this.open = true
      this.title = "添加我的图库"
    },
    handleLook(row) {
      const graphId = row.graphId || this.ids[0];
      // 假设你的工作台路由路径是 /workbench，请根据你实际的路由地址修改！
      this.$router.push({
        path: '/index',
        query: { graphId: graphId }
      });
    },
    /** 修改按钮操作 */
    handleUpdate(row) {
      this.reset()
      const graphId = row.graphId || this.ids
      getGraph(graphId).then(response => {
        this.form = response.data
        this.open = true
        this.title = "修改我的图库"
      })
    },
    /** 提交按钮 */
    submitForm() {
      this.$refs["form"].validate(valid => {
        if (valid) {
          if (this.form.graphId != null) {
            updateGraph(this.form).then(response => {
              this.$modal.msgSuccess("修改成功")
              this.open = false
              this.getList()
            })
          } else {
            // 1. 自动注入 G6 认可的空图结构 JSON 字符串
            this.form.graphData = JSON.stringify({ nodes: [], edges: [] });
            // 2. 节点和边数量初始化为 0
            this.form.nodeCount = 0;
            this.form.edgeCount = 0;
            addGraph(this.form).then(response => {
              this.$modal.msgSuccess("新增成功")
              this.open = false
              this.getList()
            })
          }
        }
      })
    },
    /** 删除按钮操作 */
    handleDelete(row) {
      const graphIds = row.graphId || this.ids
      this.$modal.confirm('是否确认删除我的图库编号为"' + graphIds + '"的数据项？').then(function() {
        return delGraph(graphIds)
      }).then(() => {
        this.getList()
        this.$modal.msgSuccess("删除成功")
      }).catch(() => {})
    },
    /** 导出按钮操作 */
    handleExport() {
      this.download('graph/graph/export', {
        ...this.queryParams
      }, `graph_${new Date().getTime()}.xlsx`)
    }
  }
}
</script>
