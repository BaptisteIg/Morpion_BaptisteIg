class Show

    def show_board(board, player)
      #TO DO : affiche sur le terminal l'objet de classe Board en entrée. S'active avec un Show.new.show_board(instance_de_Board)
      
      puts 'Entrer le numero de la case:'
      puts ' ┌───┬───┬───┐'
      puts "A│ #{board.board[0].value} │ #{board.board[1].value} │ #{board.board[2].value} │         #{player[0].name} Victoire(s): #{player[0].victories}"
      puts ' ├───┼───┼───┤'
      puts "B│ #{board.board[3].value} │ #{board.board[4].value} │ #{board.board[5].value} │"
      puts ' ├───┼───┼───┤'
      puts "C│ #{board.board[6].value} │ #{board.board[7].value} │ #{board.board[8].value} │         #{player[1].name} Victoire(s): #{player[1].victories}"
      puts ' └───┴───┴───┘'
      puts '   1   2   3'
    
    
    end
  
  end