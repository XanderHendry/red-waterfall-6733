require 'rails_helper'

RSpec.describe ApplicationService do
  describe '#conn' do
    it "returns Faraday object" do
      expect(ApplicationService.conn).to be_a(Faraday::Connection)      
    end
  end
  context "#get_url" do
    it "returns parsed JSON data" do 
      parsed_response = ApplicationService.get_url("/api/v1/characters")
      expect(parsed_response).to be_an Array
      expect(parsed_response.first).to be_a Hash
    end
  end
end 