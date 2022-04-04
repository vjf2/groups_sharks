# Making a git repo example
# Using shark data
# Vivienne Foroughirad
# April 4 2022

dolphins <- read.csv("dolphins.csv")
shark_bites <- read.csv("shark_bites.csv")
sightings <- read.csv("sightings.csv")

ind_group_sizes <- aggregate(Group.Size~Dolphin.ID, 
                             data = sightings, 
                             median)

counts <- table(sightings$Dolphin.ID)

ind_group_sizes$n_sightings <- counts[match(ind_group_sizes$Dolphin.ID, names(counts))]

