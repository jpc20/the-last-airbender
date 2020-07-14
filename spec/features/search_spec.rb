require 'rails_helper'

describe 'Search index'do
  it 'shows total number of people who live in a nation' do
    visit root_path
    page.select 'Fire Nation'
    click_on 'Search For Members'
    expect(current_path).to eq(search_path)
    expect(page).to have_content('Total Number of people in the Fire Nation: 20')
  end

  it "shows all Fire Nation information" do
    visit root_path
    page.select 'Fire Nation'
    click_on 'Search For Members'

    within '.members' do
      expect(page).to have_css('.member', count: 20)
      within(first('.member')) do
        expect(page).to have_xpath("img[@src='https://vignette.wikia.nocookie.net/avatar/images/2/24/Afiko.png/revision/latest?cb=20121121024128']")
        expect(page).to have_content('Name: Afiko')
        expect(page).to have_content('Affiliation: Fire Nation')
        expect(page).to have_content('Allies: Fire Nation')
        expect(page).to have_content('Enemies: Aang')
      end
    end
  end

  it "shows all Air Nomad information" do
    visit root_path
    page.select 'Air Nomads'
    click_on 'Search For Members'
    expect(page).to have_content('Total Number of people in the Air Nomads: 15')

    within '.members' do
      expect(page).to have_css('.member', count: 15)
      within(first('.member')) do
        expect(page).to have_xpath("img[@src='https://vignette.wikia.nocookie.net/avatar/images/a/ae/Aang_at_Jasmine_Dragon.png/revision/latest?cb=20130612174003']")
        expect(page).to have_content('Name: Aang')
        expect(page).to have_content('Affiliation: Air Acolytes Air Nomads Air Scouts (formerly) Team Avatar')
        expect(page).to have_content('Allies: Appa')
        expect(page).to have_content('Enemies: Azula')
      end
    end
  end

end
