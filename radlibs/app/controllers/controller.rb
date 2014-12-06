class Controller

  def self.get_input # {:noun, :adjective}
    Viewer.welcome_message
    Viewer.get_sentence
    # {name: "Me", adj: "This"}
  end

  def self.get_sentence
    Model.random_blank_sentence
    # sentence_template = ["string", "string", ":noun", "string", :adj]
  end

  def self.construct_sentence
    sentence_template = self.get_sentence
    user_input = self.get_input


    # fill in template with new words from user input
    new_sentence = sentence_template.map do |word|

      case word
      when ":name"
        user_input["name"].light_blue
      when ":adj"
        user_input["adj"].light_green
      when ":verb"
        user_input["verb"].light_black
      when ":object"
        user_input["obj"].light_magenta
      else word
      end

    end
    new_sentence.join(" ")
  end

  def self.run_program
    result = self.construct_sentence
    Viewer.print_sentence(result)
    # Model.save_completed_sentence(result)
  end

end

