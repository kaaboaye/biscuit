class TeaRepository < Hanami::Repository
  associations do
    has_many :brewings
  end

  def find_with_brewings(id)
    aggregate(:brewings).where(id: id).as(Tea).one
  end
end
