require 'rails_helper'

RSpec.describe "posts/new", type: :view do
  let(:user) { User.create(name: "John", email_address: "john@example.com", password: "password123") }
  before(:each) do
    assign(:post, Post.new(
      title: "MyString",
      body: "MyText",
      author: user
    ))
  end

  it "renders new post form" do
    render

    assert_select "form[action=?][method=?]", posts_path, "post" do
      assert_select "input[name=?]", "post[title]"

      assert_select "textarea[name=?]", "post[body]"
    end
  end
end
