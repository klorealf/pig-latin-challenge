require_relative('../pig_latin')

describe 'Converting single words to Pig Latin' do
  it "Returns word with vowel at beginning unchanged" do
    word = 'ate'
    word_test = convert_word_to_pig_latin(word)
    expect(word_test).to eq 'ate'
  end

  it "Returns word with one constantent at beginning to pig latin" do
    word = 'cat'
    word_test = convert_word_to_pig_latin(word)
    expect(word_test).to eq 'atcay'
  end

  it "Returns word with two constantent at beginning to pig latin" do
    word = 'spat'
    word_test = convert_word_to_pig_latin(word)
    expect(word_test).to eq 'atspay'
  end

  it "Returns word with three constantent at beginning to pig latin" do
    word = 'splat'
    word_test = convert_word_to_pig_latin(word)
    expect(word_test).to eq 'atsplay'
  end

  it "Returns word with six constantent at beginning to pig latin" do
    word = 'sphynx'
    word_test = convert_word_to_pig_latin(word)
    expect(word_test).to eq 'sphynxay'
  end

end

describe 'Converting a sentence to Pig Latin' do
end
