class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :auth_id
      t.numeric :age
      t.string :sex

      t.timestamps
    end

    create_table :audits do |t|
      t.belongs_to :users, index: true
      t.numeric :p1
      t.numeric :p2
      t.numeric :p3

      t.timestamps
    end
  end
end
