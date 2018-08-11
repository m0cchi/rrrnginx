r = Nginx::Request.new
c = Userdata.new('redis').conn
address = c.get(r.hostname) # host:port

address || Userdata.new('ERROR_PAGE').value
