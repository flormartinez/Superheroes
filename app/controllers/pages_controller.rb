class PagesController < ApplicationController
  skip_before_action :verify_authenticity_token

  def batman
  end

  def superman
  end

  def batman_vs_superman
  end

  def save_vote_superman
    Votesuperman.create(name: params[:name], email: params[:email])
    redirect_to pages_batman_vs_superman_path, notice: 'Tu voto ha sido registrado con exito!'
  end

  def save_vote_batman
    Votebatman.create(name: params[:name], email: params[:email])
    redirect_to pages_batman_vs_superman_path, notice: 'Tu voto ha sido registrado con exito!'
  end

end
