CONFIG      += core svg plugin debug_and_release
TARGET      = $$qtLibraryTarget(halwidgetsplugin)
TEMPLATE    = lib

#### nameplace yd = your project directory (for example /home/blur/.project)########################################################
#### nameplace ydLC = your LinuxCnc rip install directory directory (for example like here your home like here /home/blur/)  #######

HEADERS     = componentplugin.h buttonplugin.h labelplugin.h ledplugin.h sliderplugin.h gcodeplugin.h halwidgets.h
SOURCES     = componentplugin.cpp buttonplugin.cpp labelplugin.cpp ledplugin.cpp sliderplugin.cpp gcodeplugin.cpp halwidgets.cpp
RESOURCES   = yd/QT6-halwidget/Qhalwidgets/icons.qrc
LIBS        += -L. 

greaterThan(QT_MAJOR_VERSION, 4) {
    QT += designer
} else {
    CONFIG += designer
}

target.path = ydLC/QT/Tools/QtCreator/lib/Qt/plugins/designer
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
INCLUDEPATH += ydLC/linuxcnc-dev/src/hal/utils
INCLUDEPATH += ydLC/linuxcnc-dev/src/hal
INCLUDEPATH += ydLC/linuxcnc-dev/src/
INCLUDEPATH += ydLC/linuxcnc-dev/src/hal
\

LIBS+= -L//usr/share/linuxcnc/hallib
LIBS+= -llinuxcnchal

# Create a .so simlink to : /opt/qt-creator/Tools/QtCreator/lib/Qt/plugins/designer
