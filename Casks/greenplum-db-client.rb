cask 'greenplum-db-client' do
  version '4.3.8.2'
  sha256 '1d1a7defcaf58907f4892758dad231f9db72b382554efc7347cd2785aaf53b96'

  url 'https://s3.amazonaws.com/s3gpdb/greenplum-clients-4.3.8.2-build-1-OSX-i386.zip'
  name 'Greenplum Database Client'
  homepage 'https://greenplum.org'

  installer script: {
    executable: 'greenplum-clients-4.3.8.2-build-1-OSX-i386.bin',
    input:  ['yes', 'yes'],
  }
  uninstall delete: '/usr/local/greenplum-clients-4.3.8.2-build-1/'

  caveats <<-EOS.undent
    Installing this Cask means you have AGREED to the Pivotal Greenplum Database
    License Agreement

    https://network.pivotal.io/legal_documents/pivotal_software_eula
  EOS
end
