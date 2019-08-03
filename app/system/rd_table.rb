class RdTable
  include CreateTable
  include GetTable

  def create
    CreateTable.run
  end

  def delete

  end

  def update

  end

  def get(graph_table_name)
    GetTable.run graph_table_name
  end

end