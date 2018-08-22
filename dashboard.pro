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

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target


