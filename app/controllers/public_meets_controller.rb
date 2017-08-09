class PublicMeetsController < ApplicationController
  layout 'public'

  def new
    @meet = Meet.new
  end
  def create_meet
    @meet = Meet.new name: params[:name], meeting: params[:meeting], subject: params[:subject]
    if @meet.save
      redirect_to public_meets_new_path, notice: "La cita ha sido solicitada y enviada al administrador, Le contactaremos pronto..."
    end
  end
end
