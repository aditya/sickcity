require 'curb'
require 'nokogiri'

namespace "sickcity" do

  desc %{Clean noisy tweets}
  task :clean_noisy_tweets => :environment do |t|
    Mention.find(:all).each do |m| 
      # This is necessary due to some weirdness where the class methods aren't
      # be loaded or SOMETHING.
      puts m

      tweet_id = m.link.split('/').last
      twitter_url = "http://twitter.com/statuses/show/#{tweet_id}.xml" 
      doc = Curl::Easy.perform(twitter_url)
      parsed_doc = Nokogiri.parse(doc.body_str)

      text = parsed_doc.search("text").inner_html
      if text =~ /RT/ || text =~ /http/ || text =~ /\@/ || (text =~ /\#/ && !(text =~ / \#sickcity/))
        # Need to run a good test before we start destroying. Make sure to
        # backup the DB too.
        
        # m.destroy

        puts text
      end
    end
  end
end
