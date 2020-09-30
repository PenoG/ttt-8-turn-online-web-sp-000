def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  index.between?(0,8) && !position_taken?(board, index)
end

def position_taken?(board, index)
  if board[index] == " " or board[index] == "" or board[index] == nil
    false
  elsif board[index] == "X" or board[index] == "O"
    true
  end
end

def input_to_index(user_input)
  user_input.to_i - 1
end

def move (board, index, current_Player = "X")
  board[index] = current_Player
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets
  input_to_index
  if input_to_index == position_taken?(false)
    move
  else
    turn
  end
end