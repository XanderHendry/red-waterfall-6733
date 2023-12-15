require 'rails_helper'

RSpec.describe ApplicationService do
  describe '#conn' do
    it "returns Faraday object" do
      service = ApplicationService.new
      expect(service.conn).to be_a(Faraday::Connection)      
    end
  end
  context "#get_url" do
      it "returns parsed JSON data" do 
        parsed_response = ApplicationService.new.get_url("/api/v1/characters")
        binding.pry
        expect(parsed_response).to be_a Hash
        expect(parsed_response[:results]).to be_an(Array)
      end
    end
end 