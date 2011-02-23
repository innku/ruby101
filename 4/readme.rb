# RUBY 101 - Rack

class MyRackApplication
  
  def call(env)
    status = 200 #Status de la respuesta: 200 => success, 400 => not found, 500 => error
    headers = {"Content-Type" => "text/plain"} #Headers de la respuesta
    body = ["Hola desde rack!!"] #cuerpo de la respuesta
    [status, headers, body]
  end
  
end

class MyRackMiddleware
  
  def initialize(app)
    @app = app
  end
  
  def call(env)
    puts 'Se realizo una llamada al Rack Middleware'
    @app.call(env)
  end
end