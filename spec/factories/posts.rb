FactoryGirl.define do
  sequence :points do |p|
    p
  end

  factory :post do
    link "www.hackernews.com"
    title "This is a News Article"
    points
  end
end

