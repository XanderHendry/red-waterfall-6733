require 'rails_helper'

RSpec.describe CharacterFacade do 
  it 'exists' do
    facade = CharacterFacade.new(4)
    expect(facade).to be_a(CharacterFacade)
    expect(facade).to respond_to(:pages)
    expect(facade.pages).to eq(4)
  end
  it 'gets the given number of pages from a service, and converts the results to Character poros' do
    characters = CharacterFacade.new(4).get_members
    expect(characters).to be_an(Array)
    expect(characters.count).to eq(97)
  end
end