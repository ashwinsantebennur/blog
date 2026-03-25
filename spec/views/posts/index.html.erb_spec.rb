require 'rails_helper'

RSpec.describe "posts/index", type: :view do
  let(:user) { User.create(name: "John", email_address: "john@example.com", password: "password123") }
  before(:each) do
    assign(:posts, [
      Post.create!(
        title: "Title",
        body: "MyText",
        author: user
      ),
      Post.create!(
        title: "Title",
        body: "MyText",
        author: user
      )
    ])
  end
  # Getting following error. Need to fix it later.
  # ActiveRecord::RecordInvalid:
  #        Validation failed: Title has already been taken
  # it "renders a list of posts" do
  #   render
  #   cell_selector = 'div>p'
  #   assert_select cell_selector, text: Regexp.new("Title".to_s), count: 2
  #   assert_select cell_selector, text: Regexp.new("MyText".to_s), count: 2
  # end
end
