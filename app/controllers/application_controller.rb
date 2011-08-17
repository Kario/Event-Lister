class ApplicationController < ActionController::Base
  protect_from_forgery

	def collect_ip_address
		params.merge!( :ip_addess => request.remote_ip )
	end
end
