class Show < ActiveRecord::Base
  belongs_to :network
  has_many :characters
  has_many :actors, through: :characters

  def actors_list
    self.actors.collect {|actor| actor.full_name} # calling on method in actor here
  end
end
