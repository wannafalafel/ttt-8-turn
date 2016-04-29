def display_board(b)
  puts " #{b[0]} | #{b[1]} | #{b[2]} "
  puts "-----------"
  puts " #{b[3]} | #{b[4]} | #{b[5]} "
  puts "-----------"
  puts " #{b[6]} | #{b[7]} | #{b[8]} "
end

def valid_move?(board, position)
  position = position.to_i
  position = position -1
  if position.between?(0, 10)&& position_taken?(board, position) == true
    return true
  elsif position.between?(0, 10)
    return false
  elsif position_taken?(board, position) == false
    return false
  end
end



def position_taken?(board, position)
  position = position.to_i
  if board[position] == " " || board[position] == "" || board[position] == nil
    return true
  else
    return false
  end
end

def move(board, position, side = "X")
  position = position.to_i
  board[position -1] = side
end

def turn(board)
  puts "Please enter 1-9:"
  user_turn = gets.chomp

  until valid_move?(board, user_turn) == true
    puts "Please enter another number: 1-9:"
    user_turn = gets.chomp
  end

  move(board, user_turn)

  display_board(board)

end
