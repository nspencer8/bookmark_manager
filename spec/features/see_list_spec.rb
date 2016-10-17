require 'spec_helper'

feature "Bookmarks" do
  scenario 'user can see list of links' do
    visit '/'
    fill_in "link", :with => "www.google.com"
    Link.create("www.google.com")
    expect(page).to have_content "www.google.com"
  end
end
