class CharacterFacade
  attr_reader :pages

  def initialize(pages)
    @pages = pages
  end

  def get_members
    results = []
    i = 0
    @pages.times do
      i += 1
      results << FireNationService.find_members(i)
    end
    results.flatten!
    results.map do |character_data|
      Character.new(character_data)
    end
  end
end