class SongsController < ApplicationController
  before_action :set_billboard
  before_action :set_song, only: [:show, :edit, :update, :destroy]

  def index
    @song = @billboard.songs.all
  end

  def show
  end

  def new
  end

  private

    def set_billboard
      @billboard = Billboard.find(params[:billboard_id])
    end

    def set_song
      @song = Song.find(params[:id])
    end

end
