class EventController < ApplicationController

	before_filter :collect_ip_address, :only => :create	

	def index
		@events = Event.all
	end

	def show
		@event = Event.where(:id => params[:id]).first
	end

	def new
		@event = Event.new
	end
	
	def create
		if event = Event.create(params:[:event])
			flash[:success] = "Profile created successfully"
			redirect_to event_path(event.id)
		else
			flash[:error] = "Error creating profile"
			redirect_to :back
		end
	end

end
