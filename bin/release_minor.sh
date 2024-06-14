#!/usr/bin/env bash

# This script is used to release a new minor version of the project.
gem bump --version minor
bundle install
gem release