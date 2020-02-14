/****************************************************************************
** Meta object code from reading C++ file 'ViewerSettingsPanelCamera.h'
**
** Created by: The Qt Meta Object Compiler version 63 (Qt 4.8.7)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../../../src/octomap-devel/octovis/include/octovis/ViewerSettingsPanelCamera.h"
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'ViewerSettingsPanelCamera.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 63
#error "This file was generated using the moc from 4.8.7. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
static const uint qt_meta_data_ViewerSettingsPanelCamera[] = {

 // content:
       6,       // revision
       0,       // classname
       0,    0, // classinfo
      27,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
      10,       // signalCount

 // signals: signature, parameters, type, tag, flags
      51,   27,   26,   26, 0x05,
     118,  112,   26,   26, 0x05,
     136,   26,   26,   26, 0x05,
     143,   26,   26,   26, 0x05,
     151,   26,   26,   26, 0x05,
     169,   26,   26,   26, 0x05,
     188,   26,   26,   26, 0x05,
     211,   26,   26,   26, 0x05,
     229,   26,   26,   26, 0x05,
     248,   26,   26,   26, 0x05,

 // slots: signature, parameters, type, tag, flags
     273,  266,   26,   26, 0x0a,
     297,  112,   26,   26, 0x0a,
     329,  319,   26,   26, 0x0a,
     363,   26,   26,   26, 0x0a,
     376,   26,   26,   26, 0x08,
     405,   26,   26,   26, 0x08,
     433,   26,   26,   26, 0x08,
     461,   26,   26,   26, 0x08,
     493,   26,   26,   26, 0x08,
     527,  521,   26,   26, 0x08,
     566,   26,   26,   26, 0x08,
     602,   26,   26,   26, 0x08,
     638,   26,   26,   26, 0x08,
     665,   26,   26,   26, 0x08,
     695,   26,   26,   26, 0x08,
     723,   26,   26,   26, 0x08,
     752,   26,   26,   26, 0x08,

       0        // eod
};

static const char qt_meta_stringdata_ViewerSettingsPanelCamera[] = {
    "ViewerSettingsPanelCamera\0\0"
    "x,y,z,lookX,lookY,lookZ\0"
    "changeCamPosition(double,double,double,double,double,double)\0"
    "frame\0jumpToFrame(uint)\0play()\0pause()\0"
    "clearCameraPath()\0saveToCameraPath()\0"
    "removeFromCameraPath()\0addToCameraPath()\0"
    "followCameraPath()\0followRobotPath()\0"
    "frames\0setNumberOfFrames(uint)\0"
    "setCurrentFrame(uint)\0available\0"
    "setRobotTrajectoryAvailable(bool)\0"
    "setStopped()\0on_firstScanButton_clicked()\0"
    "on_lastScanButton_clicked()\0"
    "on_nextScanButton_clicked()\0"
    "on_previousScanButton_clicked()\0"
    "on_playScanButton_clicked()\0value\0"
    "on_scanProgressSlider_sliderMoved(int)\0"
    "on_followCameraPathButton_clicked()\0"
    "on_followTrajectoryButton_clicked()\0"
    "on_cameraPathAdd_clicked()\0"
    "on_cameraPathRemove_clicked()\0"
    "on_cameraPathSave_clicked()\0"
    "on_cameraPathClear_clicked()\0"
    "positionEditDone(double)\0"
};

void ViewerSettingsPanelCamera::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        Q_ASSERT(staticMetaObject.cast(_o));
        ViewerSettingsPanelCamera *_t = static_cast<ViewerSettingsPanelCamera *>(_o);
        switch (_id) {
        case 0: _t->changeCamPosition((*reinterpret_cast< double(*)>(_a[1])),(*reinterpret_cast< double(*)>(_a[2])),(*reinterpret_cast< double(*)>(_a[3])),(*reinterpret_cast< double(*)>(_a[4])),(*reinterpret_cast< double(*)>(_a[5])),(*reinterpret_cast< double(*)>(_a[6]))); break;
        case 1: _t->jumpToFrame((*reinterpret_cast< uint(*)>(_a[1]))); break;
        case 2: _t->play(); break;
        case 3: _t->pause(); break;
        case 4: _t->clearCameraPath(); break;
        case 5: _t->saveToCameraPath(); break;
        case 6: _t->removeFromCameraPath(); break;
        case 7: _t->addToCameraPath(); break;
        case 8: _t->followCameraPath(); break;
        case 9: _t->followRobotPath(); break;
        case 10: _t->setNumberOfFrames((*reinterpret_cast< uint(*)>(_a[1]))); break;
        case 11: _t->setCurrentFrame((*reinterpret_cast< uint(*)>(_a[1]))); break;
        case 12: _t->setRobotTrajectoryAvailable((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 13: _t->setStopped(); break;
        case 14: _t->on_firstScanButton_clicked(); break;
        case 15: _t->on_lastScanButton_clicked(); break;
        case 16: _t->on_nextScanButton_clicked(); break;
        case 17: _t->on_previousScanButton_clicked(); break;
        case 18: _t->on_playScanButton_clicked(); break;
        case 19: _t->on_scanProgressSlider_sliderMoved((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 20: _t->on_followCameraPathButton_clicked(); break;
        case 21: _t->on_followTrajectoryButton_clicked(); break;
        case 22: _t->on_cameraPathAdd_clicked(); break;
        case 23: _t->on_cameraPathRemove_clicked(); break;
        case 24: _t->on_cameraPathSave_clicked(); break;
        case 25: _t->on_cameraPathClear_clicked(); break;
        case 26: _t->positionEditDone((*reinterpret_cast< double(*)>(_a[1]))); break;
        default: ;
        }
    }
}

const QMetaObjectExtraData ViewerSettingsPanelCamera::staticMetaObjectExtraData = {
    0,  qt_static_metacall 
};

const QMetaObject ViewerSettingsPanelCamera::staticMetaObject = {
    { &QWidget::staticMetaObject, qt_meta_stringdata_ViewerSettingsPanelCamera,
      qt_meta_data_ViewerSettingsPanelCamera, &staticMetaObjectExtraData }
};

#ifdef Q_NO_DATA_RELOCATION
const QMetaObject &ViewerSettingsPanelCamera::getStaticMetaObject() { return staticMetaObject; }
#endif //Q_NO_DATA_RELOCATION

const QMetaObject *ViewerSettingsPanelCamera::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->metaObject : &staticMetaObject;
}

void *ViewerSettingsPanelCamera::qt_metacast(const char *_clname)
{
    if (!_clname) return 0;
    if (!strcmp(_clname, qt_meta_stringdata_ViewerSettingsPanelCamera))
        return static_cast<void*>(const_cast< ViewerSettingsPanelCamera*>(this));
    return QWidget::qt_metacast(_clname);
}

int ViewerSettingsPanelCamera::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QWidget::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 27)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 27;
    }
    return _id;
}

// SIGNAL 0
void ViewerSettingsPanelCamera::changeCamPosition(double _t1, double _t2, double _t3, double _t4, double _t5, double _t6)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)), const_cast<void*>(reinterpret_cast<const void*>(&_t2)), const_cast<void*>(reinterpret_cast<const void*>(&_t3)), const_cast<void*>(reinterpret_cast<const void*>(&_t4)), const_cast<void*>(reinterpret_cast<const void*>(&_t5)), const_cast<void*>(reinterpret_cast<const void*>(&_t6)) };
    QMetaObject::activate(this, &staticMetaObject, 0, _a);
}

// SIGNAL 1
void ViewerSettingsPanelCamera::jumpToFrame(unsigned int _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 1, _a);
}

// SIGNAL 2
void ViewerSettingsPanelCamera::play()
{
    QMetaObject::activate(this, &staticMetaObject, 2, 0);
}

// SIGNAL 3
void ViewerSettingsPanelCamera::pause()
{
    QMetaObject::activate(this, &staticMetaObject, 3, 0);
}

// SIGNAL 4
void ViewerSettingsPanelCamera::clearCameraPath()
{
    QMetaObject::activate(this, &staticMetaObject, 4, 0);
}

// SIGNAL 5
void ViewerSettingsPanelCamera::saveToCameraPath()
{
    QMetaObject::activate(this, &staticMetaObject, 5, 0);
}

// SIGNAL 6
void ViewerSettingsPanelCamera::removeFromCameraPath()
{
    QMetaObject::activate(this, &staticMetaObject, 6, 0);
}

// SIGNAL 7
void ViewerSettingsPanelCamera::addToCameraPath()
{
    QMetaObject::activate(this, &staticMetaObject, 7, 0);
}

// SIGNAL 8
void ViewerSettingsPanelCamera::followCameraPath()
{
    QMetaObject::activate(this, &staticMetaObject, 8, 0);
}

// SIGNAL 9
void ViewerSettingsPanelCamera::followRobotPath()
{
    QMetaObject::activate(this, &staticMetaObject, 9, 0);
}
QT_END_MOC_NAMESPACE
