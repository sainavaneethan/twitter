require File.join(File.dirname(__FILE__), '..', 'lib', 'twitter')
require File.join(File.dirname(__FILE__), 'helpers', 'config_store')
require 'pp'

config = ConfigStore.new("#{ENV['HOME']}/.twitter")
oauth = Twitter::OAuth.new(config['token'], config['secret'])
oauth.authorize_from_access(config['atoken'], config['asecret'])
client = Twitter::Base.new(oauth)

puts client.friend_ids
puts client.follower_ids
