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

echo_and_run cd "/home/makarand/Documents/shania_triton_ws/src/accerion-ros-node/accerion_driver"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/makarand/Documents/shania_triton_ws/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/makarand/Documents/shania_triton_ws/install/lib/python2.7/dist-packages:/home/makarand/Documents/shania_triton_ws/build/accerion_driver/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/makarand/Documents/shania_triton_ws/build/accerion_driver" \
    "/usr/bin/python2" \
    "/home/makarand/Documents/shania_triton_ws/src/accerion-ros-node/accerion_driver/setup.py" \
     \
    build --build-base "/home/makarand/Documents/shania_triton_ws/build/accerion_driver" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/makarand/Documents/shania_triton_ws/install" --install-scripts="/home/makarand/Documents/shania_triton_ws/install/bin"
