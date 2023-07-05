# frozen_string_literal: true

class HelloController < ApplicationController
  def world
    render 'hello/world'
  end

  def about
    render 'hello/about'
  end
end
