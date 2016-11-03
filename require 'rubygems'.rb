require 'rubygems'
require 'nokogiri' # gem install nokogiri
# Insert file name here
string = "C:/Users/moconnor/Desktop/newest_Detor_F.kml"
@doc = Nokogiri::XML(File.open(string))
puts "Please enter a file name"
name = gets
name = name.chomp + ".csv"
index = 0
output = File.open( "C:/Users/moconnor/Desktop/#{name}","w" )
@doc.css('coordinates').each do |coordinates|
  coordinates.text.split(' ').each do |coordinate|
    (lat,lon,elevation) = coordinate.split(',')
    output << "#{index},#{lat},#{lon}\n"
    index = index + 1
  end
end
output.close