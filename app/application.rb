class Application

  def call(env)
    resp = Rack::Response.new
    noon = Time.parse "12:00 pm"
    time1 = Time.now
    if time1 < noon
      resp.write "Good Morning"
    else
      resp.write "Good Afternoon"
    end

    resp.finish
  end
end
