class SearchesController < ApplicationController
  def search
  end

  def foursquare
    Faraday.get 'https://api.foursquare.com/v2/venues/search' do |req|
      req.params['client_id'] = '1NXENCJDC3R1B1DMA4EOE0JLMRTG5C4Z4NUMB2GH3HAHYO2W'
      req.params['client_secret'] = 'CSRPLNJQQRCMONUEVFVDGIFTIUAIVEPPX3HOYFYKKMI2FS2H'
      req.params['v'] = '20160201'
      req.params['near'] = params[:zipcode]
      req.params['query'] = 'coffee shop'
    end
    render 'search'
  end
end
