class StaticPagesController < ApplicationController

	def home
		@harvest = Harvest.new(params[:harvest])
		@ocr_harvest = OcrHarvest.new(params[:harvest])
	end

	def tips
	end

end
