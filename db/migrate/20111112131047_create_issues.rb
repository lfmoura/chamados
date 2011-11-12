class CreateIssues < ActiveRecord::Migration
  def change
    create_table :issues do |t|
      t.references :project
      t.string :subject
      t.references :opener_user
      t.references :assignee_user
      t.references :status

      t.timestamps
    end
    add_index :issues, :project_id
    add_index :issues, :opener_user_id
    add_index :issues, :assignee_user_id
    add_index :issues, :status_id
  end
end
