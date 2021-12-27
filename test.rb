require 'open-uri'
require 'net/http'
require 'json'

url = "https://www.ruby-lang.org/"
uri = URI.parse(url)
response = Net::HTTP.get_response(uri)
puts response.body


begin
  file = File.open("/home/ubuntu/Downloads/newfile.txt", "w")
  file.write(response.body) 
rescue IOError => e
  puts e
ensure
  file.close unless file.nil?
end

