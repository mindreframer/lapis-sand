local num = tonumber(ngx.var.arg_num) or 0

local memc, err = memcached:new()
if not memc then
    ngx.say("failed to instantiate memc: ", err)
    return
end

memc:set_timeout(1000) -- 1 sec

local ok, err = memc:connect("127.0.0.1", 11211)
if not ok then
    ngx.say("failed to connect: ", err)
    return
end

-- local ok, err = memc:set("dog", "FROM LUA")
-- if not ok then
--     ngx.say("failed to set dog: ", err)
--     return
-- end

local res, flags, err = memc:get("dog")
if err then
    ngx.say("failed to get dog: ", err)
    return
end


if num > 50 then
   ngx.say("num too big")
   return
end

ngx.say("DOG is ", res)
ngx.say("num is: ", num)


if num > 0 then
   -- res = ngx.location.capture("/recur?num=" .. tostring(num - 1))
   -- ngx.print("status=", res.status, " ")
   -- ngx.print("body=", res.body)
   -- ngx.print()
else
   ngx.say("end")
end


