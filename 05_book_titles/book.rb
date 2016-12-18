class Book

	def initilize()

	end
	#def initialize(title)
	#	@title = titleize(title);
	#end

	def title=(title) 
		@title = titleize(title);
	end

	def title
		return @title;
	end


	def titleize(thisTitle)
		prepositionList = ["in", "of", "and", "or", "the", "a", "an", "if", "over"];
		wordList = thisTitle.split;
		wordList[0] = wordList[0].capitalize;
		for i in 1..(wordList.size - 1)
			if (prepositionList.include?(wordList[i]))
			else
				wordList[i] = wordList[i].capitalize;
			end
		end
		newTitle = wordList.join(" ");
		return newTitle;
	end
# write your code here
end
