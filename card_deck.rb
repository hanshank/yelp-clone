class Card
  attr_accessor :rank, :suit

  def initialize(rank, suit)
    self.rank = rank
    self.suit = suit
  end

  def output_card
    puts "#{self.rank} of #{self.suit}"
  end

  def self.random_card
    Card.new(rand(10), :spades)
  end
end

class Deck
    SUITS = [:hearts, :diamonds, :spades, :clubs]
    RANKS = [2, 3, 4, 5, 6, 7, 8, 9, 10, :jack, :queen, :king, :ace]
  # attr_accessor :cards
  def initialize
     @cards = []  
     SUITS.product(RANKS).each do |card|
     @cards << Card.new(card[1], card[0]) 
     end
     # SUITS.each do |suit|
     #   RANKS.each do |rank|         
     #     @cards << Card.new(rank, suit)       
     #   end
     # end
    
  end

  def shuffle
    @cards.shuffle!
  end

  def deal
    @cards.shift
  end

end

# card = Card.new(:queen, :hearts)
# card2 = Card.new(:king, :diamonds)

deck = Deck.new
deck.shuffle
puts deck.deal.inspect
puts deck.deal.inspect
puts deck.deal.inspect

#An object is an instance of a class (only applies in Ruby ISH. Not in all languages)
#A method is a function that belongs to a class. 
