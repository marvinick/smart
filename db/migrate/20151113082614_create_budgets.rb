	class CreateBudgets < ActiveRecord::Migration
  def change
    create_table :budgets do |t|
      t.integer :amount

      t.timestamps null: false
    end
  end
end
