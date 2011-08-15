class EventController < ApplicationController

def new;end

def create
	render :text => %{
	<p>Event Name: #{ params[:event_name] }</p>
	<p>Event Date: #{ params[:date] }</p>
	<p>Event Location: #{ params[:location] } </p>
	<p>Event Time:	#{ params[:time] } </p>
	<p>Person n Charge: #{ params[:pInCharge] } </p>
	}
end

end
