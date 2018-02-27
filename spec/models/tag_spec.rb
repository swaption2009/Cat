require 'rails_helper'

RSpec.describe Tag, type: :model do
  let(:trait) { FactoryBot.create(:tag) }

  it 'is valid with a trait' do
    expect(trait).to be_valid
  end

  describe 'Tag validations' do
    it { should validate_uniqueness_of(:trait) }
    it { should have_many(:taggings)}
    it { should have_many(:breeds).through(:taggings)}
  end
end
