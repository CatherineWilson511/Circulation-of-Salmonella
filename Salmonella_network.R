#Making a network for OSNPS run with panaroo.

library(igraph)
#Using panaroo alignments:

source_target <- read.csv('source_target_p.csv')
id_meta_graph <- read.csv('metadata_osnp_sharing.csv')

#2. Manage dataset
source_target_freq <-as.data.frame(table(source_target)) # Create an edge weight column named "Freq"
source_target_freq1 <-subset(source_target_freq,Freq>0) # Delete all the edges having weight equal to 0

#3. Create an igraph object from the dataframes
# Unless your edgelist in B1 is recognized as 'factor' it will produce an error
id_meta_graph<-graph_from_data_frame(source_target_freq1, directed = FALSE, vertices = meta)

E(id_meta_graph)$weight<-E(id_meta_graph)$Freq # Assigning edge attribute to each edge
id_meta_graph

library(RColorBrewer) 
pal<-brewer.pal(length(unique(V(id_meta_graph)$Host_HH1)), "Set3") # Vertex color assigned per each class number
plot(id_meta_graph,edge.color = 'black',vertex.label.cex =0.5,
     vertex.color=pal[as.numeric(as.factor(vertex_attr(id_meta_graph, "Host_HH1")))])#This clusters by pairs. Want to move the vertices around and cluster by household and create links between. 
#This code works and ends up with lane id on the vertices coloured by host. KEEP THIS THE SAME.

#Try to get rid of the lane id on the vertices. 
pal<-brewer.pal(length(unique(V(id_meta_graph)$Host_HH1)), "Set3") # Vertex color assigned per each class number
plot(id_meta_graph,edge.color = 'black',vertex.label.cex =0.6,
     vertex.color=pal[as.numeric(as.factor(vertex_attr(id_meta_graph, "Host_HH1")))])#This clusters by pairs. Want to move the vertices around and clster by household and create links between. 



vertex_attr(id_meta_graph, "label") <- V(id_meta_graph)$HH1_number
#This code labels each vertices by household and colours by host category

layout=layout.circle(id_meta_graph)

#Try to see if this will cluster by household- this does, with difference colour to household
pal<-brewer.pal(length(unique(V(id_meta_graph)$HH1_number)), "Set3") # Vertex color assigned per each class number
plot(id_meta_graph,edge.color = 'black',vertex.label.cex =0.5,
     vertex.color=pal[as.numeric(as.factor(vertex_attr(id_meta_graph, "HH1_number")))])
vertex_attr(id_meta_graph, "label") <- V(id_meta_graph)$Host_HH1#This renames the vertices with host category