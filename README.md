# 项目创建命令

```
# 创建项目
# --database=postgresql  设置数据库
# --skip-action-mailbox 跳过收件箱
# --skip-action-text 跳过富文本
# --skip-sprockets 
# --skip-javascript 前后分离的用不到
# --skip-turbolinks 
# --skip-system-test 跳过系统测试
# --skip-test 跳过测试
# --api 很轻量的模式
# --skip-webpack-install 跳过 webpack 安装

rails new rails-demo-1 --database=postgresql --skip-action-mailbox --skip-action-text --skip-sprockets --skip-javascript --skip-turbolinks --skip-system-test
--skip-test --api
--skip-webpack-install

# 打开这个项目
# 在 .gitignore里 添加 .idea / .vscode 忽略提交
```