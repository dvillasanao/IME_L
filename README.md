
<!-- README.md is generated from README.Rmd. Please edit that file -->
<!-- badges: start -->

[![R-CMD-check](https://github.com/r-lib/usethis/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/r-lib/usethis/actions/workflows/R-CMD-check.yaml)

<!-- badges: end -->

# Mapa dinámico del índice de marginación a nivel estatal

La composición de los archivos en los tres años tiene la misma
estructura de archivos:

1.  `01_Bases_*.R`.- Se estructuran las bases del índice de marginación
    y se les da un formato simple `.RData`.  

2.  `02_Shapefiles_*.Rmd` .- Se leen los shapefiles y se tratan de
    simplificar los archivos de tamaño para convertirlos en archivos
    `.geojson`.

           + Además de que se dividen en cinco archivos por cada grado de marginación.    

3.  `03_State_popup. Rmd`. - Se le da estructura a los popup’s que
    aparecen en el leaflet.

4.  `03.01_State_popup_Modificado.Rmd`. - Se reestructuran los popup’s
    para simplificar su tamaño. Utilizando también el archivo
    `css_style.css` que da el estilo a las etiquetas.

5.  `04_Leaflet_*.Rmd`. - Estructura del mapa leaflet a nivel estatal.

6.  `css_style.css`. - Este archivo da formato a los colores de los
    popup’s del mapa de leaflet.

7.  `IME_2010-2020.Rmd`. - Contiene la estructura del Flexhdashborad.

``` r
list.files(here::here(), all.files = TRUE)
#>  [1] "."                  ".."                 ".git"              
#>  [4] ".gitignore"         ".Rhistory"          ".Rproj.user"       
#>  [7] "2010"               "2015"               "2020"              
#> [10] "IME_2010-2020.html" "IME_2010-2020.Rmd"  "IME_2010.html"     
#> [13] "IME_2010_files"     "IME_2015.html"      "IME_2015_files"    
#> [16] "IME_2020.html"      "IME_2020_files"     "IME_Leaflet.Rproj" 
#> [19] "logo"               "README.md"          "README.Rmd"
```

El resultado final se encuentra en el siguiente enlace:

**Enlace:**
<https://dvillasanao.github.io/IME_Leaflet/IME_2010-2020.html>

<html>
<body>
<a href = "https://dvillasanao.github.io/IME_Leaflet/IME_2010-2020.html" target="_blank">
<img src="https://github.com/dvillasanao/IME_Leaflet/blob/leaflet-branch/logo/img01.png?raw=true"/></a>
</body>
</html>

📦 Librerías que se usaron en el projecto

``` r
sesion_info <- devtools::session_info()
```

<table class=\" lightable-classic\" style='font-size: 10px; font-family: \"Arial Narrow\", \"Source Sans Pro\", sans-serif; margin-left: auto; margin-right: auto;'> <thead>  <tr>   <th style=\"text-align:center;\"> package </th>   <th style=\"text-align:center;\"> loadedversion </th>   <th style=\"text-align:center;\"> source </th>  </tr> </thead><tbody>  <tr>   <td style=\"text-align:center;padding: 4px\"> doMC </td>   <td style=\"text-align:center;padding: 4px\"> 1.3.5 </td>   <td style=\"text-align:center;padding: 4px\"> R-Forge (R 4.3.1) </td>  </tr>  <tr>   <td style=\"text-align:center;padding: 4px\"> dplyr </td>   <td style=\"text-align:center;padding: 4px\"> 1.1.3 </td>   <td style=\"text-align:center;padding: 4px\"> CRAN (R 4.3.2) </td>  </tr>  <tr>   <td style=\"text-align:center;padding: 4px\"> forcats </td>   <td style=\"text-align:center;padding: 4px\"> 1.0.0 </td>   <td style=\"text-align:center;padding: 4px\"> CRAN (R 4.3.1) </td>  </tr>  <tr>   <td style=\"text-align:center;padding: 4px\"> foreach </td>   <td style=\"text-align:center;padding: 4px\"> 1.5.2 </td>   <td style=\"text-align:center;padding: 4px\"> CRAN (R 4.3.1) </td>  </tr>  <tr>   <td style=\"text-align:center;padding: 4px\"> ggmap </td>   <td style=\"text-align:center;padding: 4px\"> 3.0.2 </td>   <td style=\"text-align:center;padding: 4px\"> CRAN (R 4.3.1) </td>  </tr>  <tr>   <td style=\"text-align:center;padding: 4px\"> ggplot2 </td>   <td style=\"text-align:center;padding: 4px\"> 3.4.3 </td>   <td style=\"text-align:center;padding: 4px\"> CRAN (R 4.3.1) </td>  </tr>  <tr>   <td style=\"text-align:center;padding: 4px\"> ggpubr </td>   <td style=\"text-align:center;padding: 4px\"> 0.6.0 </td>   <td style=\"text-align:center;padding: 4px\"> CRAN (R 4.3.1) </td>  </tr>  <tr>   <td style=\"text-align:center;padding: 4px\"> ggridges </td>   <td style=\"text-align:center;padding: 4px\"> 0.5.4 </td>   <td style=\"text-align:center;padding: 4px\"> CRAN (R 4.3.1) </td>  </tr>  <tr>   <td style=\"text-align:center;padding: 4px\"> gt </td>   <td style=\"text-align:center;padding: 4px\"> 0.10.0 </td>   <td style=\"text-align:center;padding: 4px\"> CRAN (R 4.3.1) </td>  </tr>  <tr>   <td style=\"text-align:center;padding: 4px\"> htmltools </td>   <td style=\"text-align:center;padding: 4px\"> 0.5.5 </td>   <td style=\"text-align:center;padding: 4px\"> CRAN (R 4.3.1) </td>  </tr>  <tr>   <td style=\"text-align:center;padding: 4px\"> htmlwidgets </td>   <td style=\"text-align:center;padding: 4px\"> 1.6.2 </td>   <td style=\"text-align:center;padding: 4px\"> CRAN (R 4.3.1) </td>  </tr>  <tr>   <td style=\"text-align:center;padding: 4px\"> iterators </td>   <td style=\"text-align:center;padding: 4px\"> 1.0.14 </td>   <td style=\"text-align:center;padding: 4px\"> CRAN (R 4.3.1) </td>  </tr>  <tr>   <td style=\"text-align:center;padding: 4px\"> kableExtra </td>   <td style=\"text-align:center;padding: 4px\"> 1.3.4 </td>   <td style=\"text-align:center;padding: 4px\"> CRAN (R 4.3.1) </td>  </tr>  <tr>   <td style=\"text-align:center;padding: 4px\"> knitr </td>   <td style=\"text-align:center;padding: 4px\"> 1.45 </td>   <td style=\"text-align:center;padding: 4px\"> CRAN (R 4.3.2) </td>  </tr>  <tr>   <td style=\"text-align:center;padding: 4px\"> leafgl </td>   <td style=\"text-align:center;padding: 4px\"> 0.1.1 </td>   <td style=\"text-align:center;padding: 4px\"> CRAN (R 4.3.1) </td>  </tr>  <tr>   <td style=\"text-align:center;padding: 4px\"> leaflet </td>   <td style=\"text-align:center;padding: 4px\"> 2.2.0 </td>   <td style=\"text-align:center;padding: 4px\"> CRAN (R 4.3.1) </td>  </tr>  <tr>   <td style=\"text-align:center;padding: 4px\"> leaflet.extras </td>   <td style=\"text-align:center;padding: 4px\"> 1.0.0 </td>   <td style=\"text-align:center;padding: 4px\"> CRAN (R 4.3.1) </td>  </tr>  <tr>   <td style=\"text-align:center;padding: 4px\"> mapview </td>   <td style=\"text-align:center;padding: 4px\"> 2.11.0 </td>   <td style=\"text-align:center;padding: 4px\"> CRAN (R 4.3.1) </td>  </tr>  <tr>   <td style=\"text-align:center;padding: 4px\"> openxlsx </td>   <td style=\"text-align:center;padding: 4px\"> 4.2.5.2 </td>   <td style=\"text-align:center;padding: 4px\"> CRAN (R 4.3.1) </td>  </tr>  <tr>   <td style=\"text-align:center;padding: 4px\"> RColorBrewer </td>   <td style=\"text-align:center;padding: 4px\"> 1.1-3 </td>   <td style=\"text-align:center;padding: 4px\"> CRAN (R 4.3.0) </td>  </tr>  <tr>   <td style=\"text-align:center;padding: 4px\"> rgdal </td>   <td style=\"text-align:center;padding: 4px\"> 1.6-7 </td>   <td style=\"text-align:center;padding: 4px\"> CRAN (R 4.3.1) </td>  </tr>  <tr>   <td style=\"text-align:center;padding: 4px\"> sf </td>   <td style=\"text-align:center;padding: 4px\"> 1.0-14 </td>   <td style=\"text-align:center;padding: 4px\"> CRAN (R 4.3.1) </td>  </tr>  <tr>   <td style=\"text-align:center;padding: 4px\"> sp </td>   <td style=\"text-align:center;padding: 4px\"> 2.1-0 </td>   <td style=\"text-align:center;padding: 4px\"> CRAN (R 4.3.1) </td>  </tr>  <tr>   <td style=\"text-align:center;padding: 4px\"> spdplyr </td>   <td style=\"text-align:center;padding: 4px\"> 0.4.0 </td>   <td style=\"text-align:center;padding: 4px\"> Github (mdsumner/spdplyr@e14dec9017a96c309065ab319da96c839cac6f58) </td>  </tr>  <tr>   <td style=\"text-align:center;padding: 4px\"> stringr </td>   <td style=\"text-align:center;padding: 4px\"> 1.5.0 </td>   <td style=\"text-align:center;padding: 4px\"> CRAN (R 4.3.1) </td>  </tr>  <tr>   <td style=\"text-align:center;padding: 4px\"> tibble </td>   <td style=\"text-align:center;padding: 4px\"> 3.2.1 </td>   <td style=\"text-align:center;padding: 4px\"> CRAN (R 4.3.1) </td>  </tr></tbody></table>
