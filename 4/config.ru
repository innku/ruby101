require './readme' 			#Se require el archivo donde vive nuestra aplicacion rack

use MyRackMiddleware 		#Se define si se utilizara un Middleware
run MyRackApplication.new 	#Se corre la aplicacion Rack