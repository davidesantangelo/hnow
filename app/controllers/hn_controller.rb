# app/controllers/main_controller.rb
class HnController < ApplicationController
	include RubyHackernews
	
	def index
		session[:filter] = params[:filter]
	end

	def loadentries
		@entries =
		  case session[:filter]
		  when "newest" then Entry.newest
		  when "questions" then Entry.questions
		  when "shows" then Entry.shows 
		  when "jobs" then Entry.jobs
		  else Entry.all
		  end
		@first_entry = @entries.first
	end
end