def dictionary
  dict = {
    "hello" => "hi",
    "to" => "2",
    "too" => "2",
    "two" => "2",
    "for" => "4",
    "four" => "4",
    "For" => "4",
    "Four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&",
  }
end
def word_substituter(tweet)
  dict = dictionary
  words = tweet.split(" ")

  words.collect do |word|
  dictionary.collect do |key, value|
    if word == key
      word.replace(value)
      end
    end
  end
  words.join(" ")
end

def bulk_tweet_shortener(array_tweets)

  array_tweets.collect do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.chars.length > 140
    word_substituter(tweet)
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  if word_substituter(tweet).chars.length > 140
    turnicate = word_substituter(tweet).chars[1..137].push("...").join("")
  else
    word_substituter(tweet)
  end
end
