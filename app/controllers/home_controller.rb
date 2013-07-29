class HomeController < ApplicationController
  def index
  end
  def work 
  	respond_to do |f|
  		f.html
  		f.js
  	end
  end
end
