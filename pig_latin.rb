# CONVERT SINGLE WORD

# IF the word starts with a vowel, return the word.
# ELSE return the word's pig latin equivalent.
#   MOVE all leading consonants to the end of the word
#   and add the suffix "ay."
# ENDIF

def convert_word_to_pig_latin(word)
  if word =~ (/\A[aeiou]/i)
    return word
  elsif word =~ (/\A[^aeiou]/i)
    match = /\A[^aeiou]/i+/i.match(word)
    word = match.post_match + match.to_s + 'ay'
  end
  word
end

def convert_word_to_pig_latin(word)



