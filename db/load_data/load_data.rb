#!/usr/bin/ruby

path = "#{Rails.root}/db/load_data/hotels.xls"
puts path 
book = Spreadsheet.open path

book.worksheets
sheet = book.worksheet 0

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
	    puts "... Hotel #{hotel_name.name} ..."
	    puts "... Hotel #{hotel_name.name} ..."
	end
end



