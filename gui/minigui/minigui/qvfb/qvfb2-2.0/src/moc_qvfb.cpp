/****************************************************************************
** QVFb meta object code from reading C++ file 'qvfb.h'
**
** Created: Tue Jul 28 14:05:34 2009
**      by: The Qt MOC ($Id: qt/moc_yacc.cpp   3.3.8   edited Feb 2 14:59 $)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#undef QT_NO_COMPAT
#include "qvfb.h"
#include <qmetaobject.h>
#include <qapplication.h>

#include <private/qucomextra_p.h>
#if !defined(Q_MOC_OUTPUT_REVISION) || (Q_MOC_OUTPUT_REVISION != 26)
#error "This file was generated using the moc from 3.3.8b. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

const char *QVFb::className() const
{
    return "QVFb";
}

QMetaObject *QVFb::metaObj = 0;
static QMetaObjectCleanUp cleanUp_QVFb( "QVFb", &QVFb::staticMetaObject );

#ifndef QT_NO_TRANSLATION
QString QVFb::tr( const char *s, const char *c )
{
    if ( qApp )
	return qApp->translate( "QVFb", s, c, QApplication::DefaultCodec );
    else
	return QString::fromLatin1( s );
}
#ifndef QT_NO_TRANSLATION_UTF8
QString QVFb::trUtf8( const char *s, const char *c )
{
    if ( qApp )
	return qApp->translate( "QVFb", s, c, QApplication::UnicodeUTF8 );
    else
	return QString::fromUtf8( s );
}
#endif // QT_NO_TRANSLATION_UTF8

#endif // QT_NO_TRANSLATION

QMetaObject* QVFb::staticMetaObject()
{
    if ( metaObj )
	return metaObj;
    QMetaObject* parentObject = QMainWindow::staticMetaObject();
    static const QUMethod slot_0 = {"saveImage", 0, 0 };
    static const QUMethod slot_1 = {"toggleAnimation", 0, 0 };
    static const QUMethod slot_2 = {"toggleCursor", 0, 0 };
    static const QUMethod slot_3 = {"changeRate", 0, 0 };
    static const QUMethod slot_4 = {"about", 0, 0 };
    static const QUParameter param_slot_5[] = {
	{ 0, &static_QUType_double, 0, QUParameter::In }
    };
    static const QUMethod slot_5 = {"setZoom", 1, param_slot_5 };
    static const QUMethod slot_6 = {"setZoom1", 0, 0 };
    static const QUMethod slot_7 = {"setZoom2", 0, 0 };
    static const QUMethod slot_8 = {"setZoom3", 0, 0 };
    static const QUMethod slot_9 = {"setZoom4", 0, 0 };
    static const QUMethod slot_10 = {"setZoomHalf", 0, 0 };
    static const QUParameter param_slot_11[] = {
	{ "n", &static_QUType_int, 0, QUParameter::In }
    };
    static const QUMethod slot_11 = {"setGamma400", 1, param_slot_11 };
    static const QUParameter param_slot_12[] = {
	{ "n", &static_QUType_int, 0, QUParameter::In }
    };
    static const QUMethod slot_12 = {"setR400", 1, param_slot_12 };
    static const QUParameter param_slot_13[] = {
	{ "n", &static_QUType_int, 0, QUParameter::In }
    };
    static const QUMethod slot_13 = {"setG400", 1, param_slot_13 };
    static const QUParameter param_slot_14[] = {
	{ "n", &static_QUType_int, 0, QUParameter::In }
    };
    static const QUMethod slot_14 = {"setB400", 1, param_slot_14 };
    static const QUMethod slot_15 = {"updateGammaLabels", 0, 0 };
    static const QUParameter param_slot_16[] = {
	{ "strCaption", &static_QUType_QString, 0, QUParameter::In }
    };
    static const QUMethod slot_16 = {"onCaptionChanged", 1, param_slot_16 };
    static const QUParameter param_slot_17[] = {
	{ "bshow", &static_QUType_bool, 0, QUParameter::In }
    };
    static const QUMethod slot_17 = {"showHide", 1, param_slot_17 };
    static const QMetaData slot_tbl[] = {
	{ "saveImage()", &slot_0, QMetaData::Protected },
	{ "toggleAnimation()", &slot_1, QMetaData::Protected },
	{ "toggleCursor()", &slot_2, QMetaData::Protected },
	{ "changeRate()", &slot_3, QMetaData::Protected },
	{ "about()", &slot_4, QMetaData::Protected },
	{ "setZoom(double)", &slot_5, QMetaData::Protected },
	{ "setZoom1()", &slot_6, QMetaData::Protected },
	{ "setZoom2()", &slot_7, QMetaData::Protected },
	{ "setZoom3()", &slot_8, QMetaData::Protected },
	{ "setZoom4()", &slot_9, QMetaData::Protected },
	{ "setZoomHalf()", &slot_10, QMetaData::Protected },
	{ "setGamma400(int)", &slot_11, QMetaData::Private },
	{ "setR400(int)", &slot_12, QMetaData::Private },
	{ "setG400(int)", &slot_13, QMetaData::Private },
	{ "setB400(int)", &slot_14, QMetaData::Private },
	{ "updateGammaLabels()", &slot_15, QMetaData::Private },
	{ "onCaptionChanged(QString)", &slot_16, QMetaData::Private },
	{ "showHide(bool)", &slot_17, QMetaData::Private }
    };
    metaObj = QMetaObject::new_metaobject(
	"QVFb", parentObject,
	slot_tbl, 18,
	0, 0,
#ifndef QT_NO_PROPERTIES
	0, 0,
	0, 0,
#endif // QT_NO_PROPERTIES
	0, 0 );
    cleanUp_QVFb.setMetaObject( metaObj );
    return metaObj;
}

void* QVFb::qt_cast( const char* clname )
{
    if ( !qstrcmp( clname, "QVFb" ) )
	return this;
    return QMainWindow::qt_cast( clname );
}

bool QVFb::qt_invoke( int _id, QUObject* _o )
{
    switch ( _id - staticMetaObject()->slotOffset() ) {
    case 0: saveImage(); break;
    case 1: toggleAnimation(); break;
    case 2: toggleCursor(); break;
    case 3: changeRate(); break;
    case 4: about(); break;
    case 5: setZoom((double)static_QUType_double.get(_o+1)); break;
    case 6: setZoom1(); break;
    case 7: setZoom2(); break;
    case 8: setZoom3(); break;
    case 9: setZoom4(); break;
    case 10: setZoomHalf(); break;
    case 11: setGamma400((int)static_QUType_int.get(_o+1)); break;
    case 12: setR400((int)static_QUType_int.get(_o+1)); break;
    case 13: setG400((int)static_QUType_int.get(_o+1)); break;
    case 14: setB400((int)static_QUType_int.get(_o+1)); break;
    case 15: updateGammaLabels(); break;
    case 16: onCaptionChanged((QString)static_QUType_QString.get(_o+1)); break;
    case 17: showHide((bool)static_QUType_bool.get(_o+1)); break;
    default:
	return QMainWindow::qt_invoke( _id, _o );
    }
    return TRUE;
}

bool QVFb::qt_emit( int _id, QUObject* _o )
{
    return QMainWindow::qt_emit(_id,_o);
}
#ifndef QT_NO_PROPERTIES

bool QVFb::qt_property( int id, int f, QVariant* v)
{
    return QMainWindow::qt_property( id, f, v);
}

bool QVFb::qt_static_property( QObject* , int , int , QVariant* ){ return FALSE; }
#endif // QT_NO_PROPERTIES
