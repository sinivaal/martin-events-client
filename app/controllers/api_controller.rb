class ApiController < ApplicationController
    	skip_before_action :authenticate_user!
  def about
  	render json:{
  		name: "test",
  		time: Time.now.strftime('%H:%M'),
  		date: Time.now.strftime('%Y-%m-%d'),
  		fruits: ["banaan", "apelsin", "arbuus"]

  	}
  end
end
