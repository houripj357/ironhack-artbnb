class ArtistsController < ApplicationController
	before_action :authenticate_artist!, only: :show

	def home
	end

  	def index
    	@artists = Artist.all
  	end

  	def new
  		@artist = Artist.new
  	end

	def show
		@artist = Artist.find(params[:id])
		render 'artists/show'
	end

  	def create
    	@artist = Artist.new(artist_params)
    		if artist.save
      			redirect_to '/'
    		else
      	redirect_to '/artists/sign_up'
      	end
    end

    def edit
		@artist = Artist.find(params[:id])
	end

	def destroy
    	@artist = Artist.find(params[:id])
    	@artist.destroy
    	redirect_to artists_path
	end
     

  private

  def artist_params
    params.require(:artist).permit(
      :email,
      :password, :password_confirmation
    )
  end

end
