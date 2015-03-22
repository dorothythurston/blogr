require "rails_helper"

feature "User deletes post" do
  scenario "successfully" do
    user = create(:user)
    post = create(
      :post,
      title: "Title",
      tagline: "Tagline",
      content: "Content",
      user: user
    )
    visit root_path(as: user)
    click_on "Title"
    click_on "Delete post"

    expect(page).not_to have_css ".posts li", text: "Title"
    expect(page).not_to have_css ".posts li", text: "Tagline"
    expect(page).not_to have_css ".posts li", text: "Content"
  end
end
