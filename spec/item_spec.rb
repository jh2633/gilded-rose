# require 'item'
# require 'rspec'
#
# describe Item do
#  subject(:item) {described_class.new("Staff of Jordan",14,0)}
#  subject(:item2) {described_class.new("Elune's tear",14,1)}
#
#
#   it 'allows you to see the item\'s description in string' do
#     expect(item.to_s).to eq("Staff of Jordan, 14, 0")
#   end
#
#   it 'gives you the item name' do
#     expect(item.name).to eq("Staff of Jordan")
#     expect(item2.name).to eq("Elune's tear")
#   end
#
#   it 'gives you the item sell_in value' do
#     expect(item.sell_in).to eq(14)
#     expect(item2.sell_in).to eq(14)
#   end
#
#   it 'gives you the item quality' do
#     expect(item.quality).to eq(0)
#     expect(item2.quality).to eq(1)
#   end
#
# end
