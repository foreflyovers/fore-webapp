module ApplicationHelper
  def embed_iframe(content)
    "<iframe width='560' height='315' src='#{content}' frameborder='0' allowfullscreen></iframe>"
  end

  def logo_on_video(course)
    course.transparent_logo.present? ? course.transparent_logo.url(:medium)
                                      .gsub('s3-us-west-2.amazonaws.com/fore92', 'd1s5na5d5z3eyp.cloudfront.net')
                                      .gsub("http", "https") : 'logo.png'
  end

  def hyperlink_on_video(course)
    course.logo_hyperlink.present? ? course.logo_hyperlink : "https://foregolf.com"
  end
end
