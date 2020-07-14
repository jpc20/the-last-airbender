require 'rails_helper'

describe 'Search index'do
  it 'shows total number of people who live in a nation' do
    visit root_path
    page.select 'Fire Nation'
    click_on 'Search For Members'
    expect(current_path).to eq(search_path)
    expect(page).to have_content('Total Number of people in the Fire Nation: 20')
  end

  it "shows all members information" do
    visit root_path
    page.select 'Fire Nation'
    click_on 'Search For Members'

    within '.members' do
      expect(page).to have_css('.member', count: 20)
      within(first('.member')) do
        expect(page).to have_content('Name: Afiko')
        expect(page).to have_content('Affiliation: Fire Nation')
        expect(page).to have_content('Allies: Fire Nation')
        expect(page).to have_content('Enemies: Aang')
      end
    end
  end
end
