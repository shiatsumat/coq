#!/usr/bin/env bash

ci_dir="$(dirname "$0")"
. "${ci_dir}/ci-common.sh"

git_download coqtail

( cd "${CI_BUILD_DIR}/coqtail" && PYTHONPATH=python python3 -m pytest tests/test_coqtop.py )
