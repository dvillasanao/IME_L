# Librerías
require(openxlsx)
require(dplyr)

# Base a nivel estatal
IME_2010 <- read.xlsx("2010/Data/IME_2010.xlsx", sheet = "IME_2010") %>%
             filter(NOM_ENT != "Nacional") %>%
              mutate(across(.cols = 4:12, ~formatC(.x, digits = 2,  format = "f"))) %>%
               mutate(across(.cols = c(13,15), ~formatC(.x, digits = 2,  format = "f"))) %>%
                mutate_at(.vars = c(4:13,15), as.numeric)
str(IME_2010)
save(IME_2010, file = "2010/Output/IME_2010.RData")


