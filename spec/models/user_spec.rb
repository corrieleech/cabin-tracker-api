require 'rails_helper'

RSpec.describe User, type: :model do

  subject {
    described_class.new(
      name: "Corrie",
      email:"corrie@gmail.com", 
      password: "password", 
      password_confirmation: "password"
    )
  }

  describe "Validations" do
    it "is valid with valid attributes" do
      expect(subject).to be_valid
    end

    it "is not valid without an email address" do
      subject.email = nil
      expect(subject).to_not be_valid
    end

    it "must have a unique email address" do
      person2 = User.create(name: "Cora", email:"corrie@gmail.com", password: "password", password_confirmation: "password")
      expect(User.count).to eq 1
    end
  end
end
