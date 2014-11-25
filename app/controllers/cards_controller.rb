class CardsController < ApplicationController

	def show 
	 	@deck = find_deck
	 	# @cards = Card.find(params[:id])
	 	@cards = @deck.cards.find(params[:id])
	 	# @cards = @deck.first
	end

	def new 
		@deck = find_deck
		@card = @deck.cards.new
	end
	def create
		@deck = find_deck
		@card = @deck.cards.new(card_params)
		@card.save
		redirect_to @deck
	end

	def destroy
		@deck = find_deck
		@card = find_card(@deck)
		@card.destroy
		redirect_to deck_path(@deck.id)		
	end

	def edit
		@deck = find_deck
		@card = @deck.cards.find(params[:id])
	end

	def  update
		@deck = find_deck
		@card = @deck.cards.find(params[:id])
		@card.update(card_params)
		redirect_to deck
		# deck_path(@deck.id)
	end

	private 

	def find_deck
		Deck.find(params[:deck_id])
	end
	def find_card deck 
		deck.cards.find(params[:id])
	end

	# def create
	# 	@deck = Deck.new(deck_params)
	# 	@deck.save
	# 	redirect_to decks_path
	# end 

	# def edit 
	# 	@deck = Deck.find(params[:id])
	# end
	# def update
	# 	@deck = Deck.find(params[:id])
	# 	@deck.update_attributes(deck_params)
	# 	redirect_to @deck
 
	# end
	# def destroy
	# 	@deck = Deck.find(params[:id])
	# 	@deck.destroy
	# 	redirect_to decks_path
	# end
end
