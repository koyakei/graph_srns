# This example creates a Database with a Year graph with the following structure.
# Year --(TIME)--> Month --(TIME)--> Day --(TIME)--> Hour --(TIME)--> Minute
# Year --(NEXT)--> Next Year
# Month --(NEXT)--> Next Month
# Day --(NEXT)--> Next Day
# Hour --(NEXT)--> Next Hour
# Minute --(NEXT)--> Next Minute

# require_relative '../lib/arangorb'

# graph database  node class edge class 登録

require "arangorb"
server = Arango::Server.new username: "root", password: "koyakei",
                            server: "127.0.0.1", port: "8529",
                            tls: false, pool: false, active_cache: false, verbose: true
database = server.database name: "srns"
graph = database.graph name: "universalGraph"
database.destroy rescue ""
database.create

dbk = "DatabaseKind"
dh = "DatabaseHeader"
th = "TableHeader"
ch = "ColumnHeader"
rh = "RowHeader"
rb = "RowBody"

dh_th = "DatabaseHeader-TableHeaer"
th_ch = "TableHeader-ColumnHeader"
ch_rb = "ColumnHeader-RowBody"
rh_rb = "RowHeader-RowBody"

databaseKindC = database.collection(name: dbk).create
databaseHeaderC = database.collection(name: dh).create
tableHeaderC = database.collection(name: th).create
columnHeaderC = database.collection(name: ch).create
rowHeaderC = database.collection(name: rh).create
rowBodyC = database.collection(name: rb).create

dhThE = database.collection(name: dh_th, type: :edge).create
thChE = database.collection(name: th_ch, type: :edge).create
thChE = database.collection(name: ch_rb, type: :edge).create
thChE = database.collection(name: rh_rb, type: :edge).create

edgeDefinitions = [
    {collection: th_ch, from: [th], to: [ch]},
    {collection: dh_th, from: [dh], to: [th]},
    {collection: ch_rb, from: [ch], to: [rb]},
    {collection: rh_rb, from: [ch], to: [rb]}
]

graph.edgeDefinitions = edgeDefinitions
graph.create

