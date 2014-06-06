class LibrariesController < ApplicationController
	before_action :set_library, only: [:show, :update, :delete]
	respond_to :json
	
	def index
		respond_with Library.all
	end	
	
	def show
		respond_with Library.find(params[:id])
	end
	
	def create
		respond_with Library.create(library_params)
	end
	
	def update
		respond_with @library.update(library_params)
	end
	
	def destroy
		respond_with @library.destroy
	end


	private
	def library_params
		params.require(:library).permit(:name, :author)
	end
	def set_library
		@library = library.find(params[:id])
	end
end
