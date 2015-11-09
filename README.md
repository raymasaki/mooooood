# Mooooood

http://mooooood.herokuapp.com/

Mooooood is a generative infographic built with Ruby on Rails. The idea was to create a visualization of users' feelings in an ambient way.  

### Technologies Used
- Ruby on Rails: For backend and data-fetching
- jQuery: For most of the data plotting
- Velocity.js: Animation framework
- WOW.js: Library for scroll-triggered animations

### Approach
- Started by going straight to UX and wireframes
- Once I settled on the overall layout and interaction, I made ERD diagrams
- Built the backend in Rails
- Once all the endpoints were set up worked on the front-end with jQuery
- Added additional front-end touches with Velocity and WOW

### Unsolved Problems
- WOW is really unpredictable, sometimes it works, sometimes it doesn't (caching problem?)
- I didn't add authentication and validation
- Probably should've added flashes to make the UX more clear
- Initially I had a really ambitious idea for using Stellar.js and having parallaxing datapoints
- Would've liked to have infinite scrolling (AJAX loading)

### Wireframes

https://github.com/raymasaki/mooooood/blob/master/Mooooood_wireframe.pdf

### User Stories
- As a GUEST I want to: Sign up for an account
- As a GUEST I want to: Log in
- As a GUEST I want to: View the about page
- As a GUEST I want to: View the public board
- As a MEMBER I want to: Log out
- As a MEMBER I want to: View the public board
- As a MEMBER I want to: Post mood
- As a MEMBER I want to: View the about page
- As a MEMBER I want to: View the member's only board
- As a MEMBER I want to: View my profile
- As a MEMBER I want to: Delete my account
