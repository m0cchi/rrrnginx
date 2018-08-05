r = Nginx::Request.new
c = Userdata.new('redis').conn
c.get(r.hostname) # host:port
