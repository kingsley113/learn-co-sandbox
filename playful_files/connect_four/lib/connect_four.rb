def display_board(board)
  puts "| #{board[12]} | #{board[13]} | #{board[14]} | #{board[15]} |"
  puts "| #{board[8]} | #{board[9]} | #{board[10]} | #{board[11]} |"
  puts "| #{board[4]} | #{board[5]} | #{board[6]} | #{board[7]} |"
  puts "| #{board[0]} | #{board[1]} | #{board[2]} | #{board[3]} |"
  puts "-----------------"
end

GAME_COLUMNS = [
  1 = [board[0], board[4], board[8], board[12],
  2 = [board[1], board[5], board[9], board[13],
  3 = [board[2], board[6], board[9], board[14],
  4 = [board[3], board[7], board[11], board[15]
]
  
WIN_COMBINATIONS = [
  [0,4,8,12] # first column
  [1,5,9,13] # second column
  [2,6,10,14] # third column
  [3,7,11,15] # fourth column
  [0,1,2,3] # bottom row
  [4,5,6,7] # second row
  [8,9,10,11] # third row
  [12,13,14,15] # fourth row
  [0,5,10,15] # diagonal up
  [12,9,6,3] # diagonal down
]


# store move on array **modify this to add tokens from bottom up**
def move(array, column, token)
  counter = 0

  until (GAME_COLUMNS[counter] == " ")
  array[index.to_i] = token
end


# count the number of turns played
def turn_count(array)
  counter = 0
  #board_array = array
  array.each do |position|
    if position != " "
      counter += 1
    end
  end
  turn_count = counter
end


# determine the current players turn
def current_player(array)
  turn_count(array).even? ? current_player = "X" : current_player = "O"
end


# determine if the current position is taken - **modify this to be if column is full**
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end


# determine if the game is over
def over?(array)
  if won?(array) || full?(array) || draw?(array)
    true
  else
    false
  end
end


# determine if there is a winning combination
def won?(array)
  # assign a variable to the constant WIN_COMBINATIONS to work with
  win_combination = WIN_COMBINATIONS
  #iterate through untill we find a winning combo
  win_combination.find do |index|
    #check on the winning positions of the board and assign the boards value for each space
    winning_positions = [array[index[0]], array[index[1]], array[index[2]], array[index[3]]]
    # check if all spaces are either X or O
    win_X = winning_positions.all? do |position|
      position == "X"
    end
    win_O = winning_positions.all? do |position|
      position == "O"
    end
    # report the results of the tests
    if win_X == true || win_O == true
      return winning_index = [index[0], index[1], index[2], index[3]]
    else
      false
    end
  end
end



# determine if there is a draw
def draw?(array)
  if full?(array)
    if !won?(array) && full?(array)
      true
    elsif !full?(array) && !won?(array)
      false
    else won?(array)
      false
      end
  else
    false
  end
end


# determine if the board is full
def full?(array)
  !array.include?(" ")
end


# determine if there is a draw
def draw?(array)
  if !won?(array) && full?(array)
    true
  elsif !full?(array) && !won?(array)
    false
  else won?(array)
    false
    end
end


# determine who is the winner
def winner(array)
  if won?(array)
    return array[won?(array)[0]]
  else
    nil
  end
end