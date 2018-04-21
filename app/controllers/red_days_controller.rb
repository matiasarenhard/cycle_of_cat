class RedDaysController < ApplicationController
  before_action :set_red_day, only: [:show, :edit, :update, :destroy]

  # GET /red_days
  # GET /red_days.json
  def index
    @red_days = RedDay.all
  end

  # GET /red_days/1
  # GET /red_days/1.json
  def show
  end

  # GET /red_days/new
  def new
    @red_day = RedDay.new
  end

  # GET /red_days/1/edit
  def edit
  end

  # POST /red_days
  # POST /red_days.json
  def create
    @red_day = RedDay.new(red_day_params)

    respond_to do |format|
      if @red_day.save
        format.html { redirect_to @red_day, notice: 'Red day was successfully created.' }
        format.json { render :show, status: :created, location: @red_day }
      else
        format.html { render :new }
        format.json { render json: @red_day.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /red_days/1
  # PATCH/PUT /red_days/1.json
  def update
    respond_to do |format|
      if @red_day.update(red_day_params)
        format.html { redirect_to @red_day, notice: 'Red day was successfully updated.' }
        format.json { render :show, status: :ok, location: @red_day }
      else
        format.html { render :edit }
        format.json { render json: @red_day.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /red_days/1
  # DELETE /red_days/1.json
  def destroy
    @red_day.destroy
    respond_to do |format|
      format.html { redirect_to red_days_url, notice: 'Red day was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_red_day
      @red_day = RedDay.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def red_day_params
      params.require(:red_day).permit(:good_day)
    end
end
