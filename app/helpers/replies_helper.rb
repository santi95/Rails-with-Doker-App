module RepliesHelper
  def markdownify_reply(content)
    pipeline_context = { gfm: true,:asset_root => "https://a248.e.akamai.net/assets.github.com/images/icons"}
    pipeline = HTML::Pipeline.new [
      HTML::Pipeline::MarkdownFilter,
      HTML::Pipeline::EmojiFilter
    ], pipeline_context
    pipeline.call(content)[:output].to_s
  end
end
