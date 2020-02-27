class AmiibosController < ApplicationController
  def index
  	@search_term = params[:looking_for] || "all"

  	case @search_term
		when "all"
			@result = Amiibo.all
		else
			@result = Amiibo.search(@search_term)
	end

	@amiibos = JSON.parse(@result.body || "{}")["amiibo"]
  end

  def show
  	
    @amiibo_name = params[:id]
	@details = Amiibo.search(@amiibo_name)['amiibo']
	@details_1 = @details[0]

  end
end
