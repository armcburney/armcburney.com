# frozen_string_literal: true

# Helper methods for article views
module ArticlesHelper
  module_function

  # Custom block_code rule for HighlightJS integration
  class CustomCodeRenderer < Redcarpet::Render::HTML
    def block_code(code, language)
      %(<pre><code class='#{language}'>#{code}</code></pre>)
    end
  end

  # Parser to convert markdown into HTML
  # Render markdown and return HTML
  def render_html!(text)
    parser = Redcarpet::Markdown.new(
      CustomCodeRenderer.new,
      fenced_code_blocks: true,
      disable_indented_code_blocks: true
    )
    parser.render(text)
  end

  def logged_in?
    request.authorization.present?
  end
end
