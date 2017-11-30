require "faker_lab"

describe FakerLab do

  before(:all) do
    @user = FakerLab.user
  end

  describe 'Creating a user using the faker gem' do
    context 'Name' do
      it 'returns string' do
        expect(@user[:name]).to be_instance_of String
      end
    end
  end
end