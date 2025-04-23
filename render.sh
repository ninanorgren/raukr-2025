#!/bin/bash
## run in the cloned repo

## fail fast
set -e

docker_img="ghcr.io/nbisweden/workshop-raukr:1.5"
docker_dir="/home/rstudio/work"

# check if in the root of the repo
if [ ! -f "_quarto.yml" ]; then
    echo "Error: Are you in the root of the repo? _quarto.yml is missing."
    exit 1
fi

# start time for whole script
start=$(date +%s.%N)

echo "Rendering home files ..."
docker run --platform=linux/amd64 --rm -u 1000:1000 -v ${PWD}:${docker_dir} ${docker_img} quarto render index.qmd
docker run --platform=linux/amd64 --rm -u 1000:1000 -v ${PWD}:${docker_dir} ${docker_img} quarto render home_about.qmd
docker run --platform=linux/amd64 --rm -u 1000:1000 -v ${PWD}:${docker_dir} ${docker_img} quarto render home_faq.qmd
docker run --platform=linux/amd64 --rm -u 1000:1000 -v ${PWD}:${docker_dir} ${docker_img} quarto render home_gallery.qmd
docker run --platform=linux/amd64 --rm -u 1000:1000 -v ${PWD}:${docker_dir} ${docker_img} quarto render home_program.qmd
docker run --platform=linux/amd64 --rm -u 1000:1000 -v ${PWD}:${docker_dir} ${docker_img} quarto render home_registration.qmd
docker run --platform=linux/amd64 --rm -u 1000:1000 -v ${PWD}:${docker_dir} ${docker_img} quarto render home_schedule.qmd
docker run --platform=linux/amd64 --rm -u 1000:1000 -v ${PWD}:${docker_dir} ${docker_img} quarto render home_env.qmd

echo "Rendering slides ..."
docker run --platform=linux/amd64 --rm -u 1000:1000 -v ${PWD}:${docker_dir} ${docker_img} quarto render slides/demo/index.qmd
docker run --platform=linux/amd64 --rm -u 1000:1000 -v ${PWD}:${docker_dir} ${docker_img} quarto render slides/coding/index.qmd
docker run --platform=linux/amd64 --rm -u 1000:1000 -v ${PWD}:${docker_dir} ${docker_img} quarto render slides/debugging/index.qmd
docker run --platform=linux/amd64 --rm -u 1000:1000 -v ${PWD}:${docker_dir} ${docker_img} quarto render slides/ggplot/index.qmd
docker run --platform=linux/amd64 --rm -u 1000:1000 -v ${PWD}:${docker_dir} ${docker_img} quarto render slides/git/index.qmd
docker run --platform=linux/amd64 --rm -u 1000:1000 -v ${PWD}:${docker_dir} ${docker_img} quarto render slides/ml/index.qmd
docker run --platform=linux/amd64 --rm -u 1000:1000 -v ${PWD}:${docker_dir} ${docker_img} quarto render slides/oop/index.qmd
docker run --platform=linux/amd64 --rm -u 1000:1000 -v ${PWD}:${docker_dir} ${docker_img} quarto render slides/packages/index.qmd
docker run --platform=linux/amd64 --rm -u 1000:1000 -v ${PWD}:${docker_dir} ${docker_img} quarto render slides/quarto/index.qmd
docker run --platform=linux/amd64 --rm -u 1000:1000 -v ${PWD}:${docker_dir} ${docker_img} quarto render slides/r-env/index.qmd
docker run --platform=linux/amd64 --rm -u 1000:1000 -v ${PWD}:${docker_dir} ${docker_img} quarto render slides/reticulate/index.qmd
docker run --platform=linux/amd64 --rm -u 1000:1000 -v ${PWD}:${docker_dir} ${docker_img} quarto render slides/scripting/index.qmd
docker run --platform=linux/amd64 --rm -u 1000:1000 -v ${PWD}:${docker_dir} ${docker_img} quarto render slides/shiny/index.qmd
docker run --platform=linux/amd64 --rm -u 1000:1000 -v ${PWD}:${docker_dir} ${docker_img} quarto render slides/tidyverse/index.qmd
docker run --platform=linux/amd64 --rm -u 1000:1000 -v ${PWD}:${docker_dir} ${docker_img} quarto render slides/vectorization/index.qmd
docker run --platform=linux/amd64 --rm -u 1000:1000 -v ${PWD}:${docker_dir} ${docker_img} quarto render slides/index.qmd

echo "Rendering labs ..."
docker run --platform=linux/amd64 --rm -u 1000:1000 -v ${PWD}:${docker_dir} ${docker_img} quarto render labs/demo/index.qmd
docker run --platform=linux/amd64 --rm -u 1000:1000 -v ${PWD}:${docker_dir} ${docker_img} quarto render labs/coding/index.qmd
docker run --platform=linux/amd64 --rm -u 1000:1000 -v ${PWD}:${docker_dir} ${docker_img} quarto render labs/debugging/index.qmd
docker run --platform=linux/amd64 --rm -u 1000:1000 -v ${PWD}:${docker_dir} ${docker_img} quarto render labs/ggplot/index.qmd
docker run --platform=linux/amd64 --rm -u 1000:1000 -v ${PWD}:${docker_dir} ${docker_img} quarto render labs/git/index.qmd
docker run --platform=linux/amd64 --rm -u 1000:1000 -v ${PWD}:${docker_dir} ${docker_img} quarto render labs/ml/index.qmd
docker run --platform=linux/amd64 --rm -u 1000:1000 -v ${PWD}:${docker_dir} ${docker_img} quarto render labs/oop/index.qmd
docker run --platform=linux/amd64 --rm -u 1000:1000 -v ${PWD}:${docker_dir} ${docker_img} quarto render labs/packages/index.qmd
docker run --platform=linux/amd64 --rm -u 1000:1000 -v ${PWD}:${docker_dir} ${docker_img} quarto render labs/quarto/index.qmd
docker run --platform=linux/amd64 --rm -u 1000:1000 -v ${PWD}:${docker_dir} ${docker_img} quarto render labs/reticulate/index.qmd
docker run --platform=linux/amd64 --rm -u 1000:1000 -v ${PWD}:${docker_dir} ${docker_img} quarto render labs/scripting/index.qmd
docker run --platform=linux/amd64 --rm -u 1000:1000 -v ${PWD}:${docker_dir} ${docker_img} quarto render labs/shiny/index.qmd
docker run --platform=linux/amd64 --rm -u 1000:1000 -v ${PWD}:${docker_dir} ${docker_img} quarto render labs/tidyverse/index.qmd
docker run --platform=linux/amd64 --rm -u 1000:1000 -v ${PWD}:${docker_dir} ${docker_img} quarto render labs/vectorization/index.qmd
docker run --platform=linux/amd64 --rm -u 1000:1000 -v ${PWD}:${docker_dir} ${docker_img} quarto render labs/index.qmd

duration=$(echo "$(date +%s.%N) - $start" | bc) && echo "Total time elapsed: $duration seconds"

echo "All files rendered successfully."
exit 0
