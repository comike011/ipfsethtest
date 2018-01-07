class CreateUserAssets < ActiveRecord::Migration[5.1]
  def change
    create_table :user_assets do |t|
      t.references :user, index: true, foreign_key: true
      t.string :ipfs_hash

      t.timestamps
    end
  end
end
