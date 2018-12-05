def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  index = (user_input.to_i) - 1
end

def valid_move?(board, index)
  if !index.between?(0, 8)
    false
  else
    !position_taken?(board, index)
  end
end

def position_taken?(board, index)
  if board[index] == "" or board[index] == " " or board[index] == nil
    false
  elsif board[index] == "X" or board[index] == "O"
    true
  end
end

def move(board, index, character = "X")
  board[index] = character
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  userindex = input_to_index(input)
  while !valid_move?(board, userindex)
    puts "Please enter 1-9:"
    input = gets.strip
    userindex = input_to_index(input)
  end
  move(board, userindex)
  display_board(board)
end
