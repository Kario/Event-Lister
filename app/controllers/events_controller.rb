class EventsController < ApplicationController

	before_filter :collect_ip_address, :only => :create	

	def index
		@events = Event.all
	end

	def show
		puts "+++++++++++++++++ #{params}"
		@event = Event.find(params[:id])
	end

	def new
		@event = Event.new
	end
	
	
	
	def create
	  @event = Event.new(params[:event])
		if event = Event.save(params[:event])
			flash[:success] = "Profile created successfully"
			redirect_to event_path(event.id)
			redirect_to(:action => 'index')
		else
			flash[:error] = "Error creating profile"
			redirect_to(:action => 'new')
		end
	end

end
