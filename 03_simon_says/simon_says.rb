#write your code here

def echo(x)
	return x;
end

def shout(x)
	return x.upcase;
end

def repeat(word, times = 2)
	newWord = word;
	for x in 2..times
		newWord += " " + word;
	end
	return newWord;
end

def start_of_word(word, letters)
	start = "";
	for i in 0..(letters - 1)
		start += word[i];
	end
	return (start);
end

def first_word(word)
	letter = '';
	firstWord = "";
	i = 0;
	while (letter != ' ')
		firstWord += word[i];
		letter = word[i + 1];
		i += 1;
	end
	return firstWord;
end

def titleize(title)
	prepositionList = ["and", "or", "the", "a", "an", "if", "over"];
	wordList = title.split;
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
