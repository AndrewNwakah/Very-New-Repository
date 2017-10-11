class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  http_basic_authenticate_with name: "username", password: "password"
  def hello
    
    render html: "hello, world!"
  end
end
