require_relative '../spec_helper'

FactoryGirl.define do
  factory :post do
    title 'Sample Title'
    content  'This is some sample content for a blog post. Woo...'
  end
end