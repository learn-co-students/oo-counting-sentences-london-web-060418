require 'pry'

class String

  def sentence?
    if self.end_with?(".")
      return true
    else
      false
    end
  end

  def question?
    if self.end_with?("?")
      return true
    else
      return false
    end
  end

  def exclamation?
    if self.end_with?("!")
      return true
    else
      return false
    end
  end

  def count_sentences

    new_array = []
    new_array = self.split(/[\.?!]/)
    new_array.each do |item|
      if item.length <= 1
        new_array.delete(item)
      end
    end
    new_array.count
  end



end
