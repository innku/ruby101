#Libreria que permite llamar a todos los gems
require 'rubygems'

#Restclient hace requests get/post
require 'rest-client'
apple_store_content = RestClient.get 'http://store.apple.com/us'

#Nokogiri te permite navegar en un documento XML o HTML
require 'nokogiri'
apple_store_html = Nokogiri::HTML(apple_store_content)

apple_mac_products = []
apple_store_html.css('#family-mac li span').each do |node|
  apple_mac_products << {:name => node.css('strong').text, 
                         :price => node.css('nobr').text }
end

#JSON te permite formatear tus objectos y estructuras a JSON
require 'json'
puts apple_mac_products.to_json
