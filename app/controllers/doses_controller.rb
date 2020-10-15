class DosesController < ApplicationController
  def new
    @dose = Dose.new
  end

  def create
    @dose = Dose.new(dose_params)

    if @dose.save
      redirect_to @dose, notice: 'dose was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /restaurants/1
  def update
    if @dose.update(dose_params)
      redirect_to @dose, notice: 'dose was successfully updated.'
    else
      render :edit
    end
  end
end
