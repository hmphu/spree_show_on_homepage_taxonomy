class AddShowOnHomepageToSpreeTaxonomies < ActiveRecord::Migration
  def change
    add_column :spree_taxonomies, :show_on_homepage, :boolean, default: true
  end
end
