require 'rails_helper'

RSpec.describe FireNationService do
  it 'has inheritance' do
    expect(FireNationService).to respond_to(:conn)
    expect(FireNationService).to respond_to(:get_url)
  end
  describe '#get_members' do
    it 'returns a list of characters that live in the fire nation' do
      members = FireNationService.get_members
      expect(members).to be_an Array
      expect(members.count).to eq(97)
      citizen = members.first
      expect(citizen).to have_key(:allies)
      expect(citizen).to have_key(:enemies)
      expect(citizen).to have_key(:name)
      expect(citizen).to have_key(:affiliation)
    end
  end
  describe '#first_25' do
    it 'returns a list of the first 25 characters that live in the fire nation' do
      members = FireNationService.first_25
      expect(members).to be_an Array
      expect(members.count).to eq(25)
    end
  end
end
