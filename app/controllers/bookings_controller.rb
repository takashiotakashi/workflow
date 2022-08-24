class BookingsController < ApplicationController

  def index
    @work_space = WorkSpace.find(params[:work_space_id])
    @bookings = policy_scope(Booking).where(work_space: @work_space)
  end

  def show
    @booking = Booking.find(params[:id])
    authorize @booking
  end

  def new
    @work_space = WorkSpace.find(params[:work_space_id])
    @booking = Booking.new
    authorize @booking
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.work_space = WorkSpace.find(params[:work_space_id])

    authorize @booking
    if @booking.save
      redirect_to booking_path(@booking), notice: "Booking was successfully created."
    else
      #resolver se o new é com aspas ou simbolo
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    set_booking
    authorize @booking
  end

  def update
    authorize @booking
    set_booking
    @booking.update(booking_params)

    if @booking.save
      redirect_to booking_path(@booking), notice: "Booking was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :amount_due)
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end
end
