require_relative('models/movie.rb')
require_relative('models/star.rb')
require_relative('models/casting.rb')

require('pry-byebug')

Casting.delete_all
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

casting1 = Casting.new({'movie_id' => movie1.id, 'star_id' => star1.id, 'fee' => 1000000})
casting2 = Casting.new({'movie_id' => movie2.id, 'star_id' => star2.id, 'fee' => 5000000})

casting1.save
casting2.save

casting1.fee = '800000'
casting1.update

casting2.star_id = star3.id
casting2.update

# casting1.delete

binding.pry
nil
