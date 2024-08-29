require 'rails_helper'

RSpec.describe Color, type: :model do
  subject { FactoryBot.create(:color) }

  it { should validate_presence_of(:name) }
  it { should have_many(:products) }
  it { should have_many(:product_colors) }

  context 'when name' do
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
