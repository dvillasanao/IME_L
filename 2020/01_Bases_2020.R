# Librerías
require(openxlsx)
require(dplyr)

# Base a nivel estatal
IME_2020 <- read.xlsx("2020/Data/IME_2020.xlsx", sheet = "IME_2020") %>%
             filter(NOM_ENT != "Nacional") %>%
              mutate(across(.cols = 4:12, ~formatC(.x, digits = 2,  format = "f"))) %>%
               mutate(across(.cols = c(13,15), ~formatC(.x, digits = 2,  format = "f"))) %>%
                mutate_at(.vars = c(4:13,15), as.numeric)
str(IME_2020)
save(IME_2020, file = "2020/Output/IME_2020.RData")


