# Set the host name for URL creation
SitemapGenerator::Sitemap.default_host = "http://www.tufcvenom.com"

SitemapGenerator::Sitemap.add_links do |sitemap|
  # Put links creation logic here.
  #
  # The root path '/' and sitemap index file are added automatically.
  # Links are added to the Sitemap in the order they are specified.
  #
  # Usage: sitemap.add(path, options={})
  #        (default options are used if you don't specify)
  #
  # Defaults: :priority => 0.5, :changefreq => 'weekly',
  #           :lastmod => Time.now, :host => default_host
  #
  #
  # Examples:
  #
  # Add '/articles'
  #
  #   sitemap.add articles_path, :priority => 0.7, :changefreq => 'daily'
  #
  # Add individual articles:
  #
  #   Article.find_each do |article|
  #     sitemap.add article_path(article), :lastmod => article.updated_at
  #   end

  #Static Pages Additions

  sitemap.add '/about'
  sitemap.add '/contact'
  sitemap.add '/sendmail'
  sitemap.add '/signin'
  sitemap.add '/signout'


  #Model Additions

  Newsletter.find(:all).each do |newsletter|
    sitemap.add newsletter_path(newsletter), :lastmod => newsletter.updated_at
  end

  Game.find(:all).each do |game|
    sitemap.add game_path(game), :lastmod => game.updated_at
  end

  Player.find(:all).each do |player|
    sitemap.add newsletter_path(player), :lastmod => player.updated_at
  end
end

