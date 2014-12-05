# Name
# verb
# adjective
# object
# hello
# noun -
# verb
# adjective
# object

# your words are:
# 1234

# here is your sentence:

# do you want to play again?
# y/n

module Viewer
extend self

  #def initialize
		@words_key = ["name", "verb", "adj", "obj"]
		@words_value = []
	#end

	def welcome_message
		welcome = <<-STRING


▄▄▌ ▐ ▄▌▄▄▄ .▄▄▌   ▄▄·       • ▌ ▄ ·. ▄▄▄ .
██· █▌▐█▀▄.▀·██•  ▐█ ▌▪▪     ·██ ▐███▪▀▄.▀·
██▪▐█▐▐▌▐▀▀▪▄██▪  ██ ▄▄ ▄█▀▄ ▐█ ▌▐▌▐█·▐▀▀▪▄
▐█▌██▐█▌▐█▄▄▌▐█▌▐▌▐███▌▐█▌.▐▌██ ██▌▐█▌▐█▄▄▌
 ▀▀▀▀ ▀▪ ▀▀▀ .▀▀▀ ·▀▀▀  ▀█▄▀▪▀▀  █▪▀▀▀ ▀▀▀
▄▄▄▄▄          ▄▄▄   ▄▄▄· ·▄▄▄▄  ▄▄▌  ▪  ▄▄▄▄· .▄▄ · ▄▄
•██  ▪         ▀▄ █·▐█ ▀█ ██▪ ██ ██•  ██ ▐█ ▀█▪▐█ ▀. ██▌
 ▐█.▪ ▄█▀▄     ▐▀▀▄ ▄█▀▀█ ▐█· ▐█▌██▪  ▐█·▐█▀▀█▄▄▀▀▀█▄▐█·
 ▐█▌·▐█▌.▐▌    ▐█•█▌▐█ ▪▐▌██. ██ ▐█▌▐▌▐█▌██▄▪▐█▐█▄▪▐█.▀
 ▀▀▀  ▀█▄▀▪    .▀  ▀ ▀  ▀ ▀▀▀▀▀• .▀▀▀ ▀▀▀·▀▀▀▀  ▀▀▀▀  ▀


 STRING
    puts welcome
    spacer
	end

	def get_sentence
		get_input
		get_name
		get_verb
		get_adj
		get_obj
		create_hash
	end

	def get_input
		@input = gets.chomp
	end

	def save_word
		@words_value << @input
	end

	def get_name
		puts "Please enter a name: "
		get_input
		save_word
		# spacer
	end

	def get_verb
		puts "Please enter a past tense verb: "
		get_input
		save_word
		# spacer
	end

	def get_adj
		puts "Please enter an adjective:"
		get_input
		save_word
		# spacer
	end

	def get_obj
		puts "Please enter an object"
		get_input
		save_word
		# spacer
	end

	def create_hash
		@word_hash = Hash[@words_key.zip(@words_value)]
		# p @word_hash
	end

	def print_words
		puts "These are the words you entered:"
		spacer
		puts <<-STRING
Name: #{@words_value[0]}
Verb: #{@words_value[1]}
Adjective: #{@words_value[2]}
Object: #{@words_value[3]}
STRING
spacer
	end

	def print_sentence(sentence)
		puts "Your completed sentence is: #{sentence}"
		spacer
	end

	def spacer
		10.times do
			print "-----"
			sleep(0.05)
		end
		puts ""
	end

	# def play_again
	# 	puts "Do you want to keep playing?"
	# 	case
	# 	end
	# end



end

# Viewer.new
# Viewer.welcome_message
# Viewer.get_name
# Viewer.get_verb
# Viewer.get_adj
# Viewer.get_obj
# Viewer.create_hash
# Viewer.print_words
# Viewer.print_sentence
