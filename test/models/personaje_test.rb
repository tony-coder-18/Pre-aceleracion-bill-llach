# == Schema Information
#
# Table name: personajes
#
#  id         :integer          not null, primary key
#  edad       :integer
#  historia   :text
#  imagen     :string
#  nombre     :string
#  peso       :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require "test_helper"

class PersonajeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
