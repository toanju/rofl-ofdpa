AC_DEFUN([ROFL_OFDPA_VERSION],[
  if test -d $srcdir/.git; then
    PKG_VERSION=$(echo $VERSION | cut -f 1 -d-)
    GIT_RELEASE=$(echo $VERSION | cut -f 2 -d-)
    GIT_REF_SHORT=$(echo $VERSION | cut -f 3 -d- | sed -e 's/^g//')
    GIT_REF_LONG=$(which git 1>/dev/null 2>&1 && git rev-parse --verify HEAD)
  else
    PKG_VERSION=${VERSION}
  fi
  AC_SUBST([PKG_VERSION], [${PKG_VERSION}])
  AC_SUBST([GIT_RELEASE], [${GIT_RELEASE}])
  AC_SUBST([GIT_REF_SHORT], [${GIT_REF_SHORT}])
  AC_SUBST([GIT_REF_LONG], [${GIT_REF_LONG}])
])
