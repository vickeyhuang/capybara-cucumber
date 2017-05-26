class HomePage

  def initialize page
    @page = page
  end

  def h2_message
    @page.find('.main h2')
  end

  def click_item
    @page.click_link('Yealink T20P')
  end

  def view_bag
    @page.click_link('View my bag')
  end

  def add_item
    @page.find('li:nth-child(1) > p.buttons > a.add').click
  end

  def empty_bag
    @page.find('.empty b')
  end
end