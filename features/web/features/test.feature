Feature: Navigate site
As Sprout Social
I want to test basic functions of the test Twitter account

@web
Scenario: Check links on the homepage
  Given I go to the home page
  And I log in
  Then I can send a message to my Twitter account
  And I can see incoming messages to retweet
  And I can schedule a tweet for a future date
