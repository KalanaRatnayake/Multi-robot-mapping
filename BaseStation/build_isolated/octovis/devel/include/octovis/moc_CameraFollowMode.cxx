/****************************************************************************
** Meta object code from reading C++ file 'CameraFollowMode.h'
**
** Created by: The Qt Meta Object Compiler version 63 (Qt 4.8.7)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../../../src/octomap-devel/octovis/include/octovis/CameraFollowMode.h"
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'CameraFollowMode.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 63
#error "This file was generated using the moc from 4.8.7. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
static const uint qt_meta_data_CameraFollowMode[] = {

 // content:
       6,       // revision
       0,       // classname
       0,    0, // classinfo
      26,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
      15,       // signalCount

 // signals: signature, parameters, type, tag, flags
      23,   18,   17,   17, 0x05,
      75,   55,   17,   17, 0x05,
     136,   17,   17,   17, 0x05,
     152,  146,   17,   17, 0x05,
     174,  171,   17,   17, 0x05,
     205,  196,   17,   17, 0x05,
     235,  196,   17,   17, 0x05,
     269,  261,   17,   17, 0x05,
     310,  171,   17,   17, 0x05,
     341,  196,   17,   17, 0x05,
     388,  373,   17,   17, 0x05,
     412,  171,   17,   17, 0x05,
     432,  196,   17,   17, 0x05,
     462,  456,   17,   17, 0x05,
     499,  489,   17,   17, 0x05,

 // slots: signature, parameters, type, tag, flags
     524,  146,   17,   17, 0x0a,
     542,  171,   17,   17, 0x0a,
     589,  565,   17,   17, 0x0a,
     621,   17,   17,   17, 0x0a,
     628,   17,   17,   17, 0x0a,
     636,   17,   17,   17, 0x0a,
     654,   17,   17,   17, 0x0a,
     673,   17,   17,   17, 0x0a,
     691,   17,   17,   17, 0x0a,
     714,   17,   17,   17, 0x0a,
     733,   17,   17,   17, 0x0a,

       0        // eod
};

static const char qt_meta_stringdata_CameraFollowMode[] = {
    "CameraFollowMode\0\0pose\0"
    "changeCamPose(octomath::Pose6D)\0"
    "old_pose,new_pose,u\0"
    "interpolateCamPose(octomath::Pose6D,octomath::Pose6D,double)\0"
    "stopped()\0frame\0frameChanged(uint)\0"
    "id\0deleteCameraPath(int)\0id,frame\0"
    "removeFromCameraPath(int,int)\0"
    "updateCameraPath(int,int)\0id,pose\0"
    "appendToCameraPath(int,octomath::Pose6D)\0"
    "appendCurrentToCameraPath(int)\0"
    "addCurrentToCameraPath(int,int)\0"
    "id,start_frame\0playCameraPath(int,int)\0"
    "stopCameraPath(int)\0jumpToCamFrame(int,int)\0"
    "count\0changeNumberOfFrames(uint)\0"
    "available\0scanGraphAvailable(bool)\0"
    "jumpToFrame(uint)\0cameraPathStopped(int)\0"
    "id,current_camera_frame\0"
    "cameraPathFrameChanged(int,int)\0play()\0"
    "pause()\0clearCameraPath()\0saveToCameraPath()\0"
    "addToCameraPath()\0removeFromCameraPath()\0"
    "followCameraPath()\0followRobotPath()\0"
};

void CameraFollowMode::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        Q_ASSERT(staticMetaObject.cast(_o));
        CameraFollowMode *_t = static_cast<CameraFollowMode *>(_o);
        switch (_id) {
        case 0: _t->changeCamPose((*reinterpret_cast< const octomath::Pose6D(*)>(_a[1]))); break;
        case 1: _t->interpolateCamPose((*reinterpret_cast< const octomath::Pose6D(*)>(_a[1])),(*reinterpret_cast< const octomath::Pose6D(*)>(_a[2])),(*reinterpret_cast< double(*)>(_a[3]))); break;
        case 2: _t->stopped(); break;
        case 3: _t->frameChanged((*reinterpret_cast< uint(*)>(_a[1]))); break;
        case 4: _t->deleteCameraPath((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 5: _t->removeFromCameraPath((*reinterpret_cast< int(*)>(_a[1])),(*reinterpret_cast< int(*)>(_a[2]))); break;
        case 6: _t->updateCameraPath((*reinterpret_cast< int(*)>(_a[1])),(*reinterpret_cast< int(*)>(_a[2]))); break;
        case 7: _t->appendToCameraPath((*reinterpret_cast< int(*)>(_a[1])),(*reinterpret_cast< const octomath::Pose6D(*)>(_a[2]))); break;
        case 8: _t->appendCurrentToCameraPath((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 9: _t->addCurrentToCameraPath((*reinterpret_cast< int(*)>(_a[1])),(*reinterpret_cast< int(*)>(_a[2]))); break;
        case 10: _t->playCameraPath((*reinterpret_cast< int(*)>(_a[1])),(*reinterpret_cast< int(*)>(_a[2]))); break;
        case 11: _t->stopCameraPath((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 12: _t->jumpToCamFrame((*reinterpret_cast< int(*)>(_a[1])),(*reinterpret_cast< int(*)>(_a[2]))); break;
        case 13: _t->changeNumberOfFrames((*reinterpret_cast< uint(*)>(_a[1]))); break;
        case 14: _t->scanGraphAvailable((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 15: _t->jumpToFrame((*reinterpret_cast< uint(*)>(_a[1]))); break;
        case 16: _t->cameraPathStopped((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 17: _t->cameraPathFrameChanged((*reinterpret_cast< int(*)>(_a[1])),(*reinterpret_cast< int(*)>(_a[2]))); break;
        case 18: _t->play(); break;
        case 19: _t->pause(); break;
        case 20: _t->clearCameraPath(); break;
        case 21: _t->saveToCameraPath(); break;
        case 22: _t->addToCameraPath(); break;
        case 23: _t->removeFromCameraPath(); break;
        case 24: _t->followCameraPath(); break;
        case 25: _t->followRobotPath(); break;
        default: ;
        }
    }
}

const QMetaObjectExtraData CameraFollowMode::staticMetaObjectExtraData = {
    0,  qt_static_metacall 
};

const QMetaObject CameraFollowMode::staticMetaObject = {
    { &QObject::staticMetaObject, qt_meta_stringdata_CameraFollowMode,
      qt_meta_data_CameraFollowMode, &staticMetaObjectExtraData }
};

#ifdef Q_NO_DATA_RELOCATION
const QMetaObject &CameraFollowMode::getStaticMetaObject() { return staticMetaObject; }
#endif //Q_NO_DATA_RELOCATION

const QMetaObject *CameraFollowMode::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->metaObject : &staticMetaObject;
}

void *CameraFollowMode::qt_metacast(const char *_clname)
{
    if (!_clname) return 0;
    if (!strcmp(_clname, qt_meta_stringdata_CameraFollowMode))
        return static_cast<void*>(const_cast< CameraFollowMode*>(this));
    return QObject::qt_metacast(_clname);
}

int CameraFollowMode::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QObject::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 26)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 26;
    }
    return _id;
}

// SIGNAL 0
void CameraFollowMode::changeCamPose(const octomath::Pose6D & _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 0, _a);
}

// SIGNAL 1
void CameraFollowMode::interpolateCamPose(const octomath::Pose6D & _t1, const octomath::Pose6D & _t2, double _t3)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)), const_cast<void*>(reinterpret_cast<const void*>(&_t2)), const_cast<void*>(reinterpret_cast<const void*>(&_t3)) };
    QMetaObject::activate(this, &staticMetaObject, 1, _a);
}

// SIGNAL 2
void CameraFollowMode::stopped()
{
    QMetaObject::activate(this, &staticMetaObject, 2, 0);
}

// SIGNAL 3
void CameraFollowMode::frameChanged(unsigned int _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 3, _a);
}

// SIGNAL 4
void CameraFollowMode::deleteCameraPath(int _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 4, _a);
}

// SIGNAL 5
void CameraFollowMode::removeFromCameraPath(int _t1, int _t2)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)), const_cast<void*>(reinterpret_cast<const void*>(&_t2)) };
    QMetaObject::activate(this, &staticMetaObject, 5, _a);
}

// SIGNAL 6
void CameraFollowMode::updateCameraPath(int _t1, int _t2)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)), const_cast<void*>(reinterpret_cast<const void*>(&_t2)) };
    QMetaObject::activate(this, &staticMetaObject, 6, _a);
}

// SIGNAL 7
void CameraFollowMode::appendToCameraPath(int _t1, const octomath::Pose6D & _t2)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)), const_cast<void*>(reinterpret_cast<const void*>(&_t2)) };
    QMetaObject::activate(this, &staticMetaObject, 7, _a);
}

// SIGNAL 8
void CameraFollowMode::appendCurrentToCameraPath(int _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 8, _a);
}

// SIGNAL 9
void CameraFollowMode::addCurrentToCameraPath(int _t1, int _t2)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)), const_cast<void*>(reinterpret_cast<const void*>(&_t2)) };
    QMetaObject::activate(this, &staticMetaObject, 9, _a);
}

// SIGNAL 10
void CameraFollowMode::playCameraPath(int _t1, int _t2)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)), const_cast<void*>(reinterpret_cast<const void*>(&_t2)) };
    QMetaObject::activate(this, &staticMetaObject, 10, _a);
}

// SIGNAL 11
void CameraFollowMode::stopCameraPath(int _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 11, _a);
}

// SIGNAL 12
void CameraFollowMode::jumpToCamFrame(int _t1, int _t2)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)), const_cast<void*>(reinterpret_cast<const void*>(&_t2)) };
    QMetaObject::activate(this, &staticMetaObject, 12, _a);
}

// SIGNAL 13
void CameraFollowMode::changeNumberOfFrames(unsigned  _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 13, _a);
}

// SIGNAL 14
void CameraFollowMode::scanGraphAvailable(bool _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 14, _a);
}
QT_END_MOC_NAMESPACE
