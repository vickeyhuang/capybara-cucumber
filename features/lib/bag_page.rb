class BagPage

  def initialize page
    @page = page
  end

  def view_bag
    @page.click_link('View my bag')
  end

  def product_name
    @page.find('td.product')
  end

  def product_quantity
    @page.find('td.quantity')
  end

  def product_price
    @page.find('td.money.price')
  end

  def remove_item
    @page.find('td.product > a').click
  end
end