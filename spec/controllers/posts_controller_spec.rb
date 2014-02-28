require 'spec_helper'

describe PostsController do
  context '#create' do
    it 'exists and has an associated template' do
      post :create
    end
  end
end