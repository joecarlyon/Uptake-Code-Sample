require_relative '../spec_helper'

context 'Uptake Automation Interview' do

  describe 'Home page' do

    before :each do
      load_uptake
    end

    it 'loads correctly' do
      landing = LandingPage.new
      expect(get_page_title).to eql('Home | Uptake')
      expect(landing.splash_displayed?).to be true
    end

    it 'can navigate to the subsequent approach page' do
      LandingPage.new.click_approach_link
      approach = ApproachPage.new
      expect(get_page_title).to eql('Approach | Uptake')
      expect(approach.get_number_of_differentiators).to eql 5
      approach.click_each_differentiator
      expect(approach.get_paragraph_text_for_last_differentiator).to include("We've instituted a new way of building software.")
    end
  end
end