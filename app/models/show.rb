class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network

  def actors_list
    arr = Character.all.map do |character|
      if character.show == self
        first = character.actor.first_name
        last = character.actor.last_name
        full = first + " " + last
      end
    end
    arr
  end
end
