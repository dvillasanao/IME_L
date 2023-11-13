# Librerías
require(openxlsx)
require(dplyr)

# Base a nivel estatal
IME_2015 <- read.xlsx("2015/Data/IME_2015.xlsx", sheet = "IME_2015") %>%
             filter(NOM_ENT != "Nacional") %>%
              mutate(across(.cols = 4:12, ~formatC(.x, digits = 2,  format = "f"))) %>%
               mutate(across(.cols = c(13,15), ~formatC(.x, digits = 2,  format = "f"))) %>%
                mutate_at(.vars = c(4:13,15), as.numeric)
str(IME_2015)
save(IME_2015, file = "2015/Output/IME_2015.RData")


