

=begin
create board
player 1 is x
player 2 is O
alternate players moves until round is 9 (full board) or someone wins

players moves are entered as string and translated to commands
a valid move is one that places an O or X ONLY on a spot that is blank
only a valid move increments the round

=end 
def create_board
  @grid = []
  @move_count = 0
  3.times { @grid << Array.new(3) { ' ' } }
end

def prompt
  puts "Player 1 will play as X. Player 2 will play as O."
  puts "View the board as comprising of 3 rows, each with spaces 1,2, and 3."
  puts "Enter your desired move like so: 'row 1 space 1', or 'row 2 space 3'"
end

def player_moves
  player = ""
  @move_count.even? ? player = "X's" : player = "O's"
  puts "#{player} turn. Select the row and position you would like to move to."
  coordinates = gets.chomp.scan(/\d/).map { |i| i.to_i }
  row = coordinates[0] - 1
  space = coordinates[1] - 1
  if valid_move?(row,space) && @move_count.even?
    @grid[row][space] = "X"
    @move_count += 1
  elsif valid_move?(row,space) && @move_count.odd?
    @grid[row][space] = "O"
    @move_count += 1
  else
    puts "This spot is taken"
  end
end

def valid_move?(row,space)
  @grid[row][space] == " "
end


def show_grid
  @grid.each { |row| p row }
end

def has_winner?(grid)
  row_1 = grid[0]
  row_2 = grid[1]
  row_3 = grid[2]
  rows = [row_1,row_2,row_3]

  col_1 = [row_1[0],row_2[0],row_3[0]]
  col_2 = [row_1[1]],row_2[1],row_3[1]
  col_3 = [row_1[2]],row_2[2],row_3[2]
  columns = [col_1,col_2,col_3]

  diagonal_1 = [row_1[0],row_2[1],row_3[2]]
  diagonal_2 = [row_1[2],row_2[1],row_3[0]]
  diagonals = [ diagonal_1, diagonal_2]

  uniform?(rows) || uniform?(columns) || uniform?(diagonals)
end

def tie_game?
  @move_count == 9
end

def uniform?(array_of_rows_cols_diags)
  array_of_rows_cols_diags.each do |row|
    return true if row.all? { |spot| spot == 'X' }
    return true if row.all? { |spot| spot == 'O' }
  end
  false
end




def game_play
  until has_winner?(@grid) || tie_game?
    show_grid
    player_moves
  end
  if tie_game?
    show_grid
    puts "Tie game. Game over!"
    Process.exit
  else
    if @move_count.odd?
      show_grid
      puts "Player 1 wins. X's dominate!"
      Process.exit
    else
      show_grid
      puts "Player 2 wins. O's dominate!"
      Process.exit
    end
  end
end


create_board
prompt
game_play