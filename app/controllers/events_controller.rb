class EventsController < ApplicationController
	before_action :set_event, :only => [ :show, :edit, :update, :destroy ]
	
	def index
		# @events = Event.all	
		@events = Event.page(params[:page]).per(5)
		  respond_to do |format|
			format.html # index.html.erb
			format.xml { render :xml => @events.to_xml }
			format.json { render :json => @events.to_json }
			format.atom { @feed_title = "My event list" } # index.atom.builder
		  end
	end

	def new
		@event = Event.new
	end
	
	def show
		# @event = Event.find(params[:id])
		@page_title = @event.name
	end
	
	def create
		@event = Event.new(event_params)
		if @event.save
			redirect_to events_url
		else 
			render :action => :new
		end	
		flash[:notice] = "event was successfully created"
	end
	
	def edit
		# @event = Event.find(params[:id])
	end
	
	def update
		# @event = Event.find(params[:id])
		if @event.update(event_params)
			redirect_to event_url(@event)
		else 
			render :action => :edit
		end
	end
	
	def destroy
		# @event = Event.find(params[:id])
		@event.destroy
		redirect_to events_url
		flash[:alert] = "event was successfully deleted"
	end
	
	private
	
	def set_event
	  @event = Event.find(params[:id])
	end
	
	def event_params
		params.require(:event).permit(:name, :description)
	end
	
end
