class ChangeYearColumnTypeInGuitar < ActiveRecord::Migration
  def up
    change_table :guitars do |t|
      t.change :year, :integer
    end
  end

  def down
    change_table :guitars do |t|
      t.change :year, :string
    end
  end
end
