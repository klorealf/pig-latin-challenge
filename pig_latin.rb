def convert_word_to_pig_latin (word)
  alphabet = ('a'..'z').to_a
  vowels = %w[a e i o u]
  consonants = alphabet - vowels

   if vowels.include?(word[0])
    word
  elsif consonants.include?(word[0]) && consonants.include?(word[1]) && consonants.include?(word[2]) && consonants.include?(word[3])
    word[4..-1] + word[0..3] + 'ay'
  elsif consonants.include?(word[0]) && consonants.include?(word[1]) && consonants.include?(word[2])
    word[3..-1] + word[0..2] + 'ay'
  elsif consonants.include?(word[0]) && consonants.include?(word[1])
    word[2..-1] + word[0..1] + 'ay'
  elsif consonants.include?(word[0])
    word[1..-1] + word[0] + 'ay'
  else
    word
  end
end



# p convert_word_to_pig_latin("alpha")
# p convert_word_to_pig_latin("cat")
# p convert_word_to_pig_latin("ccat")
# p convert_word_to_pig_latin("cccat")
# p convert_word_to_pig_latin("ccccat")
# p convert_word_to_pig_latin("doggy")

"alpha"
"atcay"
"atccay"
"atcccay"
"atccccay"
"oggyday"

