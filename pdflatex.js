var pdftex = new PDFTeX();
var latex_code = "" +
  "\documentclass{article}" +
  "\begin{document}" +
  "\LaTeX is great!" +
  "$E = mc^2$" +
  "\end{document}";

pdftex.compile(latex_code)
      .then(function(pdf) { window.open(pdf) }); 