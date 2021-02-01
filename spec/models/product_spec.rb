require 'rails_helper'

RSpec.describe Product, type: :model do
  it "does not change original when updating properties on dup'd object" do
    original = Product.create!(name: 'test1')
    copy = original.dup
    copy.name = 'test1 copy'
    expect(copy.name).to eq 'test1 copy'
    expect(original.name).to eq 'test1'
  end
end
