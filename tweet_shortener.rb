# Write your code here.
def dictionary
dictionary = {
"hello" => 'hi',
"to, two, too" => '2' ,
"for, four" => '4',
'be' =>'b',
'you' => 'u',
"at" => "@" ,
"and" => "&"
}
end

def word_substituter(str)
  # low = str.downcase
  arr = str.split
  arr.collect do |word|
  # puts "#{word} this is each word"
  dictionary.collect do |big, small|
  if word.downcase ==big
    word.replace(small)
    end
  if word.downcase == "to" || word.downcase == "too" || word.downcase =="two"
  word.replace("2")
    end
  if word.downcase == "four" || word.downcase == "for" 
  word.replace("4")
 end
end
end
arr.join(" ")
end

def bulk_tweet_shortener(str)
  str.each do |i|
    puts word_substituter(i)
  end
end

def selective_tweet_shortener(str)
  if str.length > 140
   word_substituter(str)
  else 
   str
  end
end 


def shortened_tweet_truncator(str)
  
  if selective_tweet_shortener(str).length > 140
elipse = "..."
  str[0...136] + elipse
else
  str
end
end