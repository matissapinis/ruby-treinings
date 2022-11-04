# MA: Automated test attempt [https://www.codewithjason.com/rails-testing-hello-world-using-rspec-capybara/]
require 'rails_helper'

RSpec.feature 'Metric', type: :feature do
	describe 'index page' do
    before do
      create(:response)
    end
    
    it 'shows the right content' do
        # This is where Capybara starts to come into the picture. "visit" is a
        # Capybara method. hello_world_index_path is just a Rails routing
        # helper method and has nothing to do with RSpec or Capybara.
        visit root_path
        expect(page).to have_content('Metric')
    end
  end
end