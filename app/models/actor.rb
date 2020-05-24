class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    first = self.first_name
    last = self.last_name
    full = first + " " + last
  end

  def list_roles
    arr = []
    Character.all.map do |character|
      if character.actor == self
        name = character.name
        show = character.show.name
        format = name + " - " + show
        arr << format
      end
    end
    arr
  end
end
