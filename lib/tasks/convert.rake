require 'roo'
require 'rake'
namespace :convert do

  desc "load from product.xls to database "
  task xls: :environment do

    xlsx = Roo::Excelx.new("lib/tasks/car.xlsx")
    puts xlsx.info

    xlsx.each(name: 'name', price: 'price') do |hash|

    p =  Product.new(eval hash.inspect)
      p.save
    end

    end


end
