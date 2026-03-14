require 'rails_helper'

RSpec.describe Post, type: :model do
  # Example of a valid post
  it "is valid with valid attributes" do
    post = Post.new(title: "Anything", body: "Something")
    expect(post).to be_valid
  end

  # Example of an invalid post (missing title)
  it "is not valid without a title" do
    post = Post.new(body: "Something")
    expect(post).to_not be_valid
  end

  # Example of an invalid post (missing body)
  it "is not valid without a body" do
    post = Post.new(title: "Something")
    expect(post).to_not be_valid
  end

  # Check for uniqueness of title
  subject { described_class.new(title: "An existing title", body: "Some content") }
  
  context 'when the title is not unique' do
    before { described_class.create!(title: "An existing title", body: "Other content") }
    it 'is invalid as the title is not unique' do
      expect(subject).to be_invalid
      expect(subject.errors[:title]).to include("has already been taken")
    end
  end

  context 'when the title is unique' do
    before { described_class.create!(title: "A different title", body: "Other content") }
    it 'is valid as the title is unique' do
      expect(subject).to be_valid
    end
  end
end
