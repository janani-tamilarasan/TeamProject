class CreateShifts < ActiveRecord::Migration[5.2]
  def change
    create_table :shifts do |t|
         t.boolean :sunday,default: false
      t.boolean :monday,default: false
      t.boolean :tuesday,default: false
      t.boolean :wednesday,default: false
      t.boolean :thrusday,default: false
      t.boolean :friday,default: false
      t.boolean :saturday,default: false
      t.time :time
      t.references :member, foreign_key: true
t.references :team, foreign_key: true
remove_column :members, :team_id

      t.timestamps
    end
  end
end
