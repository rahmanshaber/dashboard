#-------------------------------------------------
#
# Project created by QtCreator 2018-08-20T09:12:54
#
#-------------------------------------------------

QT       += core gui widgets charts dbus network

TARGET = about
TEMPLATE = app

DEFINES += QT_DEPRECATED_WARNINGS

CONFIG += c++11
CONFIG += silent warn_on

# library for theme and components
unix:!macx: LIBS += /usr/lib/libcprime.a
unix:!macx: LIBS += /usr/lib/libcsys.a

FORMS += \
    circlebar.ui \
    dashboard.ui \
    history_chart.ui \
    pbattery.ui \
    pdisplay.ui \
    pdrives.ui \
    pgeneral.ui \
    presources.ui

HEADERS += \
    circlebar.h \
    dashboard.h \
    history_chart.h \
    pbattery.h \
    pdisplay.h \
    pdrives.h \
    pgeneral.h \
    presources.h \
    signal_mapper.h \
    utilities.h

SOURCES += \
    circlebar.cpp \
    dashboard.cpp \
    history_chart.cpp \
    main.cpp \
    pbattery.cpp \
    pdisplay.cpp \
    pdrives.cpp \
    pgeneral.cpp \
    presources.cpp \
    signal_mapper.cpp

RESOURCES += \
    icons.qrc

# Disable warnings, enable threading support and c++11
CONFIG += thread silent build_all c++11

# Disable Debug on Release
# CONFIG(release):DEFINES += QT_NO_DEBUG_OUTPUT

# Build location

BUILD_PREFIX = $$(CA_BUILD_DIR)

isEmpty( BUILD_PREFIX ) {
        BUILD_PREFIX = ./build
}

MOC_DIR       = $$BUILD_PREFIX/moc-qt5
OBJECTS_DIR   = $$BUILD_PREFIX/obj-qt5
RCC_DIR	      = $$BUILD_PREFIX/qrc-qt5
UI_DIR        = $$BUILD_PREFIX/uic-qt5


unix {
        isEmpty(PREFIX) {
                PREFIX = /usr
        }
        BINDIR = $$PREFIX/bin

        target.path = $$BINDIR

        desktop.path = $$PREFIX/share/applications/
        desktop.files = "Dashboard.desktop"

        icons.path = $$PREFIX/share/icons/CoreApps/
        icons.files = icons/Dashboard.svg

        INSTALLS += target icons desktop
}

DEFINES += QT_DEPRECATED_WARNINGS
DEFINES += "HAVE_POSIX_OPENPT"
