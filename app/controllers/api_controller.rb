class ApiController < ApplicationController
    	skip_before_action :authenticate_user!
  def about
  	render json:{
  		name: "Raimond",
  		time: Time.now.strftime('%H:%M'),
  		date: Time.now.strftime('%Y-%m-%d'),
  		time2: Time.now.getlocal('-08:00'),
  		fruits: ["banaan", "apelsin", "arbuus"]

  	}
  end
end
