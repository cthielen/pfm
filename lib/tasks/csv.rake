namespace :csv do
  desc "Import transactions from a .csv file"
  task :import, [:csv_file] => :environment do |t, args|
    require 'csv'
    require 'date'

    CSV.foreach(args[:csv_file]) do |row|
      csv_date = row[0]
      csv_type = row[1] # 'Withdrawal', 'Deposit', 'Check'
      csv_check_no = row[2]
      csv_vendor = row[3]
      csv_memo = row[4]
      csv_category = row[5]
      csv_account_name = row[6]
      csv_amount = row[7]

      # Find or create account
      account = Account.where(name: csv_account_name).first_or_create

      # Find or create category
      category = Category.where(name: csv_category).first_or_create

      # Find or create vendor
      vendor = Vendor.where(name: csv_vendor).first_or_create

      # Create transaction
      transaction = Transaction.new

      transaction.created_at = transaction.cleared_at = transaction.reconciled_at = Date.parse(csv_date)
      transaction.account = account
      transaction.category = category
      transaction.vendor = vendor

      # We could use .tokenize but that may be insecure
      case csv_type
      when 'Withdrawal'
        transaction.kind = :withdrawal
      when 'Deposit'
        transaction.kind = :deposit
      when 'Check'
        transaction.kind = :check
      else
        puts "Unknown transaction type: #{csv_type}"
      end

      transaction.check_no = csv_check_no
      transaction.memo = csv_memo

      transaction.amount = csv_amount.gsub(/[^\d\.-]/,'').to_f # remove non-digit characters (except the minus and period sign)

      transaction.save!
    end
  end
end
