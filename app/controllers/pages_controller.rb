class PagesController < ApplicationController
  def top
    @content = "ローカル"
    @p = Page.all
  end


  def help
    @content = Page.find_by(id: 2)
    @content.body = "頑張ります"
    @content.save
  end

  def about
    @contents = Page.all
    @content = Page.find_by(id: 1)
    @content[:body] = "こんにちは"
    @content.save
    p "======================="
    p @contents
    p "======================="
  end
end
