return redis.call('zpopmax',KEYS[1],ARGV[1])
