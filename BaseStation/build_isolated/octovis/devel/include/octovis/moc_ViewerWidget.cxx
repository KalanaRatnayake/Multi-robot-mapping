/****************************************************************************
** Meta object code from reading C++ file 'ViewerWidget.h'
**
** Created by: The Qt Meta Object Compiler version 63 (Qt 4.8.7)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../../../src/octomap-devel/octovis/include/octovis/ViewerWidget.h"
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'ViewerWidget.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 63
#error "This file was generated using the moc from 4.8.7. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
static const uint qt_meta_data_octomap__ViewerWidget[] = {

 // content:
       6,       // revision
       0,       // classname
       0,    0, // classinfo
      26,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       2,       // signalCount

 // signals: signature, parameters, type, tag, flags
      26,   23,   22,   22, 0x05,
      73,   49,   22,   22, 0x05,

 // slots: signature, parameters, type, tag, flags
     113,  105,   22,   22, 0x0a,
     138,   22,   22,   22, 0x2a,
     159,  105,   22,   22, 0x0a,
     187,   22,   22,   22, 0x2a,
     211,  105,   22,   22, 0x0a,
     240,   22,   22,   22, 0x2a,
     265,  105,   22,   22, 0x0a,
     290,   22,   22,   22, 0x2a,
     335,  311,   22,   22, 0x0a,
     398,  393,   22,   22, 0x0a,
     435,  427,   22,   22, 0x0a,
     486,   23,   22,   22, 0x0a,
     516,  508,   22,   22, 0x0a,
     557,   23,   22,   22, 0x0a,
     597,  588,   22,   22, 0x0a,
     629,  588,   22,   22, 0x0a,
     659,  588,   22,   22, 0x0a,
     685,  588,   22,   22, 0x0a,
     724,  709,   22,   22, 0x0a,
     748,   23,   22,   22, 0x0a,
     768,   22,   22,   22, 0x0a,
     783,   22,   22,   22, 0x0a,
     795,   22,   22,   22, 0x08,
     816,   22,   22,   22, 0x08,

       0        // eod
};

static const char qt_meta_stringdata_octomap__ViewerWidget[] = {
    "octomap::ViewerWidget\0\0id\0"
    "cameraPathStopped(int)\0id,current_camera_frame\0"
    "cameraPathFrameChanged(int,int)\0enabled\0"
    "enablePrintoutMode(bool)\0enablePrintoutMode()\0"
    "enableHeightColorMode(bool)\0"
    "enableHeightColorMode()\0"
    "enableSemanticColoring(bool)\0"
    "enableSemanticColoring()\0"
    "enableSelectionBox(bool)\0enableSelectionBox()\0"
    "x,y,z,lookX,lookY,lookZ\0"
    "setCamPosition(double,double,double,double,double,double)\0"
    "pose\0setCamPose(octomath::Pose6D)\0"
    "min,max\0setSceneBoundingBox(qglviewer::Vec,qglviewer::Vec)\0"
    "deleteCameraPath(int)\0id,pose\0"
    "appendToCameraPath(int,octomath::Pose6D)\0"
    "appendCurrentToCameraPath(int)\0id,frame\0"
    "addCurrentToCameraPath(int,int)\0"
    "removeFromCameraPath(int,int)\0"
    "updateCameraPath(int,int)\0"
    "jumpToCamFrame(int,int)\0id,start_frame\0"
    "playCameraPath(int,int)\0stopCameraPath(int)\0"
    "selectionBox()\0resetView()\0"
    "cameraPathFinished()\0cameraPathInterpolated()\0"
};

void octomap::ViewerWidget::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        Q_ASSERT(staticMetaObject.cast(_o));
        ViewerWidget *_t = static_cast<ViewerWidget *>(_o);
        switch (_id) {
        case 0: _t->cameraPathStopped((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 1: _t->cameraPathFrameChanged((*reinterpret_cast< int(*)>(_a[1])),(*reinterpret_cast< int(*)>(_a[2]))); break;
        case 2: _t->enablePrintoutMode((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 3: _t->enablePrintoutMode(); break;
        case 4: _t->enableHeightColorMode((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 5: _t->enableHeightColorMode(); break;
        case 6: _t->enableSemanticColoring((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 7: _t->enableSemanticColoring(); break;
        case 8: _t->enableSelectionBox((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 9: _t->enableSelectionBox(); break;
        case 10: _t->setCamPosition((*reinterpret_cast< double(*)>(_a[1])),(*reinterpret_cast< double(*)>(_a[2])),(*reinterpret_cast< double(*)>(_a[3])),(*reinterpret_cast< double(*)>(_a[4])),(*reinterpret_cast< double(*)>(_a[5])),(*reinterpret_cast< double(*)>(_a[6]))); break;
        case 11: _t->setCamPose((*reinterpret_cast< const octomath::Pose6D(*)>(_a[1]))); break;
        case 12: _t->setSceneBoundingBox((*reinterpret_cast< const qglviewer::Vec(*)>(_a[1])),(*reinterpret_cast< const qglviewer::Vec(*)>(_a[2]))); break;
        case 13: _t->deleteCameraPath((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 14: _t->appendToCameraPath((*reinterpret_cast< int(*)>(_a[1])),(*reinterpret_cast< const octomath::Pose6D(*)>(_a[2]))); break;
        case 15: _t->appendCurrentToCameraPath((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 16: _t->addCurrentToCameraPath((*reinterpret_cast< int(*)>(_a[1])),(*reinterpret_cast< int(*)>(_a[2]))); break;
        case 17: _t->removeFromCameraPath((*reinterpret_cast< int(*)>(_a[1])),(*reinterpret_cast< int(*)>(_a[2]))); break;
        case 18: _t->updateCameraPath((*reinterpret_cast< int(*)>(_a[1])),(*reinterpret_cast< int(*)>(_a[2]))); break;
        case 19: _t->jumpToCamFrame((*reinterpret_cast< int(*)>(_a[1])),(*reinterpret_cast< int(*)>(_a[2]))); break;
        case 20: _t->playCameraPath((*reinterpret_cast< int(*)>(_a[1])),(*reinterpret_cast< int(*)>(_a[2]))); break;
        case 21: _t->stopCameraPath((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 22: _t->selectionBox(); break;
        case 23: _t->resetView(); break;
        case 24: _t->cameraPathFinished(); break;
        case 25: _t->cameraPathInterpolated(); break;
        default: ;
        }
    }
}

const QMetaObjectExtraData octomap::ViewerWidget::staticMetaObjectExtraData = {
    0,  qt_static_metacall 
};

const QMetaObject octomap::ViewerWidget::staticMetaObject = {
    { &QGLViewer::staticMetaObject, qt_meta_stringdata_octomap__ViewerWidget,
      qt_meta_data_octomap__ViewerWidget, &staticMetaObjectExtraData }
};

#ifdef Q_NO_DATA_RELOCATION
const QMetaObject &octomap::ViewerWidget::getStaticMetaObject() { return staticMetaObject; }
#endif //Q_NO_DATA_RELOCATION

const QMetaObject *octomap::ViewerWidget::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->metaObject : &staticMetaObject;
}

void *octomap::ViewerWidget::qt_metacast(const char *_clname)
{
    if (!_clname) return 0;
    if (!strcmp(_clname, qt_meta_stringdata_octomap__ViewerWidget))
        return static_cast<void*>(const_cast< ViewerWidget*>(this));
    return QGLViewer::qt_metacast(_clname);
}

int octomap::ViewerWidget::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QGLViewer::qt_metacall(_c, _id, _a);
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
void octomap::ViewerWidget::cameraPathStopped(int _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 0, _a);
}

// SIGNAL 1
void octomap::ViewerWidget::cameraPathFrameChanged(int _t1, int _t2)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)), const_cast<void*>(reinterpret_cast<const void*>(&_t2)) };
    QMetaObject::activate(this, &staticMetaObject, 1, _a);
}
QT_END_MOC_NAMESPACE
