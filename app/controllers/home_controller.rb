class HomeController < ApplicationController
  skip_before_filter :authenticate

	def show
	end
	
end