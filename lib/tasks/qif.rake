namespace :qif do
  desc "Import transactions from a .qif file"
  task :import, [:qif_file] => :environment do |t, args|

    raise ".qif support not implemented."
    
    # require 'qif'
    #
    # qif = Qif::Reader.new(open(args[:qif_file]))
    #
    # qif.each do |transaction|
    #   puts [transaction.name, transaction.description, transaction.amount].join(", ")
    # end
  end
end
