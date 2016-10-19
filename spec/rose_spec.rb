require 'gildedrose'
require 'rspec'

describe GildedRose do

 before (:each) do
   normal_item = Item.new("Staff", 1, 1)
   legendary = Item.new("Sulfuras, Hand of Ragnaros", 1, 1)
   ticket =Item.new("Backstage passes to a TAFKAL80ETC concert", 1, 1)
   cheese =Item.new("Aged Brie", 1, 1)
   conjured =Item.new("Conjured", 1, 2)
   @items = [normal_item, legendary, ticket, cheese, conjured]
 end


  it 'update name of item' do
    expect(@items[0].name).to eq("Staff")
  end


describe 'update quality' do
  it 'does not reduce the quality of hand of ragnaros' do
    rose = GildedRose.new(@items)
    rose.update_quality
    expect(@items[0].quality).to eq 0
  end

  it 'reduces the quality of a normal item' do
    rose = GildedRose.new(@items)
    rose.update_quality
    expect(@items[1].quality).to eq 1
  end

  it 'increases the quality of cheese' do
    rose = GildedRose.new(@items)
    rose.update_quality
    expect(@items[2].quality).to eq 4
  end

  it 'increases the quality of a concert ticket' do
    rose = GildedRose.new(@items)
    rose.update_quality
    expect(@items[3].quality).to eq 2
  end

  it 'increases the quality of a concert ticket' do
    rose = GildedRose.new(@items)
    rose.update_quality
    expect(@items[4].quality).to eq 0
  end
end

  describe 'update sell-in' do
    it 'does not reduce the life to less than 0' do
      rose = GildedRose.new(@items)
      rose.update_quality
      expect(@items[0].sell_in).to eq 0
      expect(@items[1].sell_in).to eq 1
      expect(@items[2].sell_in).to eq 0
      expect(@items[3].sell_in).to eq 0
      expect(@items[4].sell_in).to eq 0
    end
  end


end
