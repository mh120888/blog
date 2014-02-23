require 'spec_helper'

describe Post do
  context 'columns' do
    it { should respond_to :title }
    it { should respond_to :content }
  end

  context 'validations' do
    it { should validate_presence_of :title }
    it { should validate_presence_of :content }
  end
end