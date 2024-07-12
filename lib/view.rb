class View
  def create_gossip
    puts "Entrez le nom de l'auteur du potin :"
    author = gets.chomp
    puts "Entrez le contenu du potin :"
    content = gets.chomp
    { author: author, content: content }
  end

  def index_gossips(gossips)
    gossips.each_with_index do |gossip, index|
      puts "#{index + 1}. #{gossip.author} a dit : #{gossip.content}"
    end
  end

  def delete_gossip
    puts "Entrez le numéro du potin à supprimer :"
    gets.chomp.to_i - 1
  end
end
