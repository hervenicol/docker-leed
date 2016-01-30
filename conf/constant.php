<?php
define('VERSION_NUMBER','1.6.1');
define('VERSION_NAME','dev');

//Host de Mysql, le plus souvent localhost ou 127.0.0.1
define('MYSQL_HOST',$_SERVER['LEED_MYSQL_HOST']);
//Identifiant MySQL
define('MYSQL_LOGIN',$_SERVER['LEED_MYSQL_LOGIN']);
//mot de passe MySQL
define('MYSQL_MDP',$_SERVER['LEED_MYSQL_MDP']);
//Nom de la base MySQL ou se trouvera leed
define('MYSQL_BDD',$_SERVER['LEED_MYSQL_BDD']);
//Prefix des noms des tables leed pour les bases de données uniques
define('MYSQL_PREFIX',$_SERVER['LEED_MYSQL_PREFIX']);
?>
