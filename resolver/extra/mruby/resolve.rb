r = Nginx::Request.new
c = Userdata.new('redis').conn
address = c.get(r.hostname) # host:port

address || ENV['ERROR_PAGE']
