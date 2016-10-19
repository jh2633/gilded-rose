require_relative 'item'
class GildedRose

MIN_QUA = 0
MIN_SELL = 0
QUA_DEP = 1
QUA_INCREASE = 1
SELL_DEP = 1
MAX_QUA = 50


  def initialize(items)
    @items = items
  end

  def reduce_quality(item)
    if item.quality > 0
    item.quality -= QUA_DEP
    end
  end

  def reduce_sell_in(item)
    if item.sell_in > MIN_SELL
    item.sell_in -= SELL_DEP
    end
  end

  def ticket(item)
    case item.sell_in
    when item.sell_in > 10 then item.quality += QUA_INCREASE
    when 6...10 then item.quality += 2
    when 1...5 then item.quality += 3
    else item.quality = 0
    end
  end


  def update_quality()
    @items.each do |item|
        if item.name == "Sulfuras, Hand of Ragnaros"

        elsif item.name == "Aged Brie"
            item.sell_in -= SELL_DEP
            if item.quality < MAX_QUA
              item.quality += QUA_INCREASE
            end
        elsif item.name == "Backstage passes to a TAFKAL80ETC concert"
            ticket(item)
        elsif item.name == "Conjured"
            if item.quality > QUA_INCREASE
              item.quality -= 2
            end
        else
          reduce_quality(item)
        end
        reduce_sell_in(item) unless item.name == "Sulfuras, Hand of Ragnaros"
      end
    end


  end
