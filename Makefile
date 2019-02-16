all: html pdf docx rtf

pdf: cv.pdf
cv.pdf: public/tex/style_chmduquesne.tex pages/cv.md
	pandoc --standalone --template public/tex/style_chmduquesne.tex \
	--from markdown --to context \
	-V papersize=A4 \
	-o _layouts/resume.tex pages/cv.md; \
	context _layouts/resume.tex
	mv resume.pdf files/cv/cv.pdf
	rm resume.tuc
	rm resume.log

html: cv.html
cv.html: public/css/style_chmduquesne.css pages/cv.md
	pandoc --standalone -H public/css/style_chmduquesne.css \
        --from markdown --to html \
        -o _includes/cv.html pages/cv.md

docx: cv.docx
cv.docx: pages/cv.md
	pandoc -s -S pages/cv.md -o files/cv/cv.docx

rtf: cv.rtf
cv.rtf: pages/cv.md
	pandoc -s -S pages/cv.md -o files/cv/cv.rtf

clean:
	rm -f _includes/cv.html
	rm -f resume.tex
	rm -f resume.tuc
	rm -f resume.log
	rm -f files/cv.pdf
	rm -f files/cv/cv.docx
	rm -f files/cv/cv.rtf
