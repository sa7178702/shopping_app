class GendersController < ApplicationController

	def new 
		@gender = Gender.new
	end

	def create
		@gender = Gender.new(gen_params)
		if @gender.save
			redirect_to dashboard_index_path
		else
			render "new"
		end
	end

	def show
		@gender = Gender.find_by(params[:id])
	end

	def edit
	@gender = Gender.find_by(params[:id])
    end
	
	def update
			@gender = Gender.find_by(params[:id])
		if @gender.update(gen_params)
			redirect_to dashboard_index_path
		else
			render "edit"
		end
	end


	def destroy
		@gender = Gender.find_by(params[:id])
		if @gender.destroy
			redirect_to dashboard_index_path
		end
	end

 private

	def gen_params
		params.require(:gender).permit(:name,:gender_image)
	end


end
