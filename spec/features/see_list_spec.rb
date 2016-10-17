require 'spec_helper'

feature "Bookmarks" do
  scenario 'user can see list of links' do
    visit '/'
    fill_in "link", :with => "www.google.com"
    Link.create(url: 'http://www.makersacademy.com', title: 'Makers Academy')
    expect(page).to have_content "http://www.makersacademy.com"
  end
end
