require "mtg_pricer/version"

module MtgPricer
  class MtGPricer
    attr_accessor :card, :set

    def initialize(options = {})
      @card = options[] || ''
      @set = options[] || ''
    end

    def tcgplayer_price(card, set)
      @card = Unirest.get("http://magictcgprices.appspot.com/api/tcgplayer/price.json?cardname=#{card}&cardset=#{set}").body
    end

    def cfg_price(card, set)
      @card = Unirest.get("http://magictcgprices.appspot.com/api/cfg/price.json?cardname=#{card}&cardset=#{set}").body
    end

    def ebay_price(card, set)
      @card = Unirest.get("http://magictcgprices.appspot.com/api/ebay/price.json?cardname=#{card}&cardset=#{set}").body
    end
  end
end
