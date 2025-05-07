class ItemsController < ApplicationController
  def index
    @list_of_items = Item.all

    render({ :template => "item_templates/list" })
  end

  def backdoor      
    render({ :template => "item_templates/backdoor" })
  end

  def create_new_item
    new_item = Item.new

    new_item.link_url = params.fetch("link_url")
    new_item.link_description = params.fetch("link_description")
    new_item.thumbnail_url = params.fetch("thumbnail_url")

    new_item.save

    redirect_to("/")
  end
end
