require "sinatra"
require "sinatra/reloader"

moves = ['rock', 'paper', 'scissors']


get("/") do
 erb(:homepage)
end

get("/rock") do
  @com_move = moves.sample
  if @com_move == 'rock'
    @outcome = 'tied'
    elsif @com_move == 'paper'
    @outcome = 'lost'
    else @outcome = 'won'
  end
  erb(:rock)
end

get("/paper") do
  @com_move = moves.sample
  if @com_move == 'paper'
    @outcome = 'tied'
    elsif @com_move == 'scissors'
    @outcome = 'lost'
    else @outcome = 'won'
  end
  erb(:paper)
end

get("/scissors") do
  @com_move = moves.sample
  if @com_move == 'scissors'
    @outcome = 'tied'
    elsif @com_move == 'rock'
    @outcome = 'lost'
    else @outcome = 'won'
  end
  erb(:scissors)
end
