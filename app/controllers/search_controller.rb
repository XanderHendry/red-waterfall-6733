class SearchController < ApplicationController
  def index
    @population = CharacterFacade.new(4).get_members.count
    @characters = CharacterFacade.new(1).get_members
  end
end