require 'rails_helper'

RSpec.feature "Meetups", type: :feature do
  it "can visit the homepage" do
    visit '/'
    expect(page).to have_content('Listing Meetups')
  end
end
