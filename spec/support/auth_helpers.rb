module AuthHelper
  def sign_in(user, password: "password")
    post "/session", params: {
      email_address: user.email_address,
      password: password
    }
  end
end
