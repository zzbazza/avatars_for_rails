class CreateAvatarsForRails<%= file_name.camelize %> < ActiveRecord::Migration
  def change
    add_column :<%= file_name.tableize %>, :avatar
  end
end
