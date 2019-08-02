#継承関係のある商品を呼び出す
class Item < ApplicationRecord

  # 祖先の呼び出し jquery に似せるか
  def get_ancestors

  end

  # 一代だけ遡る
  def get_parents

  end

  def set_parent

  end

  def set_ancestors

  end

  def get_descendant

  end

  def set_descendant

  end


  def is_column_exists

  end

  #　テーブル名　列名　user_id で特定
  # 最終的には列 nodeをidで取得
  def get_column(name, user_id)

  end

  # RDB形式で呼び出す
  # @param id はRDBのID
  def get_row(id)
    #RDB側で graph DBの IDを特定する
    get_graph_node_by_row_set(get_graph_database_node_id(id))
  end

  private

  def get_graph_database_node_id(id)
    1
  end

  # 行方向のノードセットの条件ってなんだっけ？
  # row_header から出る edge classの定義
  # edge_class
  def get_graph_node_by_row_set(row_header_node_id)

  end

end
