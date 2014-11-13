class RenameColumn < ActiveRecord::Migration
  def change
    rename_column :statuses, :status, :newstatus
  end
end
