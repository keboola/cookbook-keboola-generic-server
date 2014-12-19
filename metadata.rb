name             'keboola-generic-server'
maintainer       'YOUR_COMPANY_NAME'
maintainer_email 'YOUR_EMAIL'
license          'All rights reserved'
description      'Installs/Configures keboola-generic-server'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.2.2'


depends 'aws', '~> 2.4.0'
depends 'keboola-php55'
depends 'keboola-common'
depends 'keboola-apache2'