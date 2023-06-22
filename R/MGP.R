#' MGP
#'
#'Grafische Darstellung der Minigenom Daten aus verschiedenen Experimenten
#'
#' @param x Dataset,... 
#'
#' @return 
#' @export
#' @importFrom magrittr %>%
#' @importFrom tidyr pivot_longer
#'
#' @examples



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