require_relative 'controller'

class Router
  def initialize
    @controller = Controller.new
  end

  def perform
    puts "BIENVENUE DANS THE BIG PROJECT"
    puts "Quelle action veux-tu effectuer ?"

    while true
      puts "1. Je veux créer un potin"
      puts "2. Afficher tous les potins"
      puts "3. Supprimer un potin"
      puts "4. Je veux quitter l'application"

      choice = gets.chomp.to_i

      case choice
      when 1
        @controller.create_gossip
      when 2
        @controller.index_gossips
      when 3
        @controller.delete_gossip
      when 4
        puts "À bientôt !"
        break
      else
        puts "Ce choix n'existe pas, merci de réessayer."
      end
    end
  end
end
