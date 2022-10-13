#!/usr/bin/env bash

read -p "Name: " -r  input
git config --global user.name "$input"

read -p "E-Mail: " -r input
git config --global user.email "$input"