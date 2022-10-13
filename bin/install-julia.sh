#!/usr/bin/env bash

SCRIPT_PATH=$( dirname "$0" )

"${SCRIPT_PATH}"/header.sh "Install Julia"
mkdir -pv "${HOME}/.languages/julia"
cd ~/.languages && \
    wget https://julialang-s3.julialang.org/bin/linux/x64/1.8/julia-1.8.2-linux-x86_64.tar.gz && \
    tar xzf julia-1.8.2-linux-x86_64.tar.gz
rm -v "${HOME}/bin/julia"
cd - && ln -s "${HOME}"/.languages/julia-1.8.2/bin/julia "${HOME}"/bin/julia
