class FireNationService < ApplicationService
  def self.find_members(page_num)
    get_url("/api/v1/characters?perPage=25&page=#{page_num}&affiliation=Fire+Nation")
  end
end