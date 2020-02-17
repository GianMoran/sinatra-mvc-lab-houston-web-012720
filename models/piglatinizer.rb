class PigLatinizer

  def consonants?(char)
    char.match(/[bcdfghjklmnpqrstvwxyz]/)
  end
  def vowels?(char)
      char.match(/[aeiou]/)
  end
    
  def piglatinize_word(word)
      if vowels?(word[0].downcase)
        "#{word}way"
      elsif consonants?(word[0].downcase) && consonants?(word[1].downcase) && consonants?(word[2].downcase)
        "#{word.slice(3..-1) + word.slice(0,3)}ay"
      elsif consonants?(word[0].downcase) && consonants?(word[1].downcase)
        "#{ word.slice(2..-1) + word.slice(0,2)}ay"
      else
        "#{word.slice(1..-1) + word.slice(0)}ay"
      end
    
  end

  def piglatinize_sentence(sentence)
   sentence.split.map{|word| piglatinize(word)}.join(" ")
  end

  def  piglatinize(string)
  string.split(" ").length == 1 ? piglatinize_word(string) : piglatinize_sentence(string)
 end
end