require 'pry'

class Player
    #TO DO : la classe a 2 attr_reader, son nom et sa valeur (X ou O).
    attr_accessor :name, :symbol, :victories
    
    def initialize (name, symbol)
        @name = name
        @symbol = symbol
        @victories = 0
      #TO DO : doit régler son nom et sa valeur

    end
end