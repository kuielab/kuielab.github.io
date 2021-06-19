rm -rf  /home/ielab/jekyll_workspace/tmp/ielab_blog/ 
sudo cp -R /home/ielab/jekyll_workspace/ielab/code/workspace/code/intelligence.korea.ac.kr/ /home/ielab/jekyll_workspace/tmp/ielab_blog
sudo chown ielab:ielab /home/ielab/jekyll_workspace/tmp/ielab_blog -R
rbenv global 2.7.0
rbenv rehash
cd /home/ielab/jekyll_workspace/tmp/ielab_blog/
bundle exec jekyll build
cd ..
sudo rm -rf /var/www/html/*
sudo cp -rf ielab_blog/_site/* /var/www/html/

sudo rm -rf /var/www/html/course
sudo mkdir /var/www/html/course
sudo /home/ielab/jekyll_workspace/course_management/publish.sh

sudo rm -rf /var/www/html/members
sudo mkdir /var/www/html/members
cd /home/ielab/jekyll_workspace/members
./_publish.sh

sudo cp -rf  /home/ielab/assets /var/www/html/

sudo chown www-data:www-data  /var/www/html/ -R
sudo chmod -R 750 /var/www/html/


