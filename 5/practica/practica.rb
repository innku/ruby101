require 'rubygems'
require 'rest-client'
require 'nokogiri'

# Crea una aplicacion Sinatra que despliegue en /mac una tabla Los productos y precios de los productos mac de apple. Aqui viene el metodo

def mac_products
  html_doc = Nokogiri::HTML(RestClient.get('http://store.apple.com/us'))
  html_doc.css('#family-mac li span').collect do |node|
    {:name => node.css('strong').text, 
     :price => node.css('nobr').text }
  end
end

### Tu codigo va debajo de esta linea

### Fin de tu codigo

#Bonus: Haz un servicio /mac.json que despliegue los productos en formato json

### Tu codigo va debajo de esta linea

### Fin de tu codigo