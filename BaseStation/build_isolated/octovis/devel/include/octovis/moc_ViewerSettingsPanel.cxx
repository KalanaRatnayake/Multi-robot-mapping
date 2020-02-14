/****************************************************************************
** Meta object code from reading C++ file 'ViewerSettingsPanel.h'
**
** Created by: The Qt Meta Object Compiler version 63 (Qt 4.8.7)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../../../src/octomap-devel/octovis/include/octovis/ViewerSettingsPanel.h"
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'ViewerSettingsPanel.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 63
#error "This file was generated using the moc from 4.8.7. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
static const uint qt_meta_data_ViewerSettingsPanel[] = {

 // content:
       6,       // revision
       0,       // classname
       0,    0, // classinfo
      11,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       3,       // signalCount

 // signals: signature, parameters, type, tag, flags
      27,   21,   20,   20, 0x05,
      55,   49,   20,   20, 0x05,
      74,   20,   20,   20, 0x05,

 // slots: signature, parameters, type, tag, flags
      90,   49,   20,   20, 0x0a,
     118,  113,   20,   20, 0x0a,
     150,  139,   20,   20, 0x0a,
     172,   21,   20,   20, 0x0a,
     190,   20,   20,   20, 0x08,
     219,   20,   20,   20, 0x08,
     247,   20,   20,   20, 0x08,
     275,   20,   20,   20, 0x08,

       0        // eod
};

static const char qt_meta_stringdata_ViewerSettingsPanel[] = {
    "ViewerSettingsPanel\0\0depth\0"
    "treeDepthChanged(int)\0scans\0"
    "addNextScans(uint)\0gotoFirstScan()\0"
    "setNumberOfScans(uint)\0scan\0"
    "setCurrentScan(uint)\0resolution\0"
    "setResolution(double)\0setTreeDepth(int)\0"
    "on_firstScanButton_clicked()\0"
    "on_lastScanButton_clicked()\0"
    "on_nextScanButton_clicked()\0"
    "on_fastFwdScanButton_clicked()\0"
};

void ViewerSettingsPanel::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        Q_ASSERT(staticMetaObject.cast(_o));
        ViewerSettingsPanel *_t = static_cast<ViewerSettingsPanel *>(_o);
        switch (_id) {
        case 0: _t->treeDepthChanged((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 1: _t->addNextScans((*reinterpret_cast< uint(*)>(_a[1]))); break;
        case 2: _t->gotoFirstScan(); break;
        case 3: _t->setNumberOfScans((*reinterpret_cast< uint(*)>(_a[1]))); break;
        case 4: _t->setCurrentScan((*reinterpret_cast< uint(*)>(_a[1]))); break;
        case 5: _t->setResolution((*reinterpret_cast< double(*)>(_a[1]))); break;
        case 6: _t->setTreeDepth((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 7: _t->on_firstScanButton_clicked(); break;
        case 8: _t->on_lastScanButton_clicked(); break;
        case 9: _t->on_nextScanButton_clicked(); break;
        case 10: _t->on_fastFwdScanButton_clicked(); break;
        default: ;
        }
    }
}

const QMetaObjectExtraData ViewerSettingsPanel::staticMetaObjectExtraData = {
    0,  qt_static_metacall 
};

const QMetaObject ViewerSettingsPanel::staticMetaObject = {
    { &QWidget::staticMetaObject, qt_meta_stringdata_ViewerSettingsPanel,
      qt_meta_data_ViewerSettingsPanel, &staticMetaObjectExtraData }
};

#ifdef Q_NO_DATA_RELOCATION
const QMetaObject &ViewerSettingsPanel::getStaticMetaObject() { return staticMetaObject; }
#endif //Q_NO_DATA_RELOCATION

const QMetaObject *ViewerSettingsPanel::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->metaObject : &staticMetaObject;
}

void *ViewerSettingsPanel::qt_metacast(const char *_clname)
{
    if (!_clname) return 0;
    if (!strcmp(_clname, qt_meta_stringdata_ViewerSettingsPanel))
        return static_cast<void*>(const_cast< ViewerSettingsPanel*>(this));
    return QWidget::qt_metacast(_clname);
}

int ViewerSettingsPanel::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QWidget::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 11)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 11;
    }
    return _id;
}

// SIGNAL 0
void ViewerSettingsPanel::treeDepthChanged(int _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 0, _a);
}

// SIGNAL 1
void ViewerSettingsPanel::addNextScans(unsigned  _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 1, _a);
}

// SIGNAL 2
void ViewerSettingsPanel::gotoFirstScan()
{
    QMetaObject::activate(this, &staticMetaObject, 2, 0);
}
QT_END_MOC_NAMESPACE
