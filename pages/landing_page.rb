require_relative 'base_page'

# Every page object should inherit from BasePage in one way or another
class LandingPage < BasePage

  SPLASH_VIDEO = {id: 'splashVideo'}
  # Having an ID or class would be better than using a hardcoded URL in a CSS Selector
  APPROACH_LINK = {css: "a[href$='approach/']"}
  PLATFORM_LINK = {css: "a[href$='platform/']"}
  SOLUTIONS_LINK = {css: "a[href$='solutions/']"}

  # Determine whether or not the splash video is displayed on the page
  #
  def splash_displayed?
    displayed? SPLASH_VIDEO
  end

  # Clicks the Approach link in the header
  # TODO: As more tests are created, break out all of the HEADER and FOOTER into their own page objects
  #
  def click_approach_link
    click APPROACH_LINK
  end

end