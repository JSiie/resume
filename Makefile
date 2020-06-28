
files_tex_1_column = $(wildcard src/cv_1column.tex)
files_tex_2_columns = $(wildcard src/cv.tex)
cv_name_1column = "cv_SANCHEZ_Jonathan_1_column"
cv_name_2columns = "cv_SANCHEZ_Jonathan_2_columns"
all: pdf clean
	
pdf: src/cv.tex
	@echo "Building.... $^"
	@$(foreach var,$(files_tex_1_column),pdflatex -interaction=nonstopmode -jobname=$(cv_name_1column) '$(var)' 1>/dev/null;)
	@$(foreach var,$(files_tex_2_columns),pdflatex -interaction=nonstopmode -jobname=$(cv_name_2columns) '$(var)' 1>/dev/null;)
	@echo "Done!"
clean:
	@rm -f *.aux *.dvi *.log *.out *.bak *.bcf *.xml
	@echo "Clean done.";
