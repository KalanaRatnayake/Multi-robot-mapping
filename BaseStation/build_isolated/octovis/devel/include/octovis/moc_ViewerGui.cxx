/****************************************************************************
** Meta object code from reading C++ file 'ViewerGui.h'
**
** Created by: The Qt Meta Object Compiler version 63 (Qt 4.8.7)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../../../src/octomap-devel/octovis/include/octovis/ViewerGui.h"
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'ViewerGui.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 63
#error "This file was generated using the moc from 4.8.7. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
static const uint qt_meta_data_octomap__ViewerGui[] = {

 // content:
       6,       // revision
       0,       // classname
       0,    0, // classinfo
      51,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       5,       // signalCount

 // signals: signature, parameters, type, tag, flags
      37,   20,   19,   19, 0x05,
      72,   66,   19,   19, 0x05,
      98,   66,   19,   19, 0x05,
     133,  122,   19,   19, 0x05,
     182,  158,   19,   19, 0x05,

 // slots: signature, parameters, type, tag, flags
     249,  243,   19,   19, 0x0a,
     270,   66,   19,   19, 0x0a,
     289,   19,   19,   19, 0x0a,
     310,   19,  305,   19, 0x0a,
     320,   19,   19,   19, 0x08,
     346,   19,   19,   19, 0x08,
     377,   19,   19,   19, 0x08,
     421,   19,   19,   19, 0x08,
     452,   19,   19,   19, 0x08,
     493,  485,   19,   19, 0x08,
     534,   19,   19,   19, 0x08,
     571,   19,   19,   19, 0x08,
     607,   19,   19,   19, 0x08,
     655,   19,   19,   19, 0x08,
     702,   19,   19,   19, 0x08,
     748,   19,   19,   19, 0x08,
     793,   19,   19,   19, 0x08,
     840,   19,   19,   19, 0x08,
     895,   19,   19,   19, 0x08,
     921,   19,   19,   19, 0x08,
     951,   19,   19,   19, 0x08,
     983,   19,   19,   19, 0x08,
    1016,   19,   19,   19, 0x08,
    1053,   19,   19,   19, 0x08,
    1088,  485,   19,   19, 0x08,
    1125,  485,   19,   19, 0x08,
    1162,  485,   19,   19, 0x08,
    1196,  485,   19,   19, 0x08,
    1236,   19,   19,   19, 0x08,
    1270,   19,   19,   19, 0x08,
    1306,  485,   19,   19, 0x08,
    1340,  485,   19,   19, 0x08,
    1382, 1374,   19,   19, 0x08,
    1418, 1374,   19,   19, 0x08,
    1458, 1374,   19,   19, 0x08,
    1486, 1374,   19,   19, 0x08,
    1518,  485,   19,   19, 0x08,
    1546,  485,   19,   19, 0x08,
    1584,  485,   19,   19, 0x08,
    1626,   19,   19,   19, 0x08,
    1653,   19,   19,   19, 0x08,
    1684,   19,   19,   19, 0x08,
    1715,   19,   19,   19, 0x08,
    1745,   19,   19,   19, 0x08,
    1772,   19,   19,   19, 0x08,
    1799,   19,   19,   19, 0x08,

       0        // eod
};

static const char qt_meta_stringdata_octomap__ViewerGui[] = {
    "octomap::ViewerGui\0\0message,duration\0"
    "updateStatusBar(QString,int)\0scans\0"
    "changeNumberOfScans(uint)\0"
    "changeCurrentScan(uint)\0resolution\0"
    "changeResolution(double)\0"
    "x,y,z,lookX,lookY,lookZ\0"
    "changeCamPosition(double,double,double,double,double,double)\0"
    "depth\0changeTreeDepth(int)\0"
    "addNextScans(uint)\0gotoFirstScan()\0"
    "bool\0isShown()\0on_actionExit_triggered()\0"
    "on_actionOpen_file_triggered()\0"
    "on_actionOpen_graph_incremental_triggered()\0"
    "on_actionSave_file_triggered()\0"
    "on_actionExport_view_triggered()\0"
    "checked\0on_actionExport_sequence_triggered(bool)\0"
    "on_actionClear_selection_triggered()\0"
    "on_actionFill_selection_triggered()\0"
    "on_actionClear_unknown_in_selection_triggered()\0"
    "on_actionFill_unknown_in_selection_triggered()\0"
    "on_actionClear_nodes_in_selection_triggered()\0"
    "on_actionFill_nodes_in_selection_triggered()\0"
    "on_actionDelete_nodes_in_selection_triggered()\0"
    "on_actionDelete_nodes_outside_of_selection_triggered()\0"
    "on_actionHelp_triggered()\0"
    "on_actionSettings_triggered()\0"
    "on_actionPrune_tree_triggered()\0"
    "on_actionExpand_tree_triggered()\0"
    "on_actionConvert_ml_tree_triggered()\0"
    "on_actionReload_Octree_triggered()\0"
    "on_actionPrintout_mode_toggled(bool)\0"
    "on_actionSelection_box_toggled(bool)\0"
    "on_actionHeight_map_toggled(bool)\0"
    "on_actionSemanticColoring_toggled(bool)\0"
    "on_actionStore_camera_triggered()\0"
    "on_actionRestore_camera_triggered()\0"
    "on_actionPointcloud_toggled(bool)\0"
    "on_actionTrajectory_toggled(bool)\0"
    "enabled\0on_actionOctree_cells_toggled(bool)\0"
    "on_actionOctree_structure_toggled(bool)\0"
    "on_actionFree_toggled(bool)\0"
    "on_actionSelected_toggled(bool)\0"
    "on_actionAxes_toggled(bool)\0"
    "on_actionHideBackground_toggled(bool)\0"
    "on_actionAlternateRendering_toggled(bool)\0"
    "on_actionClear_triggered()\0"
    "on_action_bg_black_triggered()\0"
    "on_action_bg_white_triggered()\0"
    "on_action_bg_gray_triggered()\0"
    "on_savecampose_triggered()\0"
    "on_loadcampose_triggered()\0"
    "on_actionTest_triggered()\0"
};

void octomap::ViewerGui::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        Q_ASSERT(staticMetaObject.cast(_o));
        ViewerGui *_t = static_cast<ViewerGui *>(_o);
        switch (_id) {
        case 0: _t->updateStatusBar((*reinterpret_cast< QString(*)>(_a[1])),(*reinterpret_cast< int(*)>(_a[2]))); break;
        case 1: _t->changeNumberOfScans((*reinterpret_cast< uint(*)>(_a[1]))); break;
        case 2: _t->changeCurrentScan((*reinterpret_cast< uint(*)>(_a[1]))); break;
        case 3: _t->changeResolution((*reinterpret_cast< double(*)>(_a[1]))); break;
        case 4: _t->changeCamPosition((*reinterpret_cast< double(*)>(_a[1])),(*reinterpret_cast< double(*)>(_a[2])),(*reinterpret_cast< double(*)>(_a[3])),(*reinterpret_cast< double(*)>(_a[4])),(*reinterpret_cast< double(*)>(_a[5])),(*reinterpret_cast< double(*)>(_a[6]))); break;
        case 5: _t->changeTreeDepth((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 6: _t->addNextScans((*reinterpret_cast< uint(*)>(_a[1]))); break;
        case 7: _t->gotoFirstScan(); break;
        case 8: { bool _r = _t->isShown();
            if (_a[0]) *reinterpret_cast< bool*>(_a[0]) = _r; }  break;
        case 9: _t->on_actionExit_triggered(); break;
        case 10: _t->on_actionOpen_file_triggered(); break;
        case 11: _t->on_actionOpen_graph_incremental_triggered(); break;
        case 12: _t->on_actionSave_file_triggered(); break;
        case 13: _t->on_actionExport_view_triggered(); break;
        case 14: _t->on_actionExport_sequence_triggered((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 15: _t->on_actionClear_selection_triggered(); break;
        case 16: _t->on_actionFill_selection_triggered(); break;
        case 17: _t->on_actionClear_unknown_in_selection_triggered(); break;
        case 18: _t->on_actionFill_unknown_in_selection_triggered(); break;
        case 19: _t->on_actionClear_nodes_in_selection_triggered(); break;
        case 20: _t->on_actionFill_nodes_in_selection_triggered(); break;
        case 21: _t->on_actionDelete_nodes_in_selection_triggered(); break;
        case 22: _t->on_actionDelete_nodes_outside_of_selection_triggered(); break;
        case 23: _t->on_actionHelp_triggered(); break;
        case 24: _t->on_actionSettings_triggered(); break;
        case 25: _t->on_actionPrune_tree_triggered(); break;
        case 26: _t->on_actionExpand_tree_triggered(); break;
        case 27: _t->on_actionConvert_ml_tree_triggered(); break;
        case 28: _t->on_actionReload_Octree_triggered(); break;
        case 29: _t->on_actionPrintout_mode_toggled((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 30: _t->on_actionSelection_box_toggled((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 31: _t->on_actionHeight_map_toggled((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 32: _t->on_actionSemanticColoring_toggled((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 33: _t->on_actionStore_camera_triggered(); break;
        case 34: _t->on_actionRestore_camera_triggered(); break;
        case 35: _t->on_actionPointcloud_toggled((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 36: _t->on_actionTrajectory_toggled((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 37: _t->on_actionOctree_cells_toggled((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 38: _t->on_actionOctree_structure_toggled((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 39: _t->on_actionFree_toggled((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 40: _t->on_actionSelected_toggled((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 41: _t->on_actionAxes_toggled((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 42: _t->on_actionHideBackground_toggled((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 43: _t->on_actionAlternateRendering_toggled((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 44: _t->on_actionClear_triggered(); break;
        case 45: _t->on_action_bg_black_triggered(); break;
        case 46: _t->on_action_bg_white_triggered(); break;
        case 47: _t->on_action_bg_gray_triggered(); break;
        case 48: _t->on_savecampose_triggered(); break;
        case 49: _t->on_loadcampose_triggered(); break;
        case 50: _t->on_actionTest_triggered(); break;
        default: ;
        }
    }
}

const QMetaObjectExtraData octomap::ViewerGui::staticMetaObjectExtraData = {
    0,  qt_static_metacall 
};

const QMetaObject octomap::ViewerGui::staticMetaObject = {
    { &QMainWindow::staticMetaObject, qt_meta_stringdata_octomap__ViewerGui,
      qt_meta_data_octomap__ViewerGui, &staticMetaObjectExtraData }
};

#ifdef Q_NO_DATA_RELOCATION
const QMetaObject &octomap::ViewerGui::getStaticMetaObject() { return staticMetaObject; }
#endif //Q_NO_DATA_RELOCATION

const QMetaObject *octomap::ViewerGui::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->metaObject : &staticMetaObject;
}

void *octomap::ViewerGui::qt_metacast(const char *_clname)
{
    if (!_clname) return 0;
    if (!strcmp(_clname, qt_meta_stringdata_octomap__ViewerGui))
        return static_cast<void*>(const_cast< ViewerGui*>(this));
    return QMainWindow::qt_metacast(_clname);
}

int octomap::ViewerGui::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QMainWindow::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 51)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 51;
    }
    return _id;
}

// SIGNAL 0
void octomap::ViewerGui::updateStatusBar(QString _t1, int _t2)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)), const_cast<void*>(reinterpret_cast<const void*>(&_t2)) };
    QMetaObject::activate(this, &staticMetaObject, 0, _a);
}

// SIGNAL 1
void octomap::ViewerGui::changeNumberOfScans(unsigned  _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 1, _a);
}

// SIGNAL 2
void octomap::ViewerGui::changeCurrentScan(unsigned  _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 2, _a);
}

// SIGNAL 3
void octomap::ViewerGui::changeResolution(double _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 3, _a);
}

// SIGNAL 4
void octomap::ViewerGui::changeCamPosition(double _t1, double _t2, double _t3, double _t4, double _t5, double _t6)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)), const_cast<void*>(reinterpret_cast<const void*>(&_t2)), const_cast<void*>(reinterpret_cast<const void*>(&_t3)), const_cast<void*>(reinterpret_cast<const void*>(&_t4)), const_cast<void*>(reinterpret_cast<const void*>(&_t5)), const_cast<void*>(reinterpret_cast<const void*>(&_t6)) };
    QMetaObject::activate(this, &staticMetaObject, 4, _a);
}
QT_END_MOC_NAMESPACE
