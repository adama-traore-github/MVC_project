require 'csv'

class Gossip
  attr_reader :author, :content

  def initialize(author, content)
    @content = content
    @author = author
  end

  def save
    CSV.open("db/gossip.csv", "ab") do |csv|
      csv << [author, content]
    end
  end

  def self.all
    all_gossips = []
    CSV.read("db/gossip.csv").each do |row|
      all_gossips << Gossip.new(row[0], row[1])
    end
    all_gossips
  end

  def self.delete(id)
    gossips = self.all
    gossips.delete_at(id)
    CSV.open("db/gossip.csv", "wb") do |csv|
      gossips.each { |gossip| csv << [gossip.author, gossip.content] }
    end
  end
end
