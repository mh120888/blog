class PostsController < ApplicationController
  def index
  end
  def new
    @post = Post.new
    render :partial => 'create_post', :locals => { :post => @post }
  end
end