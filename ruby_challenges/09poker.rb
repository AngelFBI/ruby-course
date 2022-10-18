# frozen_string_literal: true

class Hand
  attr_reader :values, :suits, :same_value

  def initialize(card1, card2, card3, card4, card5)
    args = [card1, card2, card3, card4, card5]
    @values = []
    @suits = []
    (0..args.length - 1).each do |i|
      @values[i], @suits[i] = args[i].split(/\s*([a-z])/)
    end
    @suits.uniq!
    change_values
    @same_value = unique_value
  end

  def highest_ranked
    initial_text = 'Highest-Ranked combination: '
    if royal_flush?
      "#{initial_text}Royal Flush"
    elsif straight_flush?
      "#{initial_text}Straight Flush"
    elsif four_of_a_kind?
      "#{initial_text}Four of a Kind"
    elsif full_house?
      "#{initial_text}Full House"
    elsif flush?
      "#{initial_text}Flush"
    elsif straight?
      "#{initial_text}Straight"
    elsif three_of_a_kind?
      "#{initial_text}Three of a Kind"
    elsif two_pairs?
      "#{initial_text}Two Pairs"
    elsif pair?
      "#{initial_text}Pair"
    else
      "#{initial_text}High Card"
    end
  end

  private

  def change_values
    changed_values = []
    @values.each do |value|
      changed_values << case value.upcase
                        when 'J'
                          11
                        when 'Q'
                          12
                        when 'K'
                          13
                        when 'A'
                          14
                        else
                          value.to_i
                        end
    end
    @values = changed_values.sort
  end

  def unique_value
    unique_value = Hash.new(0)
    @values.each do |value|
      unique_value[value.to_s.to_sym] += 1
    end
    unique_value
  end

  def pair?
    @same_value.value?(2)
  end

  def two_pairs?
    @same_value.length == 3
  end

  def three_of_a_kind?
    @same_value.value?(3)
  end

  def straight?
    values == (values.first...(values.first + values.length)).to_a
  end

  def flush?
    suits.length == 1
  end

  def full_house?
    three_of_a_kind? && pair?
  end

  def four_of_a_kind?
    @same_value.value?(4)
  end

  def straight_flush?
    flush? && straight?
  end

  def royal_flush?
    straight_flush? && values.first == 10
  end
end

hand1 = Hand.new('Ah', 'Kh', 'Qh', 'Jh', '10h')
puts hand1.highest_ranked
hand2 = Hand.new('9h', 'Kh', 'Qh', 'Jh', '8h')
puts hand2.highest_ranked
hand3 = Hand.new('7h', '5h', '8h', '6h', '9h')
puts hand3.highest_ranked
hand4 = Hand.new('7h', '7h', '7h', '7h', '9h')
puts hand4.highest_ranked
hand5 = Hand.new('6d', '6d', '6d', '9h', '9h')
puts hand5.highest_ranked
hand6 = Hand.new('2d', '3d', '6d', '4h', '5h')
puts hand6.highest_ranked
hand7 = Hand.new('2d', '2d', '2d', '4h', '5h')
puts hand7.highest_ranked
hand8 = Hand.new('2d', '2d', '5d', '4h', '5h')
puts hand8.highest_ranked
hand9 = Hand.new('2d', '2d', '5d', '4h', '6h')
puts hand9.highest_ranked
hand10 = Hand.new('2d', '8d', '5d', '4h', '6h')
puts hand10.highest_ranked
