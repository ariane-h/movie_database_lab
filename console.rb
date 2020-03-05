require_relative('models/movie.rb')
require_relative('models/star.rb')
require_relative('models/casting.rb')

require('pry-byebug')

Star.delete_all
Movie.delete_all

movie1 = Movie.new({'title' => 'Parasite', 'genre' => 'horror'})
movie2 = Movie.new({'title' => 'The Host', 'genre' => 'action horror'})
movie3 = Movie.new({'title' => 'Snowpiercer', 'genre' => 'action'})

movie1.save
movie2.save
movie3.save

movie1.genre = 'dark comedy'
movie1.update

# movie1.delete

star1 = Star.new({'first_name' => 'Kang-ho', 'last_name' => 'Song'})
star2 = Star.new({'first_name' => 'So-dam', 'last_name' => 'Park'})
star3 = Star.new({'first_name' => 'Chris', 'last_name' => 'Evans'})

star1.save
star2.save
star3.save

binding.pry
nil
