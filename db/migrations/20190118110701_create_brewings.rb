Hanami::Model.migration do
  change do
    create_table :brewings do
      primary_key :id

      foreign_key :tea_id, :tea, on_delete: :cascade, null: false
      column :amount, Integer, null: false
      column :timespan, Integer, null: false
      column :water_temp, Integer, null: false
      column :taste, String, null: false

      column :created_at, DateTime, null: false
      column :updated_at, DateTime, null: false
    end
  end
end
