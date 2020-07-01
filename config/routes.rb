Rails.application.routes.draw do
  get '/hello',to: 'first#hello'
  # 如果 get '/hello' 这个路径就去 first 这个controller里找 hello()
  # get('/hello',{to:'first#hello'})
  # ruby的好处是 方法的括号可以删掉
  #
  # 然后到 app/controllers 里新建 first_controller.rb
  # 它的类名必须 叫这个 class FirstController < ApplicationController
  get '/hi',to: 'first#hi'
end
