require 'twitter'
require_relative '../app/models/tweet'


client = Twitter.configure do |config|
  config.consumer_key        = "3qgz4FHPzKPCW26y5ZlJDw"
  config.consumer_secret     = "xPMEniCjQjGzLsOkma0nbXJaFU7LSMQLoHJzsnuhA"
  config.oauth_token        = "13142292-QW6851DunKTaBqEks12BRt8nAPs2d4kB8DjiAo3Fa"
  config.oauth_token_secret = "V8PlWSRzwNIg5cVdbqtWV20m4pAAXCt2eYXA7pzWGxYfy"
end

puts client.user('kilophoton')

