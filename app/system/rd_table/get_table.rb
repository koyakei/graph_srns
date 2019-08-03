module GetTable

  table_edge_class_name = "table_header"

  # graph db から node i
  def run(graph_table_name)
    node_id = get_table_from_graph_db(graph_table_name)
    return "ok"
  end


  def get_table_from_graph_db(table_name)
    return node_id
  end

  # 関連付けられているすべての table を　データベースをまたいで取得
  # 更新job を投げる
  # @param rd_table_name is graph node id
  def get_tables_from_rd(rd_table_name)
    return ActiveRecordModel
  end
end