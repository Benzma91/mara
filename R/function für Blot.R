dat_long <- pivot_longer(Mara_Minigenom,
             WT:ohneNP,
             values_to = "prop_activity",
             names_to = "mutant") %>% 
  mutate(ID = as.factor(ID))

ggplot()+
  geom_point(data = dat_long, aes(x = prop_activity, y = mutant, color = ID))+
  scale_color_discrete()
