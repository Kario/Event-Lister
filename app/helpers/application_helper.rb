module ApplicationHelper

	def display_params keys
		
	params.except(:controller, :action).keys.inject('') do |result, key|
				result << "<p>#{key.to_s.titleize}: #{ params[key] }</p>\n"
			end.html_safe
	end


end
