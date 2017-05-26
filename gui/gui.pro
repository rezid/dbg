#-------------------------------------------------
#
# Project created by QtCreator 2016-08-26T00:16:58
#
#-------------------------------------------------

QT       += core gui widgets

TARGET = gui

TEMPLATE = lib

DEFINES += \
    BUILD_LIB \
    QT_DEPRECATED_WARNINGS

SOURCES += \
    Src/main.cpp \
    Src/Gui/MainWindow.cpp \
    Src/Gui/CPUWidget.cpp \
    Src/Gui/CommandLineEdit.cpp \
    Src/BasicView/Disassembly.cpp \
    Src/BasicView/HexDump.cpp \
    Src/BasicView/AbstractTableView.cpp \
    Src/Disassembler/QBeaEngine.cpp \
    Src/Memory/ProcessMemoryMap.cpp \
    Src/Memory/MemoryPage.cpp \
    Src/Memory/MapViewOfMem.cpp \
    Src/Bridge/Bridge.cpp \
    Src/BasicView/StdTable.cpp \
    Src/BasicView/MemoryMapView.cpp \
    Src/BasicView/LogView.cpp \
    Src/Gui/GotoDialog.cpp \
    Src/Disassembler/BeaHighlight.cpp \
    Src/BasicView/RegistersView.cpp \
    Src/Gui/StatusLabel.cpp \
    Src/BasicView/WordEditDialog.cpp

HEADERS += \
    Src/main.h \
    Src/Gui/MainWindow.h \
    Src/Gui/CPUWidget.h \
    Src/Gui/CommandLineEdit.h \
    Src/BasicView/Disassembly.h \
    Src/BasicView/HexDump.h \
    Src/BasicView/AbstractTableView.h \
    Src/Disassembler/QBeaEngine.h \
    Src/Memory/ProcessMemoryMap.h \
    Src/Memory/MemoryPage.h \
    Src/Memory/MapViewOfMem.h \
    Src/Bridge/Bridge.h \
    Src/Global/NewTypes.h \
    Src/Exports.h \
    Src/Imports.h \
    Src/BasicView/StdTable.h \
    Src/BasicView/MemoryMapView.h \
    Src/BasicView/LogView.h \
    Src/Gui/GotoDialog.h \
    Src/Disassembler/BeaHighlight.h \
    Src/BasicView/RegistersView.h \
    Src/Gui/StatusLabel.h \
    Src/BasicView/WordEditDialog.h

INCLUDEPATH += \
    Src \
    Src/Gui \
    Src/BasicView \
    Src/Disassembler \
    Src/BeaEngine \
    Src/ThirdPartyLibs/BeaEngine \
    Src/Memory \
    Src/Bridge \
    Src/Global

FORMS += \
    Src/Gui/MainWindow.ui \
    Src/Gui/CPUWidget.ui \
    Src/Gui/GotoDialog.ui \
    Src/BasicView/WordEditDialog.ui \
    Src/BasicView/RegistersView32.ui

LIBS += \
    -L"$$PWD/Src/ThirdPartyLibs/BeaEngine/" -lBeaEngine \
    -L"$$PWD/Src/Bridge/" -lbridge \
    -luser32

RESOURCES += \
    resource.qrc
