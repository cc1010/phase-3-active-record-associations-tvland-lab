class Network < ActiveRecord::Base
  has_many :shows

  #sorry: returns a string "We're sorry about passing on John Mulaney's pilot".
  def sorry
      "We're sorry about passing on John Mulaney's pilot"
  end
end
