class FirstController < ApplicationController
    def hello
      # 渲染 文本
      render plain:'hello rails'
    end
  end
    