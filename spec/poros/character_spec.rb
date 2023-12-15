require 'rails_helper'

RSpec.describe Character do
  it 'exist' do
    Character = Character.new({allies:["Ozai","Zuko "],
        enemies:["Iroh","Zuko","Kuei","Long Feng","Mai","Ty Lee","Ursa "],
        name:"Azula",
        affiliation:" Azula's team (formerly) Dai Li (formerly) Fire Nation Fire Nation Royal Family Fire Warriors Royal Fire Academy for Girls (formerly)"})
  end
end 