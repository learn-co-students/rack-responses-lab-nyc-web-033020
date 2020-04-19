class Application
 
    def call(env)
      resp = Rack::Response.new
      resp.write "Good Morning"
      if Time.now.to_i <= 12 
       
      else
        resp.write "Good Afternoon"
      end
   
      resp.finish
    end
   
  end