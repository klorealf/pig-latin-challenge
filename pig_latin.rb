def convert_word_to_pig_latin (word)
  alphabet = ('a'..'z').to_a
  vowels = %w[a e i o u]
  consonants = alphabet - vowels
#Yes we know we hard coded these, but freaking sphynx :(
  if vowels.include?(word[0])
    word
  elsif consonants.include?(word[0]) && consonants.include?(word[1]) && consonants.include?(word[2]) && consonants.include?(word[3]) && consonants.include?(word[4]) && consonants.include?(word[5])
    word[6..-1] + word[0..5] + 'ay'
  elsif consonants.include?(word[0]) && consonants.include?(word[1]) && consonants.include?(word[2]) && consonants.include?(word[3]) && consonants.include?(word[4])
    word[5..-1] + word[0..4] + 'ay'
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

def convert_sentence_to_pig_latin (sentence)
  new_array = []
  new_array << sentence.split(" ")
  p new_array
  new_array.map! {|name| convert_word_to_pig_latin(name)}

  # new_array.each do |word|
  #   p new_new_array << convert_word_to_pig_latin(word)
  # end
  p new_array.join(" ")
end

a = "The Cat Ate"
convert_sentence_to_pig_latin(a)
