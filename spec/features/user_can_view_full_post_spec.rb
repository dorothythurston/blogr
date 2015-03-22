require 'rails_helper' 

feature "User can view full post page" do
  scenario "sucessfully" do
    user = create(:user)
    post = create(
      :post,
      title: "Original title",
      tagline: "Original tagline",
      content: "Original content",
      user: user
    )
    visit root_path

    click_on "Original title"

    expect(current_path).to eq(post_path(post))
  end
end
