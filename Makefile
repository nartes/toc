TARGET = build/report.pdf

all: tex

build/report.pdf: doc/report.tex
	pdflatex -output-directory=build/ doc/report.tex
	pdflatex -output-directory=build/ doc/report.tex

tex: $(TARGET)

clean:
	@rm -f build/*.aux
	@rm -f build/*.log
	@rm -f build/*.nav
	@rm -f build/*.out
	@rm -f build/*.pdf
	@rm -f build/*.snm
	@rm -f build/*.toc
