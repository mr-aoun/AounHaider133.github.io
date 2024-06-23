import networkx as nx

sG = nx.Graph()
sG.add_node("A")

sG.add_node("B")
sG.add_edge("A","B")

#sG.remove_edge("A","B")
#sG.remove_node("A","B")
#sG.remove_node_from([("A","B")])

nx.draw(sG,with_labels=True)
print(sG.nodes())