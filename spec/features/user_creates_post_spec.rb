require "rails_helper"

feature "User creates post" do
  scenario "successfully" do
    user = create(:user)
    visit root_path(as: user)

    click_on "Add post"
    fill_in "Title", with: "Title"
    fill_in "Tagline", with: "Tagline"
    fill_in "Content", with: "Content"
    click_on "Submit"

    expect(page).to  have_css ".posts li", text: "Title"
  end
end
