class Model
  def self.random_blank_sentence
    blank_sentence = Template.all.sample.sentence
    # blank_sentence = "I want candy"
    return blank_sentence.split(" ")
  end

  def self.save(completed_sentence)
  end
end

#

# Controller
# random_blank_sentence
