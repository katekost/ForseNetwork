library(networkD3)

nodes = data.frame("name" = 
                     c("TOTAL", "CASH", "POS", "P2P", "1OFF", "CASH", "POS", "P2P", "1OFF","CASH",
                       "POS", "P2P", "CASH","POS", "P2P","2OFF","CASH","POS","P2P","2OFF","CASH",
					   "POS","P2P","2OFF","CASH","POS","P2P","2OFF","CASH","POS","P2P","2OFF",
                       "CASH","POS","P2P","2OFF","CASH","POS","P2P","2OFF","CASH","POS","P2P",
                       "POS","CASH","POS","P2P","CASH","POS","P2P"),
                   nodes_radius =c(
                     900,300,300,300,50,50,50,50,50,50,50,50,50,50,50,10,10,10,10,10,10,10,10,10,
					 10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10
                   )) 

links = as.data.frame(matrix(c(
  0, 1, 80, "slategray",
  0, 2, 18, "orangered",
  0, 3, 20, "sandybrown",
  1, 4, 22, "forestgreen",
  1, 5, 60, "slategray",
  1, 6, 18, "orangered",
  1, 7, 1, "sandybrown",
  2, 8, 2, "forestgreen",
  2, 9, 26, "slategray",
  2, 10, 70, "orangered",
  2, 11, 3, "sandybrown",
  3, 12, 13, "slategray",
  3, 13, 27, "orangered",
  3, 14, 60, "sandybrown",
  5, 15, 9, "lightgreen",
  5, 16, 76, "slategray",
  5, 17, 15, "orangered",
  5, 18, 0, "sandybrown",
  6, 19, 3, "lightgreen",
  6, 20, 36, "slategray",
  6, 21, 61, "orangered",
  6, 22, 1, "sandybrown",
  7, 23, 3, "lightgreen",
  7, 24, 35, "slategray",
  7, 25, 22, "orangered",
  7, 26, 40, "sandybrown",
  9, 27, 3, "lightgreen",
  9, 28, 49, "slategray",
  9, 29, 48, "orangered",
  9, 30, 1, "sandybrown",
  10, 31, 1, "lightgreen",
  10, 32, 21, "slategray",
  10, 33, 76, "orangered",
  10, 34, 2, "sandybrown",
  11, 35, 1, "lightgreen",
  11, 36, 10, "slategray",
  11, 37, 44, "orangered",
  11, 38, 44, "sandybrown",
  12, 39, 6, "lightgreen",
  12, 40, 60, "slategray",
  12, 41, 16, "orangered",
  12, 42, 18, "sandybrown",
  13, 43, 1, "darkorange",
  13, 44, 6, "slategray",
  13, 45, 59, "orangered",
  13, 46, 34, "sandybrown",
  14, 47, 9, "slategray",
  14, 48, 24, "slategray",
  14, 49, 67, "sandybrown"),
  byrow = TRUE, ncol = 4))
names(links) = c("source", "target", "value", "color")

a <- as.vector(links$color)

forceNetwork(Links = links, Nodes = nodes, 
             Source = "source", Target = "target", Group = "name",
             Value = "value", NodeID = "name", opacity = 1, fontSize = 15,
             linkDistance = 100, legend = TRUE, clickAction = TRUE,
             Nodesize = "nodes_radius", zoom = TRUE, linkColour = a,
             colourScale = "d3.scaleOrdinal().range(d3.schemeCategory20)")

