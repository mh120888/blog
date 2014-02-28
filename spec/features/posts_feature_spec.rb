require 'spec_helper'

describe 'When publishing a post' do
  it 'a user can see the form to create a post' do
    visit root_path
    click_on("New Post")
    expect(page).to have_content 'Write Something New'
  end
  context 'fills out the form with valid data' do
    let!(:post) { FactoryGirl.attributes_for(:post) }
    it '& can see the newly created post on the homepage' do
      visit root_path
      click_on 'New Post'
      fill_in 'post_title',   :with => post[:title]
      fill_in 'post_content', :with => post[:content]
      click_on 'Create Post'
      expect(page).to have_content "#{post[:title]}"
    end
  end
end