class Movie < ActiveRecord::Base

  #### Part 1 ####
  # implement this method. Remeber to exclude [self]
  # (the current movie) from your return value
  def self.others_by_same_director(id)
    movie = self.find(id)
    director = movie.respond_to?('director') ? movie.director : ''
    if director and !director.empty?
      movies = self.where(director: director)
      # movies.delete(movie)
      # movies
    else
      return []
    end
  end
end
