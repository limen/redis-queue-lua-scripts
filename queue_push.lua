local len=nil
for i,k in ipairs(ARGV) do
  len=redis.call('lpush',KEYS[1],k)
end
return {len}
