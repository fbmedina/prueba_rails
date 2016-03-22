class PagesController < ApplicationController
  def batman
  end

  def superman
  end

  def batman_vs_superman
  end

  def save_superheroe
    if params[:heroe].present? && params[:email].present?
      Vote.create(
          heroe: params[:heroe],
          email: params[:email]
          )

      redirect_to root_path, notice: "Voto recibido"

    else
      flash[:alert] = "Complete todos los datos"
      render :batman_vs_superman
    end
  end
end
