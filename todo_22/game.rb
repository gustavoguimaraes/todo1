require 'bundler'
Bundler.require

module Game 
  class Is_Birthday_App < Sinatra::Application
  
 	  get '/' do
		  @birthday = Time.new(2014, 9, 19, 0, 0, 0, "-05:00")
			@now = Time.new


      if @birthday == @now
				@result = "Happy birthday!!!"
      
      else
				@result = "NO"
        @countdown_days = "There is still #{((((@birthday.to_i - @now.to_i)/60)/60)/24)+1} days left to my birthday" 
        @countdown_hours = "Or #{((@birthday.to_i - @now.to_i)/60)/60} hours" 
        @countdown_minutes = "Or even #{((@birthday.to_i - @now.to_i)/60)} minutes "
        @countdown_seconds = "But more precisely #{(@birthday.to_i - @now.to_i)} seconds to my birthday"

        
      end	
		  erb :index
    end

  end
end