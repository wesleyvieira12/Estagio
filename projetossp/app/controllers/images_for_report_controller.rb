class ImagesForReportController < ApplicationController
	def index
	  	@images = ImageReport.all
	  	@report = params[:devic]
	  	@report_int = @report.to_i
	  	@report_int
  	end
end
