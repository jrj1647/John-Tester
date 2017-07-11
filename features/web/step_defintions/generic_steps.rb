Given(/^I go to the home page$/) do
  GenericStepsPage.new(self).go_to_homepage
end

And(/^I log in$/) do
  GenericStepsPage.new(self).log_in
end

Then(/^I can send a message to my Twitter account$/) do
  GenericStepsPage.new(self).sendTwitterMessage
end

And(/^I can see incoming messages to retweet$/) do
  GenericStepsPage.new(self).seeIncomingTweets
end

And(/^I can schedule a tweet for a future date$/) do
  GenericStepsPage.new(self).setFutureTweet
end
