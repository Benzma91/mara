SQLite

read.("~/R Studio/BioID2_Cibtrol_01.raw")

git config --global user.email "you@example.com"
git config --global user.name "Your Name"


filter nur eine Probe (wt)
Umwandeln in long format


MGP <- function(x){
  dat_long <- pivot_longer(x,
                           WT:ohneNP,
                           values_to = "prop_activity",
                           names_to = "mutant") %>% 
    mutate(ID = as.factor(ID))
  
  ggplot()+
    geom_point(data = dat_long, aes(x = prop_activity, y = mutant, color = ID))+
    scale_color_discrete()
  
}
