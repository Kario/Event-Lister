class Event < ActiveRecord::Base
	def event_details
		"#{ event_name } TESTING\n <br><br> #{ pInCharge }"
	end
end

