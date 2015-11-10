class Movie
  include DataMapper::Resource
  property :id, Serial
  property :title, String ,required: true
  property :year, Integer
  property :description, String
  property :created_at, DateTime
  property :updated_at, DateTime

  def moveDescription= newDescription
      @descript = newDescription.downcase
  end

end
