
<!-- README.md is generated from README.Rmd. Please edit that file -->
<!-- badges: start -->

[![R-CMD-check](https://github.com/r-lib/usethis/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/r-lib/usethis/actions/workflows/R-CMD-check.yaml)

<!-- badges: end -->

# IME_Leaflet

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
#> [10] "IME_2010-2020.html" "IME_2010-2020.Rmd"  "IME_Leaflet.Rproj" 
#> [13] "logo"               "README.md"          "README.Rmd"
```

El resultado final se encuentra en el siguiente enlace:

**Enlace:** <https://indicemx.github.io/IMx_Mapa/IME_2010-2020.html>

<html>
<body>
<a href = "https://indicemx.github.io/IMx_Mapa/IME_2010-2020.html" target="_blank">
<img src="https://github.com/IndiceMx/IMx_Mapa/blob/main/img/img01.png?raw=true"></a>
</body>
</html>
