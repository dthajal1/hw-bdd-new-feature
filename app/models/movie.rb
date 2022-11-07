class Movie < ActiveRecord::Base

  #### Part 1 ####
  # implement this method. Remeber to exclude [self]
  # (the current movie) from your return value
  def self.others_by_same_director(id)
    movie = Movie.find(id)
    director = movie.respond_to?('director') ? movie.director : ''
    if director and !director.empty?
      movies = Movie.where(:director => director)
      # puts movies.length
      # movies.delete(movie)
      movies -= [movie]
      # puts movies.length
      return movies
    else
      return []
    end
  end
end
