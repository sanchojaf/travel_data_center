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

sourses = ["#{Rails.root}/db/load_data/hotels.xls",
           "#{Rails.root}/db/load_data/hoteles_cuba.xls"]

key = 1
path = sourses[key]
book = Spreadsheet.open path
book.worksheets
sheet = book.worksheet 0


last_row = sheet.last_row_index  
# last_row = 20

# Method to get a product permalink
def get_permalink(product_name)
  bad_chars = {'Á' => 'a', 'É' => 'e', 'Í' => 'i', 'Ó' => 'o', 'Ú' => 'u', 'Ü' => 'u', 'Ñ' => 'n', 'á' => 'a', 'é' => 'e', 'í' => 'i', 'ó' => 'o', 'ú' => 'u', 'ü' => 'u', 'ñ' => 'n', ' ' => '-', ',' => '', ')' => '', '(' => '', "'" => ''}
  name = product_name.gsub(/(.)/) {|s| bad_chars[s] ? bad_chars[s] : s}
  return name.downcase
end



if true #key == 1
#	head = { 
#	0 => "Nombre de índece", 	1 => "Nombre de Presentación", 2 =>  "Nombre Corto",   3 =>  "Permalink",     4 =>  "Provincia",
#   5 =>  "Destino Turístico", 	6 =>  "Categoría",             7 =>  "Tipo",           8 =>  "Administrado",  9 =>  "Modalidad", 
#   10 =>  "Ubicado en",       11 =>  "Dirección",            12 =>  "Email",         13 =>  "Fax",          14 =>  "Teléfono",
#   15 =>  "Web",			   16 =>  "Latitud"               17 =>  "Longitud",      18 =>  "Google map",   19 =>  "Construido en",  
#   20 =>  "Estructura",       21 =>  "No de Habitaciones",   22 =>  "Pisos",         23 =>  "Ascensores",   24 =>  "Se admiten niños?",  
#   25 =>  "Check-in",         26 =>  "Check-out",
#         }         
	for row in 1..last_row  
		if sheet[row,0]	    
		    index_name 			= sheet[row,0]				
		    name 				= if sheet[row,1] then sheet[row,1] else index_name end 
		    short_name          = if sheet[row,2] then sheet[row,2] else name end
		    permalink 			= if sheet[row,3] then sheet[row,3] else get_permalink(name.downcase.gsub(' ', '-')) end
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
			check_in 	        = sheet[row,25]	
			check_out   		= sheet[row,26]								
			
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
										    :chain => chain,	
										    :check_in => check_in,								    									
										    :check_out => check_out,								    									
											})																					
			hotel.hotel_name = hotel_name
			hotel.address = hotel_address    
			hotel.contact = hotel_contact
			hotel.save
			puts "... #{hotel_name.name} ..."
		end
	end         
                                
end
key = 0
path = sourses[key]
book = Spreadsheet.open path
book.worksheets
sheet = book.worksheet 0

if true #key == 0 
#{ 0 => "Destino", 			1 => "Cadena" 						2 =>"Nombre Hotel", 		3 =>"Nombre Habitación", 4 => "Tipo de propiedad", 
#  5 => "Confort", 			6 => "Plan alimenticio", 			7 => "Nivel de servicio", 	8 => "Ubicación", 		 9 => "Vista", 
# 10 => "Especiales", 	   11 => "Temporada", 				   12 => "F. Inicio", 		   13 => "F. Finalización",  14 => "Simple", 
# 15 => "Doble", 		   16 => "Triple", 					   17 => "CP", 				   18 => "MAP", 			 19 => "MAP (CHD)",  	20 => "AP", 	   21 => "Adulto (+13) adicional", 
# 22 => "1er CHD",		   23 => "2do CHD",  				   24 => "2-Adultos?(SI/NO)",  25 => "Bebé(0-2)",	 	 26 => "Max-Adultos", 	27 => "Max-Niños", 28 => "Excepciones", 
# 29 => "Margen (%)", 	   30 => "Penalidad", 				   31 => "Proveedor", 		   32 => "Propietario", 	 33 => "Prestatario",	34 => "Modalidad", 35 => "Dirección",
# 36 => "Municipio", 	   37 => "Email", 					   38 => "Fax", 			   39 => "Teléfono", 	     40 => "Web", 			41 => "Latitud",   42 => "Longitud",	43 => "Segmento Turístico", 
# 44 => "Categoría hotel", 45 => "Descripción", 			   46 => "Descripción de tarifa"}

	for row in 6..sheet.last_row	      
		if sheet[row,2]	
			hotel_name = HotelName.find_by_name(sheet[row,2]) 			
			if hotel_name
				hotel = hotel_name.hotel_info 	
			else 	
				continue 
		    end								
		    row_j = row + 1 
			while sheet[row_j, 2] and row_j <= last_row	
				room_name = sheet[row_j, 3] unless sheet[row_j, 3].blank?
				room = Room.create({:name => room_name})				
			end	
		end
	end
end

