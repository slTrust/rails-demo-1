class FirstController < ApplicationController
  def hello
    # 渲染 文本
    # render plain:'hello rails'
    # 渲染 json
    # render json: {name:'hjx',age: 18}

    # 渲染 html  app/views/first/hello.html
        # app/views 目录新建 first目录
        # app/views/first目录里新建 hello.html
    render 'first/hello'
  end
  def hi
    render 'first/hi'
  end
end