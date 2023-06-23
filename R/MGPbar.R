#' MGP
#'
#'Grafische Darstellung der Minigenom Daten aus verschiedenen Experimenten
#'
#' @param x Dataset,... 
#'
#' @return print graphic 
#' @importFrom magrittr `%>%`
#' @importFrom tidyr pivot_longer
#' @importFrom ggplot2 ggplot geom_point geom_bar scale_color_discrete aes 
#' @importFrom dplyr mutate
#' 
#'
#' @export



MGPbar <- function(x){
  
  dat_long <- pivot_longer(x,
                           WT:ohneNP,
                           values_tMGo = "prop_activity",
                           names_to = "mutant") %>% 
    mutate(ID = as.factor(ID))
  
  ggplot()+
    geom_bar(data = dat_long, aes(x = prop_activity, y = mutant, color = ID))+
    scale_color_discrete()
  
}