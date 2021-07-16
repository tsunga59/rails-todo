class CardController < ApplicationController

    # before_action: :set_card, only: %i(edit update destroy)

    def new
        @card = Card.new
        @list = List.find(params[:list_id])
    end

    def create
        @card = Card.new(card_params)
        if @card.save
            redirect_to :root
        else
            render action: :new
        end
    end

    private

    def card_params
        params.require(:card).permit(:title, :memo, :list_id)
    end
    
end
