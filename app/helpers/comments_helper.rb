module CommentsHelper
  def display_errors(comment)
    return unless comment.errors.full_messages.any?

    content_tag :p, "Post could not be saved. #{comment.errors.full_messages.join('. ')}", class: 'errors'
  end
end
