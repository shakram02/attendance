class AttendeesController < ApplicationController
  before_action :set_attendee, except: [:index, :create]

  def index
    @attendees = Attendee.all
    render json: @attendees
  end

  def show
    render json: @attendee
  end

  def create
    attendee = Attendee.new(attendee_params)
    if attendee.save
      render json: attendee
    else
      render status: :bad_request
    end
  end

  def update
    if @attendee.update(attendee_params)
      render json: @attendee
    else
      render status: :bad_request
    end
  end

  def destroy
    @attendee.destroy
    render status: :ok
  end

  private

  def set_attendee
    @attendee = Attendee.find(params[:id])
  end

  def attendee_params
    params.require(:attendee).permit(:name)
  end
end
