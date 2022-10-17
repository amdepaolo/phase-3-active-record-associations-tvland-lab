class Show < ActiveRecord::Base
    has_many :characters
    belongs_to :network
    has_many :actors, through: :characters

    def actors_list
        cast = []
        self.actors.each do |actor|
            cast << actor.full_name
        end
        cast
    end
  
end