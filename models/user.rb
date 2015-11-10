class User
    include DataMapper::Resource
    property  :id, Serial
    property  :name, String
    property  :adress, Object
    property :created_at, DateTime
    property :updated_at, DateTime
end
