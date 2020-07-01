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


### 如何运行项目

> docker 创建数据库容器，解决各种繁琐安装软件问题

```
# 项目根目录运行
docker run -v `pwd`/demo_pg_data:/var/lib/postgresql/data -p 5001:5432 -e POSTGRES_USER=admin -e POSTGRES_PASSWORD=123456 -d postgres:12.2
```

> 修改数据库配置 config/database.yml

```
default: &default
  adapter: postgresql
  encoding: unicode
  pool: <%= ENV.fetch("RAILS_MAX_THREADS") { 5 } %>
  username: admin
  password: 123456
  host: localhost
  port: 5001

development:
  <<: *default
  database: morney_rails_1_development

test:
  <<: *default
  database: morney_rails_1_test

production:
  <<: *default
  database: morney_rails_1_production
  username: morney_rails_1
  password: <%= ENV['MORNEY_RAILS_1_DATABASE_PASSWORD'] %>
```

> 创建数据库

```
bin/rails db:create
```

> 运行

`bin/rails s`