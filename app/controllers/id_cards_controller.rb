class IdCardsController < ApplicationController
  before_action :set_id_card, only: [:show, :update, :destroy]

  # GET /id_cards
  def index
    @id_cards = IdCard.all

    render json: @id_cards
  end

  # GET /id_cards/1
  def show
    render json: @id_card
  end

  # POST /id_cards
  def create
    @id_card = IdCard.new(id_card_params)

    if @id_card.save
      render json: @id_card, status: :created, location: @id_card
    else
      render json: @id_card.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /id_cards/1
  def update
    if @id_card.update(id_card_params)
      render json: @id_card
    else
      render json: @id_card.errors, status: :unprocessable_entity
    end
  end

  # DELETE /id_cards/1
  def destroy
    @id_card.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_id_card
      @id_card = IdCard.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def id_card_params
      params.require(:id_card).permit(:name, :department_name, :roll_number, :session)
    end
end
