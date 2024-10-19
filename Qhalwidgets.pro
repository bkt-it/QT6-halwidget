CONFIG      += core svg plugin debug_and_release
TARGET      = $$qtLibraryTarget(halwidgetsplugin)
TEMPLATE    = lib

HEADERS     = componentplugin.h buttonplugin.h labelplugin.h ledplugin.h sliderplugin.h gcodeplugin.h halwidgets.h
SOURCES     = componentplugin.cpp buttonplugin.cpp labelplugin.cpp ledplugin.cpp sliderplugin.cpp gcodeplugin.cpp halwidgets.cpp
RESOURCES   = /home/gc81/.progetti/hal_widgets-main/Qhalwidgets/icons.qrc
LIBS        += -L. 

greaterThan(QT_MAJOR_VERSION, 4) {
    QT += designer
} else {
    CONFIG += designer
}

target.path = /home/gc81/Qt/Tools/QtCreator/lib/Qt/plugins/designer
INSTALLS    += target

include(label.pri)
include(gcode.pri)
include(slider.pri)
include(component.pri)
include(button.pri)
include(led.pri)

#Lcnc
INCLUDEPATH += /usr/include/linuxcnc
INCLUDEPATH += /usr/include
INCLUDEPATH += /usr/lib
INCLUDEPATH += /usr/lib/linuxcnc/modules
INCLUDEPATH += /home/gc81/linuxcnc-dev/src/hal/utils
INCLUDEPATH += /home/gc81/linuxcnc-dev/src/hal
INCLUDEPATH += /home/gc81/linuxcnc-dev/src/
INCLUDEPATH += /home/gc81/linuxcnc-dev/src/hal
\

LIBS+= -L//usr/share/linuxcnc/hallib
#LIBS+= -L/opt/linuxcnc/tcl/
#LIBS+= -L/opt/halview/
LIBS+= -llinuxcnchal

# Create a .so simlink to : /opt/qt-creator/Tools/QtCreator/lib/Qt/plugins/designer
