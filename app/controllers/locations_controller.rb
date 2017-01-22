class LocationsController < ApplicationController
  def index
    respond_to do |format|
      format.html { @locations1 = Location.all }
      format.json {
        render json: @locations = Location.where("
          lat > #{params[:swlat].to_f} AND
          lat < #{params[:nelat].to_f} AND
          lng > #{params[:swlng].to_f} AND
          lng < #{params[:nelng].to_f}
        ")}
    end
  end
  def create
    @location = Location.create(
      params.require(:location).permit(:lat, :lng, :notes, :icon).to_h.merge(user: current_user)
    )
    respond_to do |format|
      format.html {}
      format.json {render json: @location}
    end
  end
end
