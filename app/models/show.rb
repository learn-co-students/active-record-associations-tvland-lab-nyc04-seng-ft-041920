class Show < ActiveRecord::Base
  belongs_to :network
  has_many :characters
  has_many :actors, through: :character

  def actors_list
    character = Character.all.find_all do |char|
      char.show_id == self.id  
    end  
    actors = Actor.all.map do |act|
      character.map do |char|
        if act.id == char.actor_id
          [act.first_name, act.last_name].join(" ")
        end  
      end  
    end.flatten
    actors
  end
  binding.pry
end