#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/yws/UMV_Project/rotor/src/rotors_simulator/rqt_rotors"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/yws/UMV_Project/rotor/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/yws/UMV_Project/rotor/install/lib/python2.7/dist-packages:/home/yws/UMV_Project/rotor/build/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/yws/UMV_Project/rotor/build" \
    "/usr/bin/python2" \
    "/home/yws/UMV_Project/rotor/src/rotors_simulator/rqt_rotors/setup.py" \
     \
    build --build-base "/home/yws/UMV_Project/rotor/build/rotors_simulator/rqt_rotors" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/yws/UMV_Project/rotor/install" --install-scripts="/home/yws/UMV_Project/rotor/install/bin"
