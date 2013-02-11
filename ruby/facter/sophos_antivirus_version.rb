Facter.add('sophos_antivirus_version') do
  confine :operatingsystem => :darwin
  setcode do
    if File.exists?('/usr/bin/sweep')
      Facter::Util::Resolution.exec("/usr/bin/sweep -v | /usr/bin/grep -E 'Product version' | /usr/bin/awk '{ print $4 }'")
    end
  end
end