# Public: Install KeePassX.app into /Applications.
#
# Examples
#
#   include keepassx
class keepassx ( $use_Keepassx_2 = false ) {
  if $use_Keepassx_2 {
    package { 'KeePassX 2.0':
      provider => 'appdmg',
      source   => 'https://www.keepassx.org/dev/attachments/download/72/KeePassX-2.0-alpha6.dmg'
    }
  } else {
    package { 'KeePassX':
      provider => 'appdmg',
      source   => 'http://downloads.sourceforge.net/keepassx/KeePassX-0.4.3.dmg'
    }
  }
  
}
