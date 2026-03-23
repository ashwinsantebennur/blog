require 'rails_helper'

RSpec.describe User, type: :model do
  # Setup a valid user for testing
  subject {
    User.new(
      name: "Test User",
      email_address: "test@example.com",
      password: "password123"
    )
  }

  describe "Validations" do
    it "is valid with valid attributes" do
      expect(subject).to be_valid
    end

    it "is not valid without a name" do
      subject.name = nil
      expect(subject).to_not be_valid
    end

    it "is not valid without an email_address" do
      subject.email_address = nil
      expect(subject).to_not be_valid
    end

    it "is not valid without a password" do
      subject.password = nil
      expect(subject).to_not be_valid
    end

    it "is not valid with a duplicate email_address" do
      User.create(name: "Other", email_address: "test@example.com", password: "password123")
      expect(subject).to_not be_valid
    end

    it "is not valid with an improperly formatted email" do
      subject.email_address = "invalid_email"
      expect(subject).to_not be_valid
    end

    it "is not valid if password is too short" do
      subject.password = "short"
      expect(subject).to_not be_valid
    end
  end
end
