module Spree
  ProductsHelper.module_eval do

    def get_taxonomies
      @taxonomies ||= Spree::Taxonomy.includes(root: :children).where(show_on_homepage: true)
    end

  end
end
