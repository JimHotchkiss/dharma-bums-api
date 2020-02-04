ActiveRecord::Schema.define(version: 2020_01_06_022829) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comments", force: :cascade do |t|
    t.text "content"
    t.integer "commentable_id"
    t.string "commentable_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["commentable_type", "commentable_id"], name: "index_comments_on_commentable_type_and_commentable_id"
  end

  create_table "meditations", force: :cascade do |t|
    t.string "theme"
    t.integer "duration"
    t.string "organizer"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
