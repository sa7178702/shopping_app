class ClothesController < ApplicationController
	
	before_action :find_gender

	def new
		@clothe = @gender.clothes.new
	end

	def create
		@clothe = Clothe.new(clothe_params)
		@clothe.gender_id = @gender.id
		if @clothe.save
			redirect_to gender_path(@gender)
		else
			render "new"
		end
	end

	def show
      @clothe = Clothe.find_by(params[:gender_id])
	end


	def edit
      @clothe = Clothe.find_by(id: params[:gender_id])
	end

	def update
		@clothe = Clothe.find_by(id: params[:gender_id])
		if @clothe.update(clothe_params)
			redirect_to  gender_path(@gender)
		else
			render "edit"
		end
	end


	def destroy
		@clothe = Clothe.find_by(id: params[:id])
		if @clothe.destroy
			redirect_to genders_path(@gender)
		end
	end


	private
	def clothe_params
		params.require(:clothe).permit(:name, :size, :price, :quantity, :brand, :gender_image)
	end

	def find_gender
		@gender = Gender.find_by(params[:gender_id])
	end
end




