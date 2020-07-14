require 'rails_helper'

describe 'Search index'do
  it 'shows total number of people who live in a nation' do
    visit root_path
    page.select 'Fire Nation'
    click_on 'Search For Members'
    expect(current_path).to eq(search_path)
    expect(page).to have_content('Total Number of people in the Fire Nation: 20')
  end
end
