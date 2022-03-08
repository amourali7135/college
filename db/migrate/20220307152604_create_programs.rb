class CreatePrograms < ActiveRecord::Migration[6.1]
  def change
    create_table :programs do |t|
      t.string :title
      t.string :headline
      t.text :description
      t.boolean :rolling, null: false
      t.date :application_due_date
      t.string :location
      t.boolean :remote, null: false
      t.integer :spots
      t.text :requirements
      t.string :length
      t.integer :minimum_age
      t.boolean :visa_sponsorship, null: false
      t.date :start_date
      t.boolean :virtual_components, null: false
      t.boolean :housing_provided, null: false
      t.boolean :essay, null: false
      t.string :essay_question_one
      t.string :essay_question_two
      t.string :essay_question_three
      t.boolean :salary, null: false
      t.integer :salary_paid
      t.integer :cost
      t.boolean :certificate_awarded, null: false
      t.boolean :nationals_only, null: false
      t.boolean :active, null: false
      t.integer :time_requirement
      t.boolean :job_guaranteed, null: false
      t.string :category
      t.boolean :relocation_assistance, null: false
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end