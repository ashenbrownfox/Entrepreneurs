class AddPlanToUser < ActiveRecord::Migration[5.0]
  def change
    add column :users, :plan_id, :integer
  end
end
