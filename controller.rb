require_relative "model"
require_relative "view"

class Controller

  def self.get_input # {:noun, :adjective}
    View.send_user_input
  end

  def self.get_sentence
    Controller.get_sentence
    # sentence_template = ["string", "string", :noun, "string", :adj]
  end

  def self.construct_sentence
    sentence_template = self.get_sentence
    user_input = self.get_input

    # fill in template with new words from user input
    new_sentence = sentence_template.map do |word|
      if word == :noun
        user_input[:noun]
      elsif word == :adjective
        user_input[:adjective]
      else
        word
      end
    end
    new_sentence.join(" ")
  end

  def self.run_program
    result = self.construct_sentence
    View.print_to_screen(result)
    Model.save_completed_sentence(result)
    self.tweet(result)
  end

end

