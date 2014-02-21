dnl $Id$
dnl config.m4 for extension php-stringcharacteriterator

dnl Comments in this file start with the string 'dnl'.
dnl Remove where necessary. This file will not work
dnl without editing.

dnl If your extension references something external, use with:

PHP_ARG_WITH(php-stringcharacteriterator, for php-stringcharacteriterator support,
Make sure that the comment is aligned:
[  --with-php-stringcharacteriterator             Include php-stringcharacteriterator support])

dnl Otherwise use enable:

dnl PHP_ARG_ENABLE(php-stringcharacteriterator, whether to enable php-stringcharacteriterator support,
dnl Make sure that the comment is aligned:
dnl [  --enable-php-stringcharacteriterator           Enable php-stringcharacteriterator support])

if test "$PHP_PHP-STRINGCHARACTERITERATOR" != "no"; then
  dnl Write more examples of tests here...

  dnl # --with-php-stringcharacteriterator -> check with-path
  dnl SEARCH_PATH="/usr/local /usr"     # you might want to change this
  dnl SEARCH_FOR="/include/php-stringcharacteriterator.h"  # you most likely want to change this
  dnl if test -r $PHP_PHP-STRINGCHARACTERITERATOR/$SEARCH_FOR; then # path given as parameter
  dnl   PHP-STRINGCHARACTERITERATOR_DIR=$PHP_PHP-STRINGCHARACTERITERATOR
  dnl else # search default path list
  dnl   AC_MSG_CHECKING([for php-stringcharacteriterator files in default path])
  dnl   for i in $SEARCH_PATH ; do
  dnl     if test -r $i/$SEARCH_FOR; then
  dnl       PHP-STRINGCHARACTERITERATOR_DIR=$i
  dnl       AC_MSG_RESULT(found in $i)
  dnl     fi
  dnl   done
  dnl fi
  dnl
  dnl if test -z "$PHP-STRINGCHARACTERITERATOR_DIR"; then
  dnl   AC_MSG_RESULT([not found])
  dnl   AC_MSG_ERROR([Please reinstall the php-stringcharacteriterator distribution])
  dnl fi

  dnl # --with-php-stringcharacteriterator -> add include path
  dnl PHP_ADD_INCLUDE($PHP-STRINGCHARACTERITERATOR_DIR/include)

  dnl # --with-php-stringcharacteriterator -> check for lib and symbol presence
  dnl LIBNAME=php-stringcharacteriterator # you may want to change this
  dnl LIBSYMBOL=php-stringcharacteriterator # you most likely want to change this 

  dnl PHP_CHECK_LIBRARY($LIBNAME,$LIBSYMBOL,
  dnl [
  dnl   PHP_ADD_LIBRARY_WITH_PATH($LIBNAME, $PHP-STRINGCHARACTERITERATOR_DIR/lib, PHP-STRINGCHARACTERITERATOR_SHARED_LIBADD)
  dnl   AC_DEFINE(HAVE_PHP-STRINGCHARACTERITERATORLIB,1,[ ])
  dnl ],[
  dnl   AC_MSG_ERROR([wrong php-stringcharacteriterator lib version or lib not found])
  dnl ],[
  dnl   -L$PHP-STRINGCHARACTERITERATOR_DIR/lib -lm
  dnl ])
  dnl
  dnl PHP_SUBST(PHP-STRINGCHARACTERITERATOR_SHARED_LIBADD)

  PHP_NEW_EXTENSION(php-stringcharacteriterator, php-stringcharacteriterator.c, $ext_shared)
fi
