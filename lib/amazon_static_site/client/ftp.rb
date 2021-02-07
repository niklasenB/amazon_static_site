module AmazonStaticSite
  module Client
    class ftp < Base

      def download_from()
        ftp = Net::FTP.new('')
        ftp.login
        files = ftp.chdir('pub/lang/ruby/contrib')
        files = ftp.list('n*')
        ftp.getbinaryfile('nif.rb-0.91.gz', 'nif.gz', 1024)
        ftp.close
      end
