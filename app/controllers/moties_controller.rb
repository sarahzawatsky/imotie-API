class MotiesController < ApplicationController
  before_action :set_moty, only: [:show, :update, :destroy]

  # GET /moties
  def index
    @moties = Motie.all

    render json: @moties
  end

  # GET /moties/1
  def show
    render json: @moty
  end

  # POST /moties
  def create
    @moty = Motie.new(moty_params)

    if @moty.save
      render json: @moty, status: :created, location: @moty
    else
      render json: @moty.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /moties/1
  def update
    if @moty.update(moty_params)
      render json: @moty
    else
      render json: @moty.errors, status: :unprocessable_entity
    end
  end

  # DELETE /moties/1
  def destroy
    @moty.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_moty
      @moty = Motie.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def moty_params
      params.require(:moty).permit(:emotion, :intensity, :cause, :appearance, :solution)
    end
end
