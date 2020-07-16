require 'pry'
#binding.pry

# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6]
  ]
  
# #won? method
  
def won?(board)
  # Returns false/nil if no win combination present and return the winning combination indexes as an array if there is a win
  # iterate over WIN_COMBINATIONS (a nested array) and check if board has the same player token in each index of a winning combination
  WIN_COMBINATIONS.find do |win_combination|
    win_combination.all? do |index|
      if board[index] == win_combination[index]
        true
      elsif board[index] == win_combination[index]
        true
      else
        false
      end
    end  
  end
end

# #full? method

def full?(board)
  # Return true if every element in the board contains either "X" or "O"
  # Returns false for an in-progress game
  board.none?{|index| index == " " || index == nil}
end

# #draw? method

def draw?(board)
  # Returns TRUE if the board is NOT WON, but it is FULL
  if board != won?(board) && board == full?(board) 
    true
  # Returns FALSE if the board is NOT WON and the board is NOT FULL
  elsif board != won?(board) && board != full?(board)
    false
  # Returns FALSE if the board is WON
  elsif board == won?(board)
    false
  end
end

# #over? method

def over?(board)
  # Returns TRUE if the board has been won, is a draw, or is full
  # Compose using the methods I created
  board == won?(board) || board == draw?(board) || board == full?(board)
end

# #winner method

def winner(board)
  # Return the token "X" or "O" that has won the game given a winning board
  
end