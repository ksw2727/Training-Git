
class cockpit {
         package { 'cockpit'                                         :
                 ensure => present                                   ,
         }

         file    { '/etc/cockpit/cockpit.conf'                       :
                 ensure     =>  file                                 ,
                 content    =>  template('cockpit/cockpit.conf.erb') ,
                 require    =>  Package['cockpit']                   ,
         }

         service { 'cockpit'                                         :
                 ensure     =>  running                              ,
                 enable     =>  true                                 ,
                 hasrestart =>  true                                 ,
                 require    =>  [ File['/etc/cockpit/cockpit.conf'] ],
         }
}
