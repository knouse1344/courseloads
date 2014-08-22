class MainController < ApplicationController
  def index
  	@pickuprequest = Pickuprequest.new
  end
end
