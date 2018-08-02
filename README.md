# README

**Iteration #3: List of Auctions** 

Tasks

* Add home page with list of all active auctions; each item should has smaller version of item's image and item's name
* Auctions should be sorted by time until closing in ascending order (auctions that close earlier must be at the
top)
* Add ability to hide auctions of current user (by default they should be hidden). 
* Details page should show detailed information about selected auction:
`name if item, 
image of item,  detailed description, time until closing`
* Add page with auction details to "My Auctions" sections; this page should show status of the auction (started or not)

**Iteration #3: Place Bids** 

Tasks

* Add Bid model; it should be related to User and Auction models and has "price" attribute to store bid price 
* Add form on auction's details page to place bids
* Price of every new bid should be higher than previous price: add validaition
* Show list of bids ascending from latest to the first on "My Auctions > Details" page
* Users cannot place bids in their auctions; if current user is owner of the auction: hide bid form and show link to "My Auctions > Details"
* add validations to Bid model
* Write unit and functional tests
