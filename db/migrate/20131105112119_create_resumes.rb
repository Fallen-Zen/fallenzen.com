class CreateResumes < ActiveRecord::Migration
  def change
    create_table :resumes do |t|
      t.string :name
      t.string :company
      t.date :from
      t.date :to
      t.text :description

      t.timestamps
    end
  end
end
