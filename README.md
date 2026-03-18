普通用户：我的图库（个人中心）、教学案例库（公共资源）、工作台（可视化编辑图、右侧显示图的各种属性、并可以选择算法执行）

管理员：在上述基础上还包括：用户管理、案列管理（将画好的案列发布到教学案列库）

1. 安装MySQL和Redis 
2. 连接MySQL数据库，运行sql/mysql.sql 脚本 
3. 修改配置文件 
   - src/main/resources/application.yml 第10行
   - src/main/resources/application-druid.yml 第9、10、11行
   - src/main/resources/logback.xml 第4行
4. 启动后端：src/main/java/com/ruoyi/RuoYiApplication.java 
5. 启动前端：进入ruoyi-ui目录，运行npm install 安装依赖，运行 npm run dev 启动前端