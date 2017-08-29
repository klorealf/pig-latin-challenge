# Your code here
# IF the word starts with a vowel, return the word.
# ELSE return the word's pig latin equivalent.
#   MOVE all leading consonants to the end of the word
#   and add the suffix "ay."
# ENDIF

def single_word(word)
  word = word.split('')
  vowels = ["a","e","i","o","u"]
  count = 0
  word.each do |char|
    vowels.each do |vowel|
      if char== vowel
        count +=1
        break
      end
    end
  end
else
    word<<word.shift
    word.join + "ay"
  end
end

def sentence

end

