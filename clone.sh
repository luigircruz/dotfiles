#!/bin/sh

echo "Cloning repositories..."

SITES=$HOME/Sites
LARAVEL=$SITES/laravel
PKGS=$HOME/Packages

# Personal
git clone git@github.com:luigircruz/luigircruz.com.git $SITES/luigicruz.dev
git clone git@github.com:luigircruz/og-image.git $SITES/og-image
git clone git@github.com:luigircruz/wizard.git $SITES/wizard
git clone git@github.com:luigircruz/ui-fragments.git $PKGS/ui-fragments
