class CreateSubjects < ActiveRecord::Migration[6.1]
  def change
      create_table :subjects do |t|
        t.string :category
      end
  end
end
