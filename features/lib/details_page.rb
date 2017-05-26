class DetailsPage
  def initialize page
    @page = page
  end

  def item_price
    @page.find('.optionsBox .price')
  end

  def h2_message
    @page.find('.product h2')
  end

  def view_bag
    @page.click_link('View my bag')
  end

  def select_quantity
    @page.select('2')
  end

  def add_to_basket
    @page.find('input[type="submit"]').click
  end
end