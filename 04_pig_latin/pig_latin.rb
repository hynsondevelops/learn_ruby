#write your code here
def translate(words)
	vowels = ['a', 'e', 'i', 'o', 'u'];
	wordArray = words.split;
	for j in 0..(wordArray.size - 1)
		word = wordArray[j];
		consonantOrVowel = false;
		consonantCounter = 0;
		i = 0;
		while (!consonantOrVowel)
			if (vowels.include?(word[i]))
				if (word[i] == 'u' &&  word[i - 1] == 'q')
					word += word[i];
					consonantCounter += 1;
				end
				consonantOrVowel = true;
			else
				word += word[i];
				consonantCounter += 1;
			end
			i += 1;
		end
		word << "ay";
		wordArray[j] = word[(consonantCounter..-1)];
	end
	return wordArray.join(" ");
end


