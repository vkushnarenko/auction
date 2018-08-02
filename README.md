# README


**Iteration #4: Auction Closing** 

Tasks
* Add "finished_at" timestamp attribute to Auction model
* Add periodic job which closes auctions automatically
* User who placed the last bid for auction is the winner
* Bids cannot be placed for closed auctions: add validations
* Send confirmation email with details to the owner of the auction
* Send confirmation email with details to the winner of the auctions
* Allow the owner to close the auction ahead of time; in this case there is no winner Write unit and functional tests