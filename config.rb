activate :automatic_image_sizes
activate :directory_indexes
activate :livereload

activate :autoprefixer do |config|
  config.browsers = ['last 2 versions', 'Explorer >= 9']
  config.cascade = false
end

# Creates pretty URLs
activate :directory_indexes

###
# Helpers
###

# Determines if the current page is active
#
# == Parameters
#
# * +page+ - The page to check
#
# == Usage
#
#   = link_to 'Home', '/', class: ( 'is-active' if is_page_active('/') )
#
# def is_page_active(page)
#   current_page.url == page
# end

helpers do

  # Turns a string into a slugable string
  #
  # == Parameters
  #
  # * +string+ - The string to convert
  #
  # == Usage
  #
  #   slugify('This is my string')
  #
  def slugify(string)
    string.downcase.strip.gsub(' ', '-').gsub(/[^\w-]/, '')
  end

  # Gets the highest number in an array
  #
  # == Usage
  #
  #   getMax([6,6,8])
  #
  def getMax(nums)
    maxBets = nums
    maxBets.max
  end

  # Gets the sum of numbers in an array
  #
  # == Usage
  #
  #   getSum([6,6,8])
  #
  def getSum(nums)
    sum = nums
    sum.inject(:+)
  end

  # Checks if an array has a string value
  #
  # == Usage
  #
  #   hasThing(["i", "love", "arrays"], "love")
  #
  def hasThing(string1, string2)
    has = string1
    has.include?(string2)
  end

  # Calculates total spins of all sessions
  #
  # == Usage
  #
  #   =totalSpins
  #
  def totalSpins
    sum = data.roulettingale.map {|s| s["totalSpins"]}
    sum.inject(:+)
  end

  # Calculates minimum bankroll of all sessions
  #
  # == Usage
  #
  #   =profitUnits
  #
  def totalWins
    sum = data.roulettingale.map {|s| s["wins"]}
    sum.inject(:+)
  end

  # Calculates profit of all sessions
  #
  # == Usage
  #
  #   getProfit(num)
  #
  def getProfit(num1, num2)
    sum = nums
    sum.inject(:+)
  end

  # Calculates max bet of all sessions
  #
  # == Usage
  #
  #   =maxBet
  #
  def maxBet
    data.roulettingale.map {|s| s["maxBet"]}.max
  end

  # Calculates minimum bankroll of all sessions
  #
  # == Usage
  #
  #   =minBankroll
  #
  def minBankroll
    data.roulettingale.map {|s| s["minBankroll"]}.max
  end

  # Outputs an array of all wins for Chartist
  #
  # == Usage
  #
  #   =chartistWins
  #
  def chartistWins
    data.roulettingale.map {|s| s["wins"]}
  end

  # Outputs an array of all total spins for Chartist
  #
  # == Usage
  #
  #   =chartistSpins
  #
  def chartistSpins
    data.roulettingale.map {|s| s["totalSpins"]}
  end

  # Outputs an array of all total spins for Chartist
  #
  # == Usage
  #
  #   =chartistSpins
  #
  def chartistBankroll
    data.roulettingale.map {|s| s["minBankroll"]}
  end

end

###
# Asset settings
###

set :css_dir, 'assets/stylesheets'
set :js_dir, 'assets/javascripts'
set :images_dir, 'assets/images'
set :fonts_dir, 'assets/fonts'


###
# Blog 'posts' settings
###

# Time.zone = "UTC"

activate :blog do |blog|
  # This will add a prefix to all links, template references and source paths
  blog.name = "posts"
  blog.prefix = "posts"

  blog.permalink = "{tags}/{title}"
  # Matcher for blog source files
  blog.sources = "{title}.html"
  # blog.taglink = "tags/{tag}.html"
  # blog.layout = "layout"
  # blog.summary_separator = /(READMORE)/
  # blog.summary_length = 250
  # blog.year_link = "{year}.html"
  # blog.month_link = "{year}/{month}.html"
  # blog.day_link = "{year}/{month}/{day}.html"
  # blog.default_extension = ".markdown"

  blog.tag_template = "tag.html"
  blog.calendar_template = "calendar.html"

  # Enable pagination
  # blog.paginate = true
  # blog.per_page = 10
  # blog.page_link = "page/{num}"
end


###
# Blog 'blips' settings
###

activate :blog do |blog|
  # This will add a prefix to all links, template references and source paths
  blog.name = "blips"
  blog.prefix = "blips"

  blog.permalink = "{title}"
  # Matcher for blog source files
  blog.sources = "{title}.html"
  # blog.taglink = "tags/{tag}.html"
  # blog.layout = "layout"
  # blog.summary_separator = /(READMORE)/
  # blog.summary_length = 250
  # blog.year_link = "{year}.html"
  # blog.month_link = "{year}/{month}.html"
  # blog.day_link = "{year}/{month}/{day}.html"
  # blog.default_extension = ".markdown"

  blog.tag_template = "tag.html"
  blog.calendar_template = "calendar.html"

  # Enable pagination
  # blog.paginate = true
  # blog.per_page = 10
  # blog.page_link = "page/{num}"
end


###
# Blog 'tinkerings' settings
###

activate :blog do |blog|
  # This will add a prefix to all links, template references and source paths
  blog.name = "tinkerings"
  blog.prefix = "tinkerings"

  blog.permalink = "{title}"
  # Matcher for blog source files
  blog.sources = "{title}.html"
  # blog.taglink = "tags/{tag}.html"
  # blog.layout = "layout"
  # blog.summary_separator = /(READMORE)/
  # blog.summary_length = 250
  # blog.year_link = "{year}.html"
  # blog.month_link = "{year}/{month}.html"
  # blog.day_link = "{year}/{month}/{day}.html"
  # blog.default_extension = ".markdown"

  blog.tag_template = "tag.html"
  blog.calendar_template = "calendar.html"

  # Enable pagination
  # blog.paginate = true
  # blog.per_page = 10
  # blog.page_link = "page/{num}"
end

###
# Blog feed settings
###

page "/feed.xml", layout: false

###
# Build Configuration
###
configure :build do
  activate :minify_css
  activate :minify_javascript
  activate :relative_assets
end


