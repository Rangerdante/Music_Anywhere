class SongsController < ApplicationController	before_filter :authenticate, :only => [:create, :destroy]	before_filter :authorized_user, :only => [:destroy]		def create		@song = current_user.songs.build(params[:song])		if @song.save			flash[:success] = "Song added to library."			redirect_to root_path		else			render 'pages/home'		end	end		def destroy		@song = Song.find(params[:id])		redirect_to root_path unless current_user?(@song.user)	endend