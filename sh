mkdir ruby-web-scraper
cd ruby-web-scraper
git init
echo "# Ruby Web Scraper" > README.md

cat <<EOL > scraper.rb
require 'nokogiri'
require 'open-uri'

url = 'https://example.com'
html = URI.open(url)
doc = Nokogiri::HTML(html)

doc.css('h1').each do |heading|
  puts heading.text
end
EOL

echo "gem 'nokogiri'" > Gemfile

bundle install

git add .
git commit -m "Initial commit with web scraper"
git remote add origin https://github.com/ваше_имя_на_GitHub/ruby-web-scraper.git
git push -u origin master
