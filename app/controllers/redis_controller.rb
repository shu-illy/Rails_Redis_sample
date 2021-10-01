class RedisController < ApplicationController
  require 'redis'

  def test
    render text: 'テスト'
    Redis.current.set("hoge", "fuga")
    session[:user_email] = 'test@a.a'
  end
end
