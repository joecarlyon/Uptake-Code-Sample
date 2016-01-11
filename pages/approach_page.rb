require_relative 'base_page'

class ApproachPage < BasePage

  DIFFERENTIATORS_TITLES = {css: "#how div[class^='panel'][class$='item']"}
  DIFFERENTIATORS_PARAGRAPHS = {css: "#how div[class^='panel'][class$='item'] p"}

  # Click each differentiator on the page
  #
  def click_each_differentiator
    differentiators = find_elements DIFFERENTIATORS_TITLES
    differentiators.each do |d|
      d.click
    end
  end

  # Return the number of differentiators listed on the page (5 at the time of writing)
  #
  def get_number_of_differentiators
    find_elements(DIFFERENTIATORS_TITLES).size
  end

  # Return the text for the final differentiator listed on the page
  #
  def get_paragraph_text_for_last_differentiator
    elements = find_elements DIFFERENTIATORS_PARAGRAPHS
    get_attribute elements.last, "textContent"
  end

end