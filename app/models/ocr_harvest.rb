class OcrHarvest < ActiveRecord::Base
  attr_accessible :output_text, :raw_text
end
