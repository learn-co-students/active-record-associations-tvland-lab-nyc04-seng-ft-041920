class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  def list_roles
    Character.all.map do |char|
      Show.all.map do |show|
        if char.actor_id == self.id && char.show_id == show.id 
          [char.name, show.name].join(" - ")
        end
      end
    end.flatten
  end
end