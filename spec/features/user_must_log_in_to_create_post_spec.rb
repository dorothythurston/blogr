require "rails_helper"

feature "User must log in to create post" do
  scenario "succcessfully" do
    user = create(:user)
    visit root_path(as: user)

    expect(page).to  have_content("Add post")
  end

  scenario "unsuccessfully" do
    visit root_path

    expect(page).not_to  have_content("Add post")
  end
end
