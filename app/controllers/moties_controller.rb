# frozen_string_literal: true

class MotiesController < ProtectedController
  before_action :set_moty, only: %i[show update destroy]

  # GET /moties
  def index
    @moties = current_user.moties.all
    # @moties = current_user.Moty.all

    render json: @moties
  end

  # GET /moties/1
  def show
    render json: current_user.moties.find(params[:id])
  end

  # POST /moties
  def create
    @moty = current_user.moties.build(moty_params)
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

    head :no_content
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_moty
    @moty = current_user.moties.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def moty_params
    params.require(:moty).permit(:emotion, :intensity, :cause, :appearance, :solution)
  end
end
