require_relative('../pig_latin')

# CONVERT SINGLE WORD



describe 'Converts vowel to Pig Latin' do

it 'it will convert vowel to pig latin' do
expect(single_word("elephant")).to eq ("elephant")
end

it 'it will convert consonant to pig latin' do
expect(single_word("car")).to eq ("arcay")
end
end



describe 'Converting a sentence to Pig Latin' do
  it 'it will convert a sentence to Pig latin' do
expect(sentence("The elephant is big")).to eq ("Hetay elephant is igbay")
end
end
