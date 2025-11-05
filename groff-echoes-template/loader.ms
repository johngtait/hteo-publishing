.\" Process this file with
.\" Generic...
.\"    groff -ms -Tps input.ms | ps2pdf - out.pdf
.\" A4 all...
.\"    for file in *.ms; do groff -ms -Tps -dpaper=a4l -P-pa4 -P-l "$file" | ps2pdf - "$file".pdf; done
.\" Digest size...
.\"    groff -ms -Tps -dpaper=statement -P-pstatement loader.ms | ps2pdf - out.pdf
.nr VS 13p
.nr PS 13
.\" margin width and line length
.nr PO 0.6i
.nr LL 4.3i
.\" header and footer size
.nr HM 0.7i
.nr FM 0.9i
.\" paragraph indentation
.nr PI 0.13i
.\" spacing between paragraphs
.nr PD 0.05v
.TL
My title
.AU
My name
.AB no
This is the main file for mamaging the novel. The content of the novel is called my the "so" [sic] command.
.sp 4
.AE
.PSPIC my-postscript-image.ps
.LP
.sp 1
.XS
Text.
.XE
.bp
.so groff-ehoes-template.ms
.TC
.sp 2
.I
This table of contents appears back here from a fascinating limit of the particular 1970s technology I used to build it. The single-pass formatter can produce only what the table of content macro collects up to the point where it appears.
