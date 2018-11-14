
def attack(queen,piece)
  vertical_array = []
  horizontal_array = []
  diagonal_array = []
  qposx = queen[0]
  qposy = queen[1]
  pposx = piece[0]
  pposy = piece[1]
  # return queen_position , piece_position
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

    # return vertical_array.include?(piece_position), horizontal_array.include?(piece_position), diagonal_array.include?(piece_position)

    if vertical_array.include?(piece) === true
      return ("hit - vertical")
    elsif horizontal_array.include?(piece) === true
      return ("hit - horizontal")
    elsif diagonal_array.include?(piece) === true
      return ("hit - diagonal")
    else
      return ("out of range")
    end

     # return vertical_array, horizontal_array, diagonal_array


end
