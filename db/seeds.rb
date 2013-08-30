# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Emanuel', :city => cities.first)

##!/usr/bin/ruby

#path = "#{Rails.root}/db/load_data/hotels.xls"
#puts path 
#book = Spreadsheet.open path

#book.worksheets
#sheet = book.worksheet 0

#for row in 6..sheet.last_row_index  
#	if sheet[row,0]	    
#		destination = sheet[row,0]
#		chain = sheet[row,1]
#		hotel_name = HotelName.create({:name => sheet[row,2]})				
#		category = sheet[row,3]		
#	    hotel = HotelInfo.new
#	    hotel.hotel_name = hotel_name
#	    hotel.save
#	    puts "... Hotel #{hotel_name.name} ..."
#	    puts "... Hotel #{hotel_name.name} ..."
#	    puts "... Hotel #{hotel_name.name} ..."
#	end
#end
#!/usr/bin/ruby

sourses = ["#{Rails.root}/db/load_data/sample_hotels.xls", 
           "#{Rails.root}/db/load_data/hotels.xls",
           "#{Rails.root}/db/load_data/hoteles_cuba.xls"]

key = 2
path = sourses[key]
book = Spreadsheet.open path
book.worksheets
sheet = book.worksheet 0

sample = true 
last_row_index = sheet.last_row_index  
last_row_index = 20 if sample

if key == 0 or key ==1 

#"Destino"	
# "Cadena"	
# "Nombre Hotel"	
# "Nombre Habitación"	
# "Tipo de propiedad"	
# "Confort"	
# "Plan alimenticio"	
# "Nivel de servicio"	
# "Ubicación"	
# "Vista"	Especiales	Temporada	F. Inicio	F. Finalización	Simple	Doble	Triple	CP	MAP	MAP (CHD)	AP	Adulto (+13) adicional	Niño(3-12)		2-Adultos?(SI/NO)	Bebé(0-2)		Max-Adultos	Max-Niños	Excepciones		Margen (%)	Penalidad		Proveedor	Propietario	Prestatario	Modalidad	Dirección	Municipio	Email	Fax	Teléfono	Web	Latitud	Longitud	Segmento Turístico	Categoría hotel


	for row in 6..sheet.last_row_index  
		if sheet[row,0]	    
			destination = sheet[row,0]
			chain = sheet[row,1]
			hotel_name = HotelName.create({:name => sheet[row,2]})				
			category = sheet[row,3]		
			hotel = HotelInfo.new
			hotel.hotel_name = hotel_name
			hotel.save
			puts "... Hotel #{hotel_name.name} ..."
		end
	end
elsif key == 2
#	head = { 
#		  0 => "Nombre de índece", 
#         1 => "Nombre de Presentación",
#         2 =>  "Nombre Corto",	
#         3 =>  "Permalink",
#         4 =>  "Provincia",
#         5 =>  "Destino Turístico",
#         6 =>  "Categoría",
#         7 =>  "Tipo",
#         8 =>  "Administrado",
#         9 =>  "Modalidad",
#         10 =>  "Ubicado en",
#         11 =>  "Dirección",
#         12 =>  "Email",
#         13 =>  "Fax",
#         14 =>  "Teléfono",
#         15 =>  "Web",
#         16 =>  "Latitud",
#         17 =>  "Longitud",
#         18 =>  "Google map",                         
#         19 =>  "Construido en",  
#         20 =>  "Estructura",  
#         21 =>  "No de Habitaciones",  
#         22 =>  "Pisos",  
#         23 =>  "Ascensores",  
#         24 =>  "Se admiten niños?",  
#         25 =>  "Check-in",  
#         26 =>  "Check-out",
#         }
         
    puts "///////////////9879879879-7-0879-0987-0970790//////////////"  
	for row in 1..last_row_index  
		if sheet[row,0]	    
		    index_name 			= sheet[row,0]				
		    name 				= if sheet[row,1] then sheet[row,1] else index_name end 
		    short_name          = if sheet[row,2] then sheet[row,2] else name end
		    permalink 			= if sheet[row,3] then sheet[row,3]  else name.downcase.gsub(' ', '-') end
			city 				= sheet[row,4]			    		    
			destination 		= sheet[row,5]
		    category 			= sheet[row,6]				
		    property_type 		= sheet[row,7]			
			chain 				= sheet[row,8]			
			segment			    = sheet[row,9]						
			locate_in 			= sheet[row,10]			
		    street_address 		= sheet[row,11]			
		    email 		        = sheet[row,12]	
		    
			zipcode  			= ""
			fax 			    = sheet[row,13]
			phone 				= sheet[row,14]
			web 			    = sheet[row,15]						
			state_name 			= sheet[row,4]	
			alternative_phone   = ""  
			latitude 			= sheet[row,16]	
			longitude 			= sheet[row,17]
			google_map_url 	    = sheet[row,18]	
			when_built   		= sheet[row,19]	
			hotel_status 		= "open"									
			hotel_name = HotelName.create({:name => name, 
										   :hotel_short_name => short_name,
										   :index_name => index_name,
										   :permalink => permalink										  
											})										
			hotel_address = Address.create({
											:street_address => street_address,
											:city => city,
											:zipcode => zipcode,
			                                :locate_in => locate_in,
											:state_name => state_name,
											})																		
           hotel_contact = Contact.create({											
										    :fax => fax,
										    :web => web,
			                                :google_map_url => google_map_url,     							    			                                
											:phone => phone,											
											:alternative_phone => alternative_phone,									
											:email => email,
											})											
			hotel = HotelInfo.create({
											:when_built => when_built,
											:hotel_status => hotel_status,											
											:latitude => latitude,
											:category => category,
											:longitude => longitude,
										    :property_type => property_type,
										    :segment => segment,										    									
											})																		
			
			hotel.hotel_name = hotel_name
			hotel.address = hotel_address    
			hotel.contact = hotel_contact
			hotel.save
			puts "... Hotel #{hotel_name.name} ..."
		end
	end         
                                
end
