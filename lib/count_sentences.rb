

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    sent_count = self.split /[.!?]/
    sentence_count = sent_count.reject(&:empty?)
    sentence_count.count
  end
end
