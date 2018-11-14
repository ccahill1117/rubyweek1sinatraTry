require('sinatra')
require('sinatra/reloader')
require('pry')

get('/') do
  @description = "This cool application will tell us if a queen can attack another piece on a BIG chess board"
  erb(:input)
end

get('/output') do
  @queen = params.fetch("queen")
  @piece = params.fetch("piece")

  def attack(queen,piece)
    vertical_array = []
    horizontal_array = []
    diagonal_array = []
    qposx = queen[0]
    qposy = queen[1]
    pposx = piece[0]
    pposy = piece[1]

      vertical_number = -8
      17.times() do
        vertical_array.push([qposx,(qposy+vertical_number)])
        vertical_number = vertical_number + 1
      end
      horizontal_number = -8
      17.times() do
        horizontal_array.push([(qposx+horizontal_number),qposy])
        horizontal_number = horizontal_number + 1
      end
      diagx_number = -8
      diagy_number = -8
      17.times() do
        diagonal_array.push([(qposx+diagx_number),(qposy+diagy_number)])
        diagx_number = diagx_number + 1
        diagy_number = diagy_number + 1
      end

      if vertical_array.include?(piece) === true
        @queen_attack ("hit - vertical")
      elsif horizontal_array.include?(piece) === true
        @queen_attack ("hit - horizontal")
      elsif diagonal_array.include?(piece) === true
        @queen_attack ("hit - diagonal")
      else
        @queen_attack ("out of range")
      end
      erb(:output)
  end














  if length == width
    @rectangle = "This is a square."
  else
    @rectangle = "This is not a square."
  end
  erb(:output)
end
