class FireNationService < ApplicationService
  def self.get_members
    get_url("/api/v1/characters?perPage=100&page=1&affiliation=Fire+Nation")
  end

  def self.first_25
    get_url("/api/v1/characters?perPage=25&page=1&affiliation=Fire+Nation")
  end
end