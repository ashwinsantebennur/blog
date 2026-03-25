require 'rails_helper'

RSpec.describe "posts/edit", type: :view do
  let(:user) { User.create(name: "John", email_address: "john@example.com", password: "password123") }
  let(:post) {
    Post.create!(
      title: "MyString",
      body: "MyText",
      author: user
    )
  }

  before(:each) do
    assign(:post, post)
  end

  it "renders the edit post form" do
    render

    assert_select "form[action=?][method=?]", post_path(post), "post" do
      assert_select "input[name=?]", "post[title]"

      assert_select "textarea[name=?]", "post[body]"
    end
  end
end
