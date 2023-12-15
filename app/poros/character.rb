class Character
  attr_reader :name,
              :allies,
              :enemies,
              :affiliation

  def initialize(character_data)
    @name = character_data[:name]
    @allies = character_data[:allies]
    @enemies = character_data[:enemies]
    @affiliation = character_data[:affiliation]
  end
end