class StaticpagesController < ApplicationController

	def home
		@user = User.new
	end

	def about
	
	end

	def search
		if params[:search].blank?  
			redirect_to(root_path, alert: "Campo vuoto!") and return  
		else
			
			@parameter = params[:search].downcase.strip
			
			#inserzioni = Insertion.find('lower(title) like lower(?)', "%#{@parameter}%")
			#inserzioni = Insertion.find(:all, :conditions => ['title like ?', "%#{params[:search]}%"])
			
			@results = Insertion.all.where("lower(title) LIKE :search", search: "%#{@parameter}%") 
		end
	end
end



