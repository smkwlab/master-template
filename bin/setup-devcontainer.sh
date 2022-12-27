#! /bin/sh
git remote add latex https://github.com/smkwlab/latex-environment.git
git fetch latex

# '.gitignore' should conflict. Ignore this error and use our one.
git merge --allow-unrelated-histories -m 'merge LaTeX environment' latex/main && true
git checkout --ours .gitignore

git add .gitignore
git commit -m 'merge LaTeX environment'
git push
