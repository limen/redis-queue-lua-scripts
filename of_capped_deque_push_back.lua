local cap=tonumber(ARGV[1])
local len=nil
for i,k in ipairs(ARGV) do
  if i>1 then
    len=redis.call('lpush',KEYS[1],k)
  end
end
local o={}
if len~=nil and len>cap then
  o[#o+1]=redis.call('rpop',KEYS[1])
  len=len-1
end
return {len,o}
