<template>
  <div class="app-container">
    <el-form :model="queryParams" ref="queryForm" size="small" :inline="true" v-show="showSearch" label-width="68px">
      <el-form-item label="案例名称" prop="caseName">
        <el-input
          v-model="queryParams.caseName"
          placeholder="请输入教学案例名称"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="案例分类" prop="caseType">
        <el-select v-model="queryParams.caseType" placeholder="请选择案例分类" clearable>
          <el-option
            v-for="dict in dict.type.case_type"
            :key="dict.value"
            :label="dict.label"
            :value="dict.value"
          />
        </el-select>
      </el-form-item>
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
          v-hasPermi="['teaching:teaching:add']"
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
<!--          v-hasPermi="['teaching:teaching:edit']"-->
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
          v-hasPermi="['teaching:teaching:remove']"
        >删除</el-button>
      </el-col>
<!--      <el-col :span="1.5">-->
<!--        <el-button-->
<!--          type="warning"-->
<!--          plain-->
<!--          icon="el-icon-download"-->
<!--          size="mini"-->
<!--          @click="handleExport"-->
<!--          v-hasPermi="['teaching:teaching:export']"-->
<!--        >导出</el-button>-->
<!--      </el-col>-->
      <right-toolbar :showSearch.sync="showSearch" @queryTable="getList"></right-toolbar>
    </el-row>

    <el-table v-loading="loading" :data="teachingList" @selection-change="handleSelectionChange">
      <el-table-column type="selection" width="55" align="center" />
<!--      <el-table-column label="案例ID主键" align="center" prop="caseId" />-->
      <el-table-column label="序号" align="center" type="index" />
      <el-table-column label="案例名称" align="center" prop="caseName" />
      <el-table-column label="案例分类" align="center" prop="caseType">
        <template slot-scope="scope">
          <dict-tag :options="dict.type.case_type" :value="scope.row.caseType"/>
        </template>
      </el-table-column>
<!--      <el-table-column label="图JSON结构数据" align="center" prop="graphData" />-->
      <el-table-column label="节点数量" align="center" prop="nodeCount" />
      <el-table-column label="边数量" align="center" prop="edgeCount" />
      <el-table-column label="案例教学说明" align="center" prop="remark" />
      <el-table-column label="操作" align="center" class-name="small-padding fixed-width">
        <template slot-scope="scope">
          <el-button
            size="mini"
            type="text"
            icon="el-icon-edit"
            @click="handleLook(scope.row)"
            v-hasPermi="['teaching:teaching:edit']"
          >查看</el-button>
          <el-button
            size="mini"
            type="text"
            icon="el-icon-edit"
            @click="handleUpdate(scope.row)"
            v-hasPermi="['teaching:teaching:edit']"
          >编辑</el-button>
          <el-button
            size="mini"
            type="text"
            icon="el-icon-delete"
            @click="handleDelete(scope.row)"
            v-hasPermi="['teaching:teaching:remove']"
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

    <!-- 添加或修改教学案例库对话框 -->
    <el-dialog :title="title" :visible.sync="open" width="500px" append-to-body>
      <el-form ref="form" :model="form" :rules="rules" label-width="80px">
        <el-form-item label="案例名称" prop="caseName">
          <el-input v-model="form.caseName" placeholder="请输入教学案例名称" />
        </el-form-item>
        <el-form-item label="案例分类" prop="caseType">
          <el-select v-model="form.caseType" placeholder="请选择案例分类">
            <el-option
              v-for="dict in dict.type.case_type"
              :key="dict.value"
              :label="dict.label"
              :value="dict.value"
            ></el-option>
          </el-select>
        </el-form-item>
<!--        <el-form-item label="图JSON结构数据" prop="graphData">-->
<!--          <el-input v-model="form.graphData" type="textarea" placeholder="请输入内容" />-->
<!--        </el-form-item>-->
<!--        <el-form-item label="节点数量" prop="nodeCount">-->
<!--          <el-input v-model="form.nodeCount" placeholder="请输入节点数量" />-->
<!--        </el-form-item>-->
<!--        <el-form-item label="边数量" prop="edgeCount">-->
<!--          <el-input v-model="form.edgeCount" placeholder="请输入边数量" />-->
<!--        </el-form-item>-->
        <el-form-item label="案例教学说明" prop="remark">
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
import { listTeaching, getTeaching, delTeaching, addTeaching, updateTeaching } from "@/api/teaching/teaching"

export default {
  name: "Teaching",
  dicts: ['case_type'],
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
      // 教学案例库表格数据
      teachingList: [],
      // 弹出层标题
      title: "",
      // 是否显示弹出层
      open: false,
      // 查询参数
      queryParams: {
        pageNum: 1,
        pageSize: 10,
        caseName: null,
        caseType: null,
      },
      // 表单参数
      form: {},
      // 表单校验
      rules: {
        caseName: [
          { required: true, message: "教学案例名称不能为空", trigger: "blur" }
        ],
        graphData: [
          { required: true, message: "图JSON结构数据不能为空", trigger: "blur" }
        ],
      }
    }
  },
  created() {
    this.getList()
  },
  methods: {
    /** 查询教学案例库列表 */
    getList() {
      this.loading = true
      listTeaching(this.queryParams).then(response => {
        this.teachingList = response.rows
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
        caseId: null,
        caseName: null,
        caseType: null,
        graphData: null,
        nodeCount: null,
        edgeCount: null,
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
      this.ids = selection.map(item => item.caseId)
      this.single = selection.length!==1
      this.multiple = !selection.length
    },
    /** 新增按钮操作 */
    handleAdd() {
      this.reset()
      this.open = true
      this.title = "添加教学案例库"
    },
    handleLook(row) {
      const caseId = row.caseId || this.ids[0];
      this.$router.push({
        path: '/index', // 这里换成你工作台真实的路由 path
        query: { caseId: caseId }
      });
    },
    /** 修改按钮操作 */
    handleUpdate(row) {
      this.reset()
      const caseId = row.caseId || this.ids
      getTeaching(caseId).then(response => {
        this.form = response.data
        this.open = true
        this.title = "修改教学案例库"
      })
    },
    /** 提交按钮 */
    submitForm() {
      this.$refs["form"].validate(valid => {
        if (valid) {
          if (this.form.caseId != null) {
            updateTeaching(this.form).then(response => {
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
            addTeaching(this.form).then(response => {
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
      const caseIds = row.caseId || this.ids
      this.$modal.confirm('是否确认删除教学案例库编号为"' + caseIds + '"的数据项？').then(function() {
        return delTeaching(caseIds)
      }).then(() => {
        this.getList()
        this.$modal.msgSuccess("删除成功")
      }).catch(() => {})
    },
    /** 导出按钮操作 */
    handleExport() {
      this.download('teaching/teaching/export', {
        ...this.queryParams
      }, `teaching_${new Date().getTime()}.xlsx`)
    }
  }
}
</script>
