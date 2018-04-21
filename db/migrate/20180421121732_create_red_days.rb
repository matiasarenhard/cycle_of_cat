class CreateRedDays < ActiveRecord::Migration[5.1]
  def change
    create_table :red_days do |t|
      t.date :good_day

      t.timestamps
    end
  end
end
