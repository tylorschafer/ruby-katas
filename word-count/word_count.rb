require 'pry'

class Phrase

  def initialize(sentance)
    @words = sentance.split(/[^a-zA-Z0-9']/)
  end

  def word_count
    grouped_words = @words.group_by { |word| word.downcase }
    grouped_words.each do |word, words|
      if word[0] == "'" && word[-1] == "'"
        stripped_word = word[1..-2]
        grouped_words[stripped_word] << stripped_word
        grouped_words.delete(word)
      elsif word.length > 0
        grouped_words[word] = words.length
      else
        grouped_words.delete(word)
      end
    end
    grouped_words
  end
end
