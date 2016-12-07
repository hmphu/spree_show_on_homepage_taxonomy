Deface::Override.new(:virtual_path => 'spree/admin/taxonomies/_form',
  :name => 'add_show_on_homepage_to_admin_taxonomy_form',
  :insert_bottom => "[data-hook='admin_inside_taxonomy_form']",
  :text => "
            <%= f.field_container :show_on_homepage do %>
              <%= f.label :show_on_homepage, Spree::Taxonomy.human_attribute_name(:show_on_homepage) %> <span class='required'>*</span><br />
              <%= error_message_on :taxonomy, :show_on_homepage, :class => 'fullwidth title' %>
              <%= f.check_box :show_on_homepage %>
            <% end %>
  "
)
