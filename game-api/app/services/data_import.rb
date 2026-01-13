class DataImport
  def self.import_genres(genre_names)
    genre_names.each do |name|
      Genre.find_or_create_by(name: name)
    end
  end
end