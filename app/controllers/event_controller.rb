class EventController < ApplicationController

	before_filter :collect_ip_address, :only => :create	

	def new;end

	def create;end

end
