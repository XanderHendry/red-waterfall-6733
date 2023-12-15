require 'rails_helper'

RSpec.describe FireNationService do
  it 'has inheritance' do
    expect(FireNationService).to respond_to(:conn)
    expect(FireNationService).to respond_to(:get_url)
  end
  describe '#find_members' do
    it 'returns the given page of a pagenated list of characters that live in the fire nation, 25 characters /page' do
      members = FireNationService.find_members(1)
      expect(members).to be_an Array
      expect(members.count).to eq(25)
      citizen = members.first
      expect(citizen).to have_key(:allies)
      expect(citizen).to have_key(:enemies)
      expect(citizen).to have_key(:name)
      expect(citizen).to have_key(:affiliation)
    end
  end
end
