require 'rails_helper'

describe 'From the home page' do
  it "user can select a nation" do
    visit root_path
    page.select 'Fire Nation'
    click_on 'Search For Members'
    expect(current_path).to eq(search_path)
  end
end
