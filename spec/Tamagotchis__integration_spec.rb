require("capybara/rspec")
require("./app")
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe("creates a named tamagotchi", { :type => :feature }) do
  it("creates a tamagotchi") do
    visit("/")
    fill_in("name", :with => "bob")
    example = Tamagotchi.new({ :name => "bob", :food_level => 10, :sleep_level => 10, :activity_level => 10 })
   example.save()
    save_and_open_page 
    click_on("Set their name")
    expect(page).to have_content("bob")
    save_and_open_page
  end
end

