class RedisController < ApplicationController
  require 'redis'

  def test
    render text: 'ใในใ'
    Redis.current.set("hoge", "fuga")
    session[:user_email] = 'test@a.a'
  end
end
