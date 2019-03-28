# Write your code here.
def dictionary
  {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter(tweet)
  words = tweet.split

  shorten_tweet = words.map do |word|
    if dictionary.keys.include?(word.downcase)
      word = dictionary[word.downcase]
    else
      word
    end
  end

  shorten_tweet.join(' ')
end


def bulk_tweet_shortener(tweets)
  tweets.each { |tweet| puts word_substituter(tweet)}
end

def selective_tweet_shortener(tweet)
  tweet.length >= 140 ? word_substituter(tweet) : tweet
end
