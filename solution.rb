require 'set'

class Solution
  attr_reader :concatenates

	def initialize
		@words = File.readlines("wordsforproblem.txt").map(&:chomp).to_set
    @concatenates = Set.new

    gen_concats
	end

  def gen_concats
    @words.each do |word|
       @concatenates.add(word) if word.length > 3 && concated?(word)
    end
  end

  def concated?(word)
    (word.length - 2).times do |idx|
       if @words.include?(word[0...(idx + 2)])
         return true if concated_helper?(word[(idx + 2)..-1])
       end
    end

    false
  end

  def concated_helper?(word)
    return true if @words.include?(word)
    return false if word.length <= 3

    (word.length - 2).times do |idx|
       if @words.include?(word[0...(idx + 2)])
         return true if concated_helper?(word[(idx + 2)..-1])
       end
    end

    false
  end

end

answer = Solution.new
puts "#{answer.concatenates.length} concatenated words"