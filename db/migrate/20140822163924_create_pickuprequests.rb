class CreatePickuprequests < ActiveRecord::Migration
  def change
    create_table :pickuprequests do |t|
      t.string :name
      t.text :address
      t.decimal :weight

      t.timestamps
    end
  end
end
