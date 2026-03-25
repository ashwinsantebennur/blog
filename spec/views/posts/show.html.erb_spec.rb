require 'rails_helper'

RSpec.describe "posts/show", type: :view do
  let(:user) { User.create(name: "John", email_address: "john@example.com", password: "password123") }
  let(:post) { Post.create(title: "Title", body: "MyText", author: user) }
  before(:each) do
    assign(:post, post)
    view.extend(Module.new do
      define_method(:current_user) { User.find_by(id: session[:user_id]) }
    end)
    allow(view).to receive(:current_user).and_return(user)
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
  end
end
