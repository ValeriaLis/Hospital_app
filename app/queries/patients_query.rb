class PatientsQuery
  attr_reader :relation

  def initialize(relation = Patient.all)
    @relation = relation
  end

  def search(query)
    return self unless query.present?

    query = query.downcase
    @relation = relation.where('lower(middle_name) LIKE ?', "%#{query}%")
    self
  end

  def sort(field, direction)
    case field
    when 'last_name'
      @relation = relation.order("middle_name #{direction}")
    when 'created_at'
      @relation = relation.order("created_at #{direction}")
    else
      @relation = relation.order(:id)
    end
    self
  end

  def result
    @relation
  end
end
