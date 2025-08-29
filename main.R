library(quarto)

quarto_render(
  input="cover.qmd",
  output_file = glue::glue("cover.pdf")
)

all_cyl <- unique(mtcars$cyl)
for(xcyl in all_cyl){
  quarto_render(
    input="report.qmd",
    execute_params = list(cyl = xcyl),
    output_file = glue::glue("report_{xcyl}.pdf")
  )
}

library(qpdf)
qpdf::pdf_combine(
  input = c("cover.pdf","report_4.pdf", "report_6.pdf", "report_8.pdf"),
  output = "output.pdf"
)

