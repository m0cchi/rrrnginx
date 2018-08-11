redis = Userdata.new('redis')
redis.conn = Redis.new(ENV['REDIS_HOST'], ENV['REDIS_PORT'].to_i)
Userdata.new('ERROR_PAGE').value = ENV['ERROR_PAGE']
