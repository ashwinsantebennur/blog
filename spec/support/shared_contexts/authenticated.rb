# spec/support/shared_contexts/authenticated.rb
RSpec.shared_context "authenticated" do
  let(:password) { "password" }
#   let(:user) { create(:user, password: password) }
  let(:user) { User.create!(name: 'tester', email_address: "test@example.com", password: password) }
  before { sign_in(user, password: password) }
end
