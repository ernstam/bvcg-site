require 'rails_helper'

  describe "Static pages" do
    describe "Home page" do
      it "should have the content 'BVCG Homepage'" do visit '/static pages/home'
      page.should have content('BVCG Homepage')
    end
  end
end
