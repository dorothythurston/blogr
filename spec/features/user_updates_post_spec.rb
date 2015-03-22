require "rails_helper"

feature "User updates post" do
  scenario "sucessfully" do
    user = create(:user)
    post = create(
      :post,
      title: "Original title",
      tagline: "Original tagline",
      content: "Original content",
      user: user
    )

    visit root_path(as: user)
    click_on "Edit post"
    fill_in "Title", with: "New Title"
    fill_in "Tagline", with: "New Tagline"
    fill_in "Content", with: "New Content"
    click_on "Submit"

    expect(page).to have_css ".posts li", text: "New Title"
    expect(page).to have_css ".posts li", text: "New Tagline"
    expect(page).to have_css ".posts li", text: "New Content"
  end
end
