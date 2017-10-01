class TagsController < ApplicationController
	def index
		@tags = Tag.all
	end

	def show
		@tag = Tag.find(params[:id])
	end

	def destroy
		#fail
		myId = params[:id]
		@tag = Tag.find(myId)
		#Tagging.all.each do |tagging|


		@tag.destroy

		flash.notice = "Tag '#{@tag.name}' Deleted!"
		redirect_to tags_path
	end
end
