require "json"
require 'google/apis/customsearch_v1'

File.open("app/resouces/google-api-customsearch.json") do |j|
  data = JSON.load(j)
  API_KEY = data["API_KEY"]
  CSE_ID = data["CSE_ID"]
end

class ApplicationController < ActionController::Base
  def index
    searcher = Google::Apis::CustomsearchV1::CustomSearchAPIService.new
    searcher.key = API_KEY
    keyword = params[:keyword]
    items = []

    if !keyword.nil? && !keyword.empty? then
      results = searcher.list_cses(exact_terms: keyword, cx: CSE_ID)
      items = results.items
    end

    @keyword = keyword
    @items = items
    render 'layouts/index'
  end
end
