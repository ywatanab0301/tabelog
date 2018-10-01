class Scraping
  def self.tabelog_urls
    links = []
    agent = Mechanize.new
    current_page = agent.get("https://tabelog.com/rstLst/")
    elements = current_page.search('.list-rst__rst-name a')
    elements.each do |ele|
      links << ele.get_attribute('href')
    end

    links.each do |link|
      get_shop(link)
    end
  end

  def self.get_shop(link)
    agent = Mechanize.new
    page = agent.get(link)
    shop_name = page.at('.display-name span').inner_text if page.at('.display-name span')

    phone_number = page.at('.rstdtl-side-yoyaku__tel-wrap p
    ').inner_text if page.at('.rstdtl-side-yoyaku__tel-wrap p')
    pic1 = page.at('.bx-viewport img')[:src] if page.at('.bx-viewport img')

    shop = Shop.where(shop_name: shop_name).first_or_initialize
    shop.save
  end

end
