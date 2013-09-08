require 'rubygems'
require 'memcache'
CACHE = MemCache.new 'localhost:11211'



class MemCache
  def get_raw(key)
    get(key, true)
  end

  def set_raw(key, value, expiry = 0)
    set(key, value, expiry, true)
  end

  def cas_raw(key, expiry=0)
    cas(key, expiry, true)
  end

  def get_multi_raw(*keys)
    get_multi(keys, :raw => true)
  end
end


CACHE.get_raw("dog")
CACHE.set_raw("dog", "FROM RUBY!")