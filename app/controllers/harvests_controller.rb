class HarvestsController < ApplicationController

	def new
		@harvest = Harvest.new
	end
	
	def create
		@harvest = Harvest.new(params[:harvest])
		if @harvest.save
			redirect_to @harvest
		else	
			render 'new'
		end
	end

	def show
		@harvest = Harvest.find_by_id(params[:id])
		@out1 = @harvest.raw_text.gsub("<i>","*")
		@out2 = @out1.gsub("</i>","*")
		@out3 = @out2.gsub("<b>","**")
		@out4 = @out3.gsub("</b>","**")
		@out5 = @out4.gsub("</em>","*")
		@out6 = @out5.gsub("<em>","*")
		@out7 = @out6.gsub("<strong>","**")
		@out8 = @out7.gsub("</strong>","**")
		@out9 = @out8.gsub("<I>","*")
		@out10 = @out9.gsub("</I>","*")
		@out11 = @out10.gsub("<B>","**")
		@out12 = @out11.gsub("</B>","**")									
	end
end
