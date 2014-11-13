class RenameColumnAgain < ActiveRecord::Migration
  def change
    rename_column :statuses, :newstatus, :status

  end
end
