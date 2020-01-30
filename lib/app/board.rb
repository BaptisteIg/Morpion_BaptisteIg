require 'pry'


class Board
    #TO DO : la classe a 1 attr_accessor : un array/hash qui contient les BoardCases.
    #Optionnellement on peut aussi lui rajouter un autre sous le nom @count_turn pour compter le nombre de coups joué
    attr_accessor :board, :count_turn

    
    def initialize 
        #TO DO :
        #Quand la classe s'initialize, elle doit créer 9 instances BoardCases
        #Ces instances sont rangées dans un array/hash qui est l'attr_accessor de la classe
        @board = []
        @board << BoardCase.new("A1")
        @board << BoardCase.new("A2")
        @board << BoardCase.new("A3")
        @board << BoardCase.new("B1")
        @board << BoardCase.new("B2")
        @board << BoardCase.new("B3")
        @board << BoardCase.new("C1")
        @board << BoardCase.new("C2")
        @board << BoardCase.new("C3")
        @count_turn = 0
    end
  
    def play_turn(player)
      #TO DO : une méthode qui :
      #1) demande au bon joueur ce qu'il souhaite faire

        puts "Dans quelle case veux-tu jouer?"
        play = gets.chomp
      #2) change la BoardCase jouée en fonction de la valeur du joueur (X ou O)
        if @board.count {|cases| cases.id == play } == 1
            @board.each do |cases|
                if cases.value == " " && play == cases.id
                    cases.value = player.symbol
                elsif cases.value != " " && play == cases.id
                    puts "La case est déjà occupée nigo!"
                end
            end
            @count_turn += 1
        else
            puts "Attention tu n'as pas écrit la bonne référence"
        end
    end
  
    def victory?
      #TO DO : une méthode qui vérifie le plateau et indique s'il y a un vainqueur ou match nul
        if @board[0].value == @board[1].value && @board[1].value == @board[2].value && @board[0].value != " "
            return true
        elsif @board[3].value == @board[4].value && @board[4].value == @board[5].value && @board[3].value != " "
            return true
        elsif @board[6].value == @board[7].value && @board[7].value == @board[8].value && @board[6].value != " "
            return true
        elsif @board[0].value == @board[3].value && @board[3].value == @board[6].value && @board[0].value != " "
            return true
        elsif @board[1].value == @board[4].value && @board[4].value == @board[7].value && @board[1].value != " "
            return true
        elsif @board[2].value == @board[6].value && @board[6].value == @board[8].value && @board[2].value != " "
            return true
        elsif @board[0].value == @board[4].value && @board[4].value == @board[8].value && @board[0].value != " "
            return true
        elsif @board[2].value == @board[4].value && @board[2].value == @board[6].value && @board[2].value != " "
            return true
        else
            return false
        end
    end
end


