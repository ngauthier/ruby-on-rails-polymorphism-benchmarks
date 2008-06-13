require 'test_helper'
require 'benchmark'

class StringAssocIndexTest < ActiveSupport::TestCase
  include Benchmark
  def test_benchmark
    items_to_insert = build_items_list(str_types)
    items_in_db = []
    
    bm(12) do |test|
      test.report("StrIC") do
        for i in 1..insert_count
          item = items_to_insert.delete_at(rand(items_to_insert.size))
          StringAssocIndex.create!(:fk => item[0], :type => item[1])
          items_in_db.push(item)
        end
      end
      
      test.report("StrIF") do
        for i in 1..find_count
          item = items_in_db.delete_at(rand(items_in_db.size))
          StringAssocIndex.find :first, :conditions => {:fk => item[0], :type => item[1]}
          items_to_insert.push(item)
        end
      end
    end
  end
end
