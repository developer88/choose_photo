require 'httparty'
class Photo

  def self.get
    response = HTTParty.get('http://pv.pop.umn.edu/images/')
    result = {status: :error, items: ""}
    if response.code.to_s == "200"
      result[:status] = :success
      result[:photos] = JSON.parse(response.body)["data"].map{|i| "'#{i}'"}.join(",")
    end
    result
  end

end