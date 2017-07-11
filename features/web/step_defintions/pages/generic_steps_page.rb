class GenericStepsPage

  include Page

  def go_to_homepage
    browser.goto "app.sproutsocial.com"
  end

  def log_in
    browser.text_field(:id => "signin-email").when_present.send_keys "qatests+homework@sproutsocial.com"
    browser.text_field(:id => "signin-pw").when_present.send_keys "N2FzEeHCvTUX,djQ;NQg"
    browser.button(:text => "Log In").when_present.click
  end

  def sendTwitterMessage
    browser.span(:text => "Compose").when_present.visible?
    browser.span(:text => "Compose").when_present.click
    browser.div(:class => "ui-dialog ui-widget ui-widget-content ui-corner-all ui-front compose-dialog ui-draggable").text_field(:id => /ui-sproutedit-(.*)-editor/).when_present.send_keys "This is a test message!"
    browser.button(:text => "Send").when_present.click
    sleep 5 #need to check for the tweet message to dissapear
  end

  def seeIncomingTweets
    browser.div(:class => "Message-menu").when_present.click
    browser.button(:text => "Retweet").when_present.click
  end

  def setFutureTweet
    sleep 5
    browser.span(:text => "Compose").when_present.visible?
    browser.span(:text => "Compose").when_present.click
    browser.div(:class => "ui-dialog ui-widget ui-widget-content ui-corner-all ui-front compose-dialog ui-draggable").text_field(:id => /ui-sproutedit-(.*)-editor/).when_present.send_keys "This is a test message!"
    browser.button(:text => "Send Later").when_present.click
    browser.link(:text => "28").when_present.click
    browser.button(:text => "Schedule").when_present.click
    browser.button(:text => "Publishing").when_present.click
    browser.span(:text => "No Messages Found").when_present.visible?
  end
end
