module Api
	class WorksController < ApplicationController

		def index
			@works = Work.all
			render json: @works.order(:year).to_json(except: [:id, :created_at, :updated_at])
		end

		def show
			@work = Work.find_by_workid params[:id]
			render json: @work.to_json
		end

	end
end
