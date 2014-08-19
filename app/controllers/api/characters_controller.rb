module Api

	class CharactersController < ApplicationController
		def index
			# raise params
			@work = Work.find_by_workid params[:work_id]
			@characters = @work.characters
			render json: @characters.order(speech_count: :desc).to_json
		end
	end

end