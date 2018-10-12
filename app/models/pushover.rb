#require 'net/http'
class Pushover


  def request
      uri = URI('https://api.pushover.net/1/messages.json')
      https.use_ssl = true
      https = Net::HTTPS.new(uri.host, uri.port)
      req = Net::HTTP::Post.new(uri.path, 'Content-Type' => 'application/x-www-form-urlencoded')
      req.body = body
      res = https.request(req)
      puts "response #{res.body}"
  end


  def token
    ascar99bzwczgqdc6pyjqf2mu9ktoa
  end

  def user
  	ugkNm93VGrjJro4MsCvtDvLqFYEuuG
  end


  def body
    {
    "token": "ascar99bzwczgqdc6pyjqf2mu9ktoa",
    "user": "ugkNm93VGrjJro4MsCvtDvLqFYEuuG",
	"sound": "pushover"
    }
  end
end