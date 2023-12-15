require 'rails_helper'

RSpec.describe 'Search Page' do
  describe 'searching for Fire Nation Members' do
    it 'lets me search for fire nation members from the welcome page' do
      visit root_path
      select "Fire Nation"
      click_button "Search For Members"

      expect(current_path).to eq('/search')
      expect(page).to have_content("Population: 97")
      within '#first_25' do
        expect(page).to have_content("Name: Azula")
        expect(page).to have_content("Allies: Ozai Zuko")
        expect(page).to have_content("Enemies: Iroh Zuko Kuei Long Feng Mai Ty Lee Ursa" )
        expect(page).to have_content("Affiliations: Azula's team (formerly) Dai Li (formerly) Fire Nation Fire Nation Royal Family Fire Warriors Royal Fire Academy for Girls (formerly)" )
      end
    end
  end
end 
