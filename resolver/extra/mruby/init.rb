redis = Userdata.new('redis')
redis.conn = Redis.new(ENV['REDIS_HOST'], ENV['REDIS_PORT'].to_i)
