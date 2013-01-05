class OcrHarvestsController < ApplicationController

	def new
		@ocr_harvest = OcrHarvest.new
	end
	
	def create
		@ocr_harvest = OcrHarvest.new(params[:ocr_harvest])
		if @ocr_harvest.save
			redirect_to @ocr_harvest
		else	
			render 'new'
		end
	end

	def show
		@ocr_harvest = OcrHarvest.find_by_id(params[:id])
		@out1 = @ocr_harvest.raw_text.gsub("<i>","*")
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
		@out13 = @out12.gsub("diat","that")
		@out14 = @out13.gsub("botde","bottle")
		@out15 = @out14.gsub("setde","settle")
		@out16 = @out15.gsub("modey","motley")
		@out17 = @out16.gsub("bom","born")
		@out18 = @out17.gsub("dian","than")
		@out19 = @out18.gsub("die","the")
		@out20 = @out19.gsub("diey","they")
		@out21 = @out20.gsub("widiout","without")
		@out22 = @out21.gsub("dieir","their")
		@out23 = @out22.gsub("fadiers","fathers")
		@out24 = @out23.gsub("comrnitment","commitment")
		@out25 = @out24.gsub("wiuh","with")
		@out26 = @out25.gsub("leam","learn")
		@out27 = @out26.gsub("modier","mother")
		@out28 = @out27.gsub("litde","little")
		@out29 = @out28.gsub("dierapeutic","therapeutic")
		@out30 = @out29.gsub("widi","with")
		@out31 = @out30.gsub("trv","try")
		@out32 = @out31.gsub(" aii ","an")
		@out33 = @out32.gsub(" ot "," of ")
		@out34 = @out33.gsub("wiU","will")
		@out35 = @out34.gsub("rrom","from")
		@out36 = @out35.gsub("lert","left")
		@out37 = @out36.gsub("trudi","truth")
		@out38 = @out37.gsub("faidi","faith")
		@out39 = @out38.gsub(" vears "," years ")
		@out40 = @out39.gsub("gende","gentle")
		@out41 = @out40.gsub("brighdy","brightly")
		@out42 = @out41.gsub("prerty","pretty")
		@out43 = @out42.gsub("thoughtftil","thoughtful")
		@out44 = @out43.gsub("coundess","countless")
		@out45 = @out44.gsub("nodiing","nothing")
		@out46 = @out45.gsub("bothes","bodies")
		@out47 = @out46.gsub("stuthes","studies")
		@out48 = @out47.gsub("comethan","comedian")
		@out49 = @out48.gsub("thed","died")
		@out50 = @out49.gsub("botes","bottles")
		@out50 = @out49.gsub("\)&#39;","y")
		@out51 = @out50.gsub("</span></div>","</span></div><br>")
		@out52 = @out51.gsub(" |","")
		@out53 = @out52.gsub(/<span style=\"font-size:[0-9][0-9].[0-9][0-9]pt;line-height:[0-9][0-9].[0-9][0-9]pt;float:left;text-indent:0.00pt\">/,"\*\*\*<br>")		 			  
	end

end
