# Sprout Social
Code Submission
========================

## Setup
You'll need ruby version 2.2.2 to run the automation.
You will need Chrome on your machine.
You will need homebrew on your machine.
1. Clone the repository `git clone https://github.com/jrj1647/John-Tester`
2. Install bundler if it's not on your machine `gem install bundler`
3. Run `bundle install`
4. Run `brew install chromedriver`
5. Add `usr/local/bin` to your PATH
6. Run the tests: `bundle exec -p production`

## Running the tests:

Each environment has a corresponding 'profile' defined in the [cucumber.yml](cucumber.yml) file.  To run the full suite against any of the environments, simply run the following command for the environment you want to test:

## Environment Profiles

| environment name | command |
|------------------|---------|
|production|`bundle exec cucumber -p production`|


Helpful Links:
==============
[General Watir Webdriver documentation](http://watirwebdriver.com/)
