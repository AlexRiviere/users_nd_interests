lets try to make a check list for what to remember when getting started with a sinatra app

requirements: 

pages:
  - home (but it redirects to the user list)
  - user list (with links to each user's page)
  - each users' page (displays email, interests with comma between interests -view helper, a list with all OTHER users and links to their page, this is at the bottom)

the route to the homepage "/" should redirect to a page that lists all of the user's names (which are to be loaded from a YAML file)

add a layout to the app-- at the bottom of each page, display a message with totals 
  - there are 3 users with a total of 9 interests
  - this will be based on the content of the YAML file
  - use a helper method `count_interests` to total up the number
  - add a user to the yaml file to verify that it adds up 