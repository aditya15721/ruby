class ApplicationController < ActionController::Base
  def world
    render json: { message: 'Hello, World' }
  end
end
