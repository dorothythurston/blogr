FactoryGirl.define do
  factory :post do
    user
    title "Title"
    tagline "Tagline"
    content "Content"
  end
end
