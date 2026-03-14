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
    1) git init
    2) git add .
    3) git commit -m "Initial application commit"
    4) git branch -M main
    5) git remote add origin git@github.com:ashwinsantebennur/blog.git
    6) git push -u origin main
3) Run git status / git log to check the status of commits.


*****  Steps to start using Rspec as test framework  *****
----------------------------------------------------------
1) Open Gemfile and add "gem 'rspec-rails', '~> 8.0'" to file
2) Navigate Terminal to project path
3) Run 'rails generate rspec:install'
4) Add following lines to /config/application.rb file

    # Use Rspec as a default test framework
    config.generators do |g|
      g.test_framework :rspec
    end
