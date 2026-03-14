# README

This README would normally document whatever steps are necessary to get the application up and running.

*****  Initial application creation  *****
------------------------------------------
1) Navigate inside 'workspace' folder
2) Create blog directory --> Run 'mkdir blog'
3) Navigate inside blog directory.
4) Create ruby local version --> Run 'rbenv local 3.4.6'    
5) Install rails version --> Run 'gem install rails -v=8.1.0'
6) Create blog application with postgresql db and no test framework --> Run 'rails _8.1.0_ new . --database=postgresql -T'

*****  Git repo creation and initial push  *****
------------------------------------------------
1) Navigate to github.com and create 'blog' repository
2) Navigate to 'blog' project folder and run following commands
    git init
    git add *
    git commit -m "first commit"
    git branch -M main
    git remote add origin git@github.com:ashwinsantebennur/blog.git
    git push -u origin main