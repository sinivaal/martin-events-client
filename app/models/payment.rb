#require 'net/http'
class Payment 


  def request
      uri = URI('http://vso17.cariba.ee/payments.json')
      http = Net::HTTP.new(uri.host, uri.port)
      req = Net::HTTP::Post.new(uri.path, 'Content-Type' => 'application/json')
      req.body = request_body.to_json
      res = http.request(req)
      puts "response #{res.body}"
  rescue => e
      puts "failed #{e}"
  end


  def token
    Digest::MD5.hexdigest('martin@cariba.ee')
  end

  def request_body
    {
      "token": token,
      "sender_account": "raimond-hendrik.nutt@khk.ee",
      "recipient_name": "Raimond H. Nutt",
      "recipient_account": "asd",
      "description": "A",
      "amount": "123"
    }
  end
end