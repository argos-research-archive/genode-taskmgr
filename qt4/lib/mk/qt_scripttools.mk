include $(REP_DIR)/lib/import/import-qt_scripttools.mk

SHARED_LIB = yes

# extracted from src/script/Makefile
QT_DEFINES += -DQT_BUILD_SCRIPTTOOLS_LIB -DQT_NO_USING_NAMESPACE -DQT_NO_CAST_TO_ASCII -DQT_ASCII_CAST_WARNINGS -DQT_MOC_COMPAT -DQT_NO_DEBUG -DQT_SCRIPT_LIB -DQT_GUI_LIB -DQT_CORE_LIB

# use default warning level to avoid noise when compiling contrib code
CC_WARN =

# extracted from src/script/Makefile
QT_SOURCES = \
  qscriptdebuggervalue.cpp \
  qscriptdebuggervalueproperty.cpp \
  qscriptdebuggercommand.cpp \
  qscriptdebuggerresponse.cpp \
  qscriptdebuggerevent.cpp \
  qscriptdebuggercommandexecutor.cpp \
  qscriptdebuggercommandschedulerfrontend.cpp \
  qscriptdebuggerbackend.cpp \
  qscriptdebuggeragent.cpp \
  qscriptdebuggerfrontend.cpp \
  qscriptstdmessagehandler.cpp \
  qscriptenginedebuggerfrontend.cpp \
  qscriptdebuggerjob.cpp \
  qscriptdebuggercommandschedulerjob.cpp \
  qscriptvalueproperty.cpp \
  qscriptobjectsnapshot.cpp \
  qscriptscriptdata.cpp \
  qscriptxmlparser.cpp \
  qscriptbreakpointdata.cpp \
  qscriptdebugger.cpp \
  qscriptdebuggerconsole.cpp \
  qscriptdebuggerconsolecommand.cpp \
  qscriptdebuggerconsolecommandjob.cpp \
  qscriptdebuggerconsolecommandgroupdata.cpp \
  qscriptdebuggerconsolecommandmanager.cpp \
  qscriptcompletiontaskinterface.cpp \
  qscriptcompletiontask.cpp \
  qscriptdebuggerconsoleglobalobject.cpp \
  qscriptdebuggerscriptedconsolecommand.cpp \
  qscriptedit.cpp \
  qscriptsyntaxhighlighter.cpp \
  qscriptdebuggerconsolewidgetinterface.cpp \
  qscriptdebuggerconsolewidget.cpp \
  qscriptdebuggerstackwidgetinterface.cpp \
  qscriptdebuggerstackwidget.cpp \
  qscriptdebuggerstackmodel.cpp \
  qscriptdebuggerscriptswidgetinterface.cpp \
  qscriptdebuggerscriptswidget.cpp \
  qscriptdebuggerscriptsmodel.cpp \
  qscriptdebuggerlocalswidgetinterface.cpp \
  qscriptdebuggerlocalswidget.cpp \
  qscriptdebuggerlocalsmodel.cpp \
  qscriptdebuggercodewidgetinterface.cpp \
  qscriptdebuggercodewidget.cpp \
  qscriptdebuggercodeviewinterface.cpp \
  qscriptdebuggercodeview.cpp \
  qscriptdebuggercodefinderwidgetinterface.cpp \
  qscriptdebuggercodefinderwidget.cpp \
  qscriptdebugoutputwidgetinterface.cpp \
  qscriptdebugoutputwidget.cpp \
  qscriptbreakpointswidgetinterface.cpp \
  qscriptbreakpointswidget.cpp \
  qscriptbreakpointsmodel.cpp \
  qscripterrorlogwidgetinterface.cpp \
  qscripterrorlogwidget.cpp \
  qscriptdebuggerstandardwidgetfactory.cpp \
  qscriptenginedebugger.cpp \
  moc_qscriptcompletiontaskinterface_p.cpp \
  moc_qscriptcompletiontask_p.cpp \
  moc_qscriptdebuggerconsoleglobalobject_p.cpp \
  moc_qscriptedit_p.cpp \
  moc_qscriptdebuggerconsolewidgetinterface_p.cpp \
  moc_qscriptdebuggerstackwidgetinterface_p.cpp \
  moc_qscriptdebuggerscriptswidgetinterface_p.cpp \
  moc_qscriptdebuggerscriptsmodel_p.cpp \
  moc_qscriptdebuggerlocalswidgetinterface_p.cpp \
  moc_qscriptdebuggerlocalsmodel_p.cpp \
  moc_qscriptdebuggercodewidgetinterface_p.cpp \
  moc_qscriptdebuggercodeviewinterface_p.cpp \
  moc_qscriptdebuggercodefinderwidgetinterface_p.cpp \
  moc_qscriptdebugoutputwidgetinterface_p.cpp \
  moc_qscriptdebugoutputwidget_p.cpp \
  moc_qscriptbreakpointswidgetinterface_p.cpp \
  moc_qscriptbreakpointsmodel_p.cpp \
  moc_qscripterrorlogwidgetinterface_p.cpp \
  moc_qscripterrorlogwidget_p.cpp \
  qrc_scripttools_debugging.cpp

# some source files need to be generated by moc from other source/header files before
# they get #included again by the original source file in the compiling stage

# source files generated from existing header files ("moc_%.cpp: %.h" rule in spec-qt4.mk)
# extracted from "compiler_moc_header_make_all" target
COMPILER_MOC_HEADER_MAKE_ALL_FILES = \
  moc_qscriptdebugger_p.cpp \
  moc_qscriptcompletiontaskinterface_p.cpp \
  moc_qscriptcompletiontask_p.cpp \
  moc_qscriptdebuggerconsoleglobalobject_p.cpp \
  moc_qscriptedit_p.cpp \
  moc_qscriptdebuggerconsolewidgetinterface_p.cpp \
  moc_qscriptdebuggerconsolewidget_p.cpp \
  moc_qscriptdebuggerstackwidgetinterface_p.cpp \
  moc_qscriptdebuggerstackwidget_p.cpp \
  moc_qscriptdebuggerscriptswidgetinterface_p.cpp \
  moc_qscriptdebuggerscriptswidget_p.cpp \
  moc_qscriptdebuggerscriptsmodel_p.cpp \
  moc_qscriptdebuggerlocalswidgetinterface_p.cpp \
  moc_qscriptdebuggerlocalswidget_p.cpp \
  moc_qscriptdebuggerlocalsmodel_p.cpp \
  moc_qscriptdebuggercodewidgetinterface_p.cpp \
  moc_qscriptdebuggercodewidget_p.cpp \
  moc_qscriptdebuggercodeviewinterface_p.cpp \
  moc_qscriptdebuggercodeview_p.cpp \
  moc_qscriptdebuggercodefinderwidgetinterface_p.cpp \
  moc_qscriptdebuggercodefinderwidget_p.cpp \
  moc_qscriptdebugoutputwidgetinterface_p.cpp \
  moc_qscriptdebugoutputwidget_p.cpp \
  moc_qscriptbreakpointswidgetinterface_p.cpp \
  moc_qscriptbreakpointswidget_p.cpp \
  moc_qscriptbreakpointsmodel_p.cpp \
  moc_qscripterrorlogwidgetinterface_p.cpp \
  moc_qscripterrorlogwidget_p.cpp \
  moc_qscriptenginedebugger.cpp

# source files generated from existing source files ("%.moc: %.cpp" rule in spec-qt4.mk)
# extracted from "compiler_moc_source_make_all" rule
COMPILER_MOC_SOURCE_MAKE_ALL_FILES = \
  qscriptdebuggerconsolewidget.moc \
  qscriptdebuggerlocalswidget.moc \
  qscriptbreakpointswidget.moc \
  qscriptenginedebugger.moc

QT4_INC_DIR += $(REP_DIR)/include/qt4/QtScript/private \
               $(REP_DIR)/contrib/$(QT4)/include/QtScript/private \
               $(REP_DIR)/include/qt4/QtScriptTools/private \
               $(REP_DIR)/contrib/$(QT4)/include/QtScriptTools/private \
               $(REP_DIR)/src/lib/qt4/src/corelib/global

LIBS += qt_core libc

vpath % $(REP_DIR)/include/qt4/QtScriptTools
vpath % $(REP_DIR)/include/qt4/QtScriptTools/private

vpath % $(REP_DIR)/src/lib/qt4/src/scripttools/debugging
vpath % $(REP_DIR)/contrib/$(QT4)/src/scripttools/debugging

include $(REP_DIR)/lib/mk/qt.inc
