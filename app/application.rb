class Application
  def call(env)
    res = Rack::Response.new

    t = Time.now

    if t.hour < 12
      res.write "Good morning"
    else
      res.write "Good afternoon"
    end

    res.finish
  end
end
