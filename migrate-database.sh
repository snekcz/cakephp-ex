#!/bin/bash
set -e 
ck="D:/OpenShift/cakephp-ex/lib/Cake/Console"

if [ ! -f app/Config/Schema/schema.php ]; then
	echo "Generating database schema 'cake schema generate' ..."
	$ck/cake schema generate
fi

echo "Migrating database 'cake schema create' ..."
$ck/cake schema create
