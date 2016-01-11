

class Boggle
	attr_accessor :array_dices
	def initialize
		@array_dices=[]
	end
	#1st iteration
	# def shake!
	# 	4.times do 
	# 		puts (0...4).map{ ('A'..'Z').to_a[rand(26)]  }.join
	# 	end
 # end
def shake(string)
		@array_dices.push(string)
end
 #2nd iteration
	 def get_letter
	  
	  string=""
	 	random_number=rand(0..5)

	 	(0..@array_dices.length-1).each do |i|

	 		letter=@array_dices[i].chars.map { |ch| ch.upcase }
	 		string+=letter[random_number]
	 end
	 	@array_four_elements=string.scan(/..../).join(" ").split(" ")
	 	
	 	for i in (0..3) 

	 		@elements=@array_four_elements[i].gsub(/(.{1})/, '\1 ')
	 		if @elements.include? "Q"
				@elements.sub! 'Q', 'Qu'
			 end
	 		puts @elements
	 		# puts @elements
	 	# 	
	 	end
	end
end

board=Boggle.new
board.shake("AAEEGN")
board.shake("ELRTTY")
board.shake("ELRTTY")
board.shake("AOOTTW")
board.shake("ABBJOO")
board.shake("EHRTVW")
board.shake("CIMOTU")
board.shake("DISTTY")
board.shake("EIOSST")
board.shake("DELRVY")
board.shake("ACHOPS")
board.shake("HIMNQU")
board.shake("EEINSU")
board.shake("EEGHNW")
board.shake("AFFKPS")
board.shake("HLNNRZ")
board.shake("DEILRX")
board.get_letter


