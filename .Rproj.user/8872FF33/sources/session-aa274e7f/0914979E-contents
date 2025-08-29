library(quarto)

all_cyl <- unique(mtcars$cyl)
for(xcyl in all_cyl){
  quarto_render(
    input="report.qmd",
    execute_params = list(cyl = xcyl),
    output_file = glue::glue("report_{xcyl}.pdf")
  )
}

