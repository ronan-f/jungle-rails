require 'rails_helper'

RSpec.describe User, type: :model do
  before :each do
    @user = User.new(
      first_name: 'Ronan',
      last_name: 'Fegan',
      email: 'rfegan@gmail.com',
      password: 'hello_world',
      password_confirmation: 'hello_world'
    )
  end

  describe "Validations" do
    it "is valid with valid attributes" do
      expect(@user).to be_valid
    end
  end

      it 'is not valid unless passwords match' do
        @user.password_confirmation = 'Different'

        expect(@user).to_not be_valid
      end

      it 'is not valid unless both password input fields are completed' do
        @user.password = nil
        @user.password_confirmation = nil

        expect(@user).to_not be_valid
      end

      it 'should only accept unique emails' do

        @user.save

        @user2 = User.new(
          first_name: 'New',
          last_name: 'User',
          email: 'RFegan@gmail.com',
          password: 'hello',
          password_confirmation: 'hello'
        )

        expect(@user2).to_not be_valid
      end

      it 'should have a password with at least 6 characters' do
      @user.password = 'hello'

      expect(@user).to_not be_valid
    end


  describe '.authenticate_with_credentials'
  it 'is valid with valid credentials' do
    @user.save
    expect(User.authenticate_with_credentials('rfegan@gmail.com', 'hello_world')).to eq(@user)
  end

  it 'should accept user emails regardless of case (upper/lower)' do
    @user.save
    expect(User.authenticate_with_credentials('rfeGAN@gmail.com', 'hello_world')).to eq(@user)
  end

  it 'should accept emails with whitespace before/after email' do
    @user.save
    expect(User.authenticate_with_credentials('   rfeGAN@gmail.com   ', 'hello_world')).to eq(@user)
  end
end



