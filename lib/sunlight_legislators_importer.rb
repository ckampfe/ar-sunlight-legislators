require 'csv'
require_relative '../app/models/legislator'

class SunlightLegislatorsImporter
  def self.import(filename)
    csv = CSV.new(File.open(filename), :headers => true)
    legis_args = Hash.new("")
    csv.each do |row|
      row.each do |field, value|
        legis_args[field] = value
      end
      Legislator.create!(:title => legis_args[:title],
                         :firstname => legis_args[:firstname],
                         :lastname => legis_args[:lastname],
                         :party => legis_args[:party],
                         :state => legis_args[:state],
                         :district => legis_args[:district],
                         :twitter_id => legis_args[:twitter_id])
    end
  end
end

# IF YOU WANT TO HAVE THIS FILE RUN ON ITS OWN AND NOT BE IN THE RAKEFILE, UNCOMMENT THE BELOW
# AND RUN THIS FILE FROM THE COMMAND LINE WITH THE PROPER ARGUMENT.
# begin
#   raise ArgumentError, "you must supply a filename argument" unless ARGV.length == 1
#   SunlightLegislatorsImporter.import(ARGV[0])
# rescue ArgumentError => e
#   $stderr.puts "Usage: ruby sunlight_legislators_importer.rb <filename>"
# rescue NotImplementedError => e
#   $stderr.puts "You shouldn't be running this until you've modified it with your implementation!"
# end
