<?php

$CONFIG = array (
  'instanceid' => '1',
  'passwordsalt' => 'pxn2XGvZkXZA46kcdt65bieccHT7aTCdtD69ps8NtDWp8',
  'trusted_domains' =>
    array (
      0 => '{{ site_name }}',
    ),
  'datadirectory' => '{{ dataRoot }}',
  'dbtype' => 'mysql',
  'version' => '9.0.53',
  'dbname' => 'nextcloud',
  'dbhost' => '127.0.0.1',
  'dbtableprefix' => 'oc_',
  'dbuser' => 'www',
  'dbpassword' => '{{ mysql_root_password|default("root") }}',
  'installed' => true,
  'forcessl' => false,
  'loglevel' => 2,
  'theme' => '',
  'maintenance' => false,
  'secret' => 'pxn2XGvZkXZA46kcdt65bieccHT7aTCdtD69ps8NtDWp8',
  'redis' =>
    array (
      'host' => 'localhost',
      'port' => 6379,
      'timeout' => 0,
      'dbindex' => 0,
    ),
  'appstore.experimental.enabled' => true,
  'trashbin_retention_obligation' => 'auto',
  'overwrite.cli.url' => 'https://{{ site_name }}',
  'logtimezone' => 'UTC',
  'htaccess.RewriteBase' => '/',
);