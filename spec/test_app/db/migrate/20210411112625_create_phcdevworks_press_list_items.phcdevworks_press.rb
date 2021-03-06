# This migration comes from phcdevworks_press (originally 20200712064920)
class CreatePhcdevworksPressListItems < ActiveRecord::Migration[6.0]
  def change
    create_table :phcdevworks_press_list_items do |t|

      t.integer :list_item_number
      t.string :list_item_title
      t.text :list_item_text
      t.string :list_item_url

      t.string :optimization_id

      t.string :slug
      t.string :user_id
      t.string :org_id

      t.references :post

      t.timestamps

    end
  end
end
