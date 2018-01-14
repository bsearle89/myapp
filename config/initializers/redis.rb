#config/initializers/redis.rb

if Rails.env.production?
	$redis = Redis.new(url: ENV["REDIS_URL"])
	# redis url = redis://h:p4c3d422941512e11d7c7cd3a4079e50588b3b1189f20e08f34b898df8c0e4491@ec2-34-239-86-75.compute-1.amazonaws.com:50299
else
	$redis = Redis.new(:host => 'localhost', :port => 6379)
end