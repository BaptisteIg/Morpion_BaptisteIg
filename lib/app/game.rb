require 'pry'

class Game
    #TO DO : la classe a plusieurs attr_accessor: le current_player (égal à un objet Player), le status (en cours, nul ou un objet Player s'il gagne), le Board et un array contenant les 2 joueurs.
    attr_accessor :current_player, :status, :players, :full_board



    def initialize (player1, player2)
        @players = []
        @players << player1
        @players << player2

        @status = "on going"

        @current_player = players[0]

        @full_board = Board.new


      #TO DO : créé 2 joueurs, créé un board, met le status à "on going", défini un current_player
    end
  
    def turn
        #TO DO : méthode faisant appelle aux méthodes des autres classes (notamment à l'instance de Board). Elle affiche le plateau, demande au joueur ce qu'il joue, vérifie si un joueur a gagné, passe au joueur suivant si la partie n'est pas finie.
        
        puts ''
        puts "\n"
        puts '    ___  ___                 _'
        puts '    |  \\/  |                (_)'
        puts '    | .  . | ___  _ __ _ __  _  ___  _ __'
        puts '    | |\\/| |/ _ \\| \'__| \'_ \\| |/ _ \\| \'_ \\'
        puts '    | |  | | (_) | |  | |_) | | (_) | | | |'
        puts '    \\_|  |_/\\___/|_|  | .__/|_|\\___/|_| |_|'
        puts '                      | |'
        puts '                      |_|'
        puts ''

        Show.new.show_board(@full_board, @players)

        @full_board.play_turn(@current_player)

        if @full_board.victory? == true || @full_board.count_turn == 9
            game_end
        end


        @current_player =   if @current_player == players[0]
                                players[1]
                            else 
                                players[0]
                            end

    end
  
    def new_round
      # TO DO : relance une partie en initialisant un nouveau board mais en gardant les mêmes joueurs.
      
        puts "Voulez-vous relancer une partie? (Y/n)"
        answer = gets.chomp.to_s
        if answer == "Y"
            @full_board = Board.new
            @status = "on going"
            @current_player.victories += 1
        else
            puts "Thanks for playing! :)"
        end
    end
  
    def game_end
      # TO DO : permet l'affichage de fin de partie quand un vainqueur est détecté ou si il y a match nul
        system ('clear')
        @status = "finished"
        
        puts ''
        puts "\n"
        puts '    ___  ___                 _'
        puts '    |  \\/  |                (_)'
        puts '    | .  . | ___  _ __ _ __  _  ___  _ __'
        puts '    | |\\/| |/ _ \\| \'__| \'_ \\| |/ _ \\| \'_ \\'
        puts '    | |  | | (_) | |  | |_) | | (_) | | | |'
        puts '    \\_|  |_/\\___/|_|  | .__/|_|\\___/|_| |_|'
        puts '                      | |'
        puts '                      |_|'
        puts ''
        
        Show.new.show_board(@full_board, @players)
        if @full_board.victory? == true
        puts "#{@current_player.name} à gagné!!!"
        else
        puts "Egalité, retenter votre chance!"
        end
    end
end
