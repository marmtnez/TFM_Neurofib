library(tidyverse)

network <- read.table('../../Network/net_results/nodes_network_gtdup_vs_opg')
dict <- read.table('../../Network/net_results/ENS_genes_annotated_gtdup_vs_opg', header = T)

replace_dict <- setNames(dict$SYMBOL, dict$Gene)

network2 <- network
network2$V1 <- replace_dict[network2$V1]
network2$V2 <- replace_dict[network2$V2]

write.table(network2, file = 'nodes_network_annotated_gtdup_vs_opg.txt', quote = F, sep = '\t',
            col.names = F, row.names = F)
