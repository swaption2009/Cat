require 'rails_helper'

RSpec.describe Breed, type: :model do
  let(:cat) { FactoryBot.create(:breed) }

  it 'is valid with a name' do
    expect(cat).to be_valid
  end

  describe 'Breed validations' do
    it { should validate_uniqueness_of(:name) }
    it { should validate_presence_of(:name) }
    it { should have_many(:taggings)}
    it { should have_many(:tags).through(:taggings)}
  end
end
