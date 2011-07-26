require 'rss/1.0'
require 'rss/2.0'
require 'open-uri'
require 'open-uri'


class RssReaderController < ApplicationController
  def first
    source = "http://search.twitter.com/search.atom?q=%23nggs11&count=10" # url or local file
    content = "" # raw content of rss feed will be loaded here
    open(source) do |s| content = s.read end
    File.open('test1.xml', 'w') do |f2|
      f2.puts content
    end
    @data =  Hash.from_xml(content)
  end

  def second
    source = "http://search.twitter.com/search.atom?q=%23nggs1&count=10" # url or local file
    content = "" # raw content of rss feed will be loaded here
    open(source) do |s| content = s.read end
    File.open('test2.xml', 'w') do |f2|
      f2.puts content
    end
    @data =  Hash.from_xml(content)
  end

  def third
    source = "http://search.twitter.com/search.atom?q=%23nggs2&count=10" # url or local file
    content = "" # raw content of rss feed will be loaded here
    open(source) do |s| content = s.read end
    File.open('test3.xml', 'w') do |f2|
      f2.puts content
    end
    @data =  Hash.from_xml(content)
  end
  def fourth
    source = "http://search.twitter.com/search.atom?q=%23nggs3&count=10" # url or local file
    content = "" # raw content of rss feed will be loaded here
    open(source) do |s| content = s.read end
    File.open('test4.xml', 'w') do |f2|
      f2.puts content
    end
    @data =  Hash.from_xml(content)
  end
end
