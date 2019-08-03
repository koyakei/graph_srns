# テーブルを作らだけのもジュル
# 消すのも入れて良いかも
module CreateTable


  def run
    table_header_node_id = graph_insert_table_header name
    rd_insert_table_header table_header_node_id
  end

  private

  def graph_insert_table_header(name)
    return table_header_node_id
  end

  # RDSに　ノードIDで挿入する。
  def rd_insert_table_header(node_id)
    "Create table #{node_id} id primary key, name string"
  end
end