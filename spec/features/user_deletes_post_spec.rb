require "rails_helper"

feature "User deletes post" do
  scenario "successfully" do
    user = create(:user)
    post = create(
      :post,
      title: "Original title",
      tagline: "Original tagline",
      content: "Original content",
      user: user
    )
    visit root_path(as: user)
    click_on "Delete post"

    expect(page).not_to have_css ".posts li", text: "Original title"
    expect(page).not_to have_css ".posts li", text: "Original tagline"
    expect(page).not_to have_css ".posts li", text: "Original content"
  end
end
