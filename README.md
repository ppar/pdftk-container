# pdftk-container

Simple docker image to run the `pdftk` CLI tool for manipulating PDFs.

See https://www.pdflabs.com/tools/pdftk-the-pdf-toolkit/

## Usage

- Run `make` to build the docker image locally
- Run `pdftk.sh [arguments]` to run pdftk

### 2-sided scans

If you need 2-sided scans but only have a cheap single-sided document feeder, scan both
sides of the stack separately, then with the "front" sides in the correct order in 
`DOC130619-1.pdf` and the reverse sides in reverse order in `DOC130619-2.pdf`,

```
~/src/pdftk-container/pdftk.sh A=DOC130619-1.pdf B=DOC130619-2.pdf shuffle A Bend-1 output collated.pdf
```

