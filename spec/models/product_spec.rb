require 'rails_helper'

RSpec.describe Product, type: :model do
  subject { FactoryBot.create(:product) }

  it { should validate_presence_of(:name) }
  it { should have_many(:colors) }
  it { should have_many(:product_colors).dependent(:destroy) }
  context 'when name' do
    context 'less than 3 symbols' do
      before { subject.name = 'AB' }
      it { should_not be_valid }
    end

    context 'more than 5 symbols' do
      before { subject.name = 'ABCDEF' }
      it { should_not be_valid }
    end

    context 'empty' do
      before { subject.name = '  ' }
      it { should_not be_valid }
    end

    context 'nil' do
      before { subject.name = nil }
      it { should_not be_valid }
    end
  end
end
