FROM debian:11.4-slim AS installer
ENV PATH /usr/local/bin/texlive:$PATH
WORKDIR /install-tl-unx
RUN apt-get update
RUN apt-get install -y \
  perl \
  wget \
  xz-utils \
  fontconfig
COPY ./texlive.profile ./
RUN wget -nv https://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz
RUN tar -xzf ./install-tl-unx.tar.gz --strip-components=1
RUN ./install-tl --profile=texlive.profile
RUN ln -sf /usr/local/texlive/*/bin/* /usr/local/bin/texlive
RUN tlmgr install \
  collection-fontsrecommended \
  latexmk

FROM debian:11.4-slim
ENV PATH /usr/local/bin/texlive:$PATH
WORKDIR /workdir
COPY --from=installer /usr/local/texlive /usr/local/texlive
RUN apt-get update \
  && apt-get install -y \
    perl \
    wget \
    git \
    python2 python-is-python2 \
    && rm -rf /var/lib/apt/lists/*
RUN ln -sf /usr/local/texlive/*/bin/* /usr/local/bin/texlive
RUN tlmgr install texliveonfly \
import \
framed \
type1cm \
setspace \
xcolor \
enumitem \
mathtools \
ragged2e \
float \
algorithm2e \
ifoddpage \
relsize \
algorithms \
titlesec \
microtype \
etoolbox \
changepage \
trimspaces \
datetime \
fmtcount \
xkeyval \
bigfoot \
mdframed \
zref \
needspace \
ulem \
footmisc \
substitutefont \
tempora \
tocloft \
background \
everypage \
pgf \
babel-russian \
cyrillic \
biblatex
ENTRYPOINT ["/bin/bash", "-c"]
