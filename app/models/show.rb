class Show < ActiveRecord::Base
      has_many :characters
      has_many :actors, through: :characters
      belongs_to :network 
 
      #actors_list: Define a method in the Show class called #actors_list that returns an Array of the full names of each actor associated with a show. Remember, a show should have many actors through characters. Hint: it may help to use another association macro to access the actors for the show.
      def actors_list
            list = []
            self.characters.all.each do |character|
                  list << character.actor.full_name
            end
            list
      end
end