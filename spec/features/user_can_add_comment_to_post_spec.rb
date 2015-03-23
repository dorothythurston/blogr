require 'rails_helper'

feature "User can add comment to post" do
  scenario "sucessfully" do
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
    fill_in "Body", with: "Great Idea!"
    click_on "Comment"

    expect(page).to have_content("Great Idea!")
  end
end
