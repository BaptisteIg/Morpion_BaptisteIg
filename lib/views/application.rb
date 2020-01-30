require 'pry'



class Application

    
    def perform
        puts "Joueur 1, quel votre nom?"
        player1 = Player.new(gets.chomp.to_s, "O".colorize(:red))
        puts "Joueur 2, quel votre nom?"
        player2 = Player.new(gets.chomp.to_s, "X".colorize(:blue))

        game = Game.new(player1, player2)

        while game.status == "on going" 
            system ('clear')
            game.turn
            if game.status == "finished"
                game.new_round
            end
        end

      


        # TO DO : méthode qui initialise le jeu puis contient des boucles while pour faire tourner le jeu tant que la partie n'est pas terminée.
      # 
    end
  
end

