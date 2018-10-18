class ApiController < ApplicationController
    	skip_before_action :authenticate_user!
  def about

  	render json:{
  		name: "Raimond",
  		time: Time.zone.now.strftime('%H:%M'),
  		date: Time.now.strftime('%Y-%m-%d'),
  		fruits: ["banaan", "apelsin", "arbuus"]

  	}
  end
end
