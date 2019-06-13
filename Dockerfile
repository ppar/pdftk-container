#
# Simple docker container to run the "pdftk" CLI tool
#
# References:
#
# https://www.linux.com/learn/manipulating-pdfs-pdf-toolkit
# https://www.pdflabs.com/tools/pdftk-the-pdf-toolkit/
# https://github.com/documentcloud/docsplit/issues/123#issuecomment-202587896
# https://copr.fedorainfracloud.org/coprs/robert/gcj/
# https://copr.fedorainfracloud.org/coprs/robert/pdftk/
#

FROM centos:7

# Update it
RUN yum update -y

# Install backported dependencies
RUN yum install -y yum-plugin-copr
RUN yum copr enable -y robert/gcj

# Install backported pdftk
RUN yum copr enable -y robert/pdftk
RUN yum install -y pdftk

WORKDIR /data
ENTRYPOINT ["/usr/bin/pdftk"]



