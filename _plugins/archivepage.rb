module Jekyll
  class ArchivePage < Page
    include Convertible
 
    attr_accessor :site, :pager, :name, :ext, :basename, :dir, :data, :content, :output
 
    # Initialize new ArchivePage
    # +site+ is the Site
    # +month+ is the month
    # +posts+ is the list of posts for the month
    #
    # Returns <ArchivePage>
    def initialize(site, base, dir, month, posts)
      @site = site
      @base = base
      @dir = dir
      @month = month
      @name = month
      self.ext = '.html'
      self.basename = 'index'
      self.content = <<-EOS
<ul>
{% for post in page.posts %}
<li><a href="{{ post.url }}">{{ post.title }}</a></li>
{% endfor %}
</ul>
EOS
      self.data = {
        'layout' => 'default',
        'type' => 'archive',
        'title' => "Archive for #{month}",
        'posts' => posts
      }
    end
 
    # Add any necessary layouts
    # +layouts+ is a Hash of {"name" => "layout"}
    # +site_payload+ is the site payload hash
    #
    # Returns nothing
    def render(layouts, site_payload)
      payload = {
        "page" => self.to_liquid,
        "paginator" => pager.to_liquid
      }.deep_merge(site_payload)
      do_layout(payload, layouts)
    end
 
    def url
      File.join("/", @base, @dir, @month, "index.html")
    end
    
    def to_liquid(attr = nil)
      self.data.deep_merge({
                             "url" => self.url,
                             "content" => self.content
                           })
    end
 
    # Write the generated page file to the destination directory.
    # +dest_prefix+ is the String path to the destination dir
    # +dest_suffix+ is a suffix path to the destination dir
    #
    # Returns nothing

# This code is not used: Convertible#write used insted for compatibility
#    def write(dest_prefix, dest_suffix = nil)
#      dest = dest_prefix
#      dest = File.join(dest, dest_suffix) if dest_suffix
#      FileUtils.mkdir_p(dest)
#      # The url needs to be unescaped in order to preserve the
#      # correct filename
#      path = "#{File.join(dest, CGI.unescape(self.url))}"
#      FileUtils.mkdir_p(File.dirname(path))
#      File.open(path, 'w') do |f|
#        f.write(self.output)
#      end
#    end
 
    def html?
      true
    end
  end
end
