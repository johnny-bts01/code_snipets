install.packages("tidygeocoder")
install.packages("dplyr")

library(dplyr)
library(tidygeocoder)
dc_addresses <- tribble( ~name,~addr,
                         "Banco","RUA DO ORATORIO, 887",
                         "Julio","Rua  149",
                         "Casa Johnny","Rua  182,São Paulo,SP",
                         )
coordinates <- dc_addresses %>%geocode(addr,method='osm',lat=latitude,long=longitude)


