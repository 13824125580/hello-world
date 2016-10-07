/****************************************************************************
** QVFbView meta object code from reading C++ file 'qvfbview.h'
**
** Created: Tue Aug 25 15:48:34 2009
**      by: The Qt MOC ($Id: qt/moc_yacc.cpp   3.3.8   edited Feb 2 14:59 $)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#undef QT_NO_COMPAT
#include "qvfbview.h"
#include <qmetaobject.h>
#include <qapplication.h>

#include <private/qucomextra_p.h>
#if !defined(Q_MOC_OUTPUT_REVISION) || (Q_MOC_OUTPUT_REVISION != 26)
#error "This file was generated using the moc from 3.3.8b. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

const char *QVFbView::className() const
{
    return "QVFbView";
}

QMetaObject *QVFbView::metaObj = 0;
static QMetaObjectCleanUp cleanUp_QVFbView( "QVFbView", &QVFbView::staticMetaObject );

#ifndef QT_NO_TRANSLATION
QString QVFbView::tr( const char *s, const char *c )
{
    if ( qApp )
	return qApp->translate( "QVFbView", s, c, QApplication::DefaultCodec );
    else
	return QString::fromLatin1( s );
}
#ifndef QT_NO_TRANSLATION_UTF8
QString QVFbView::trUtf8( const char *s, const char *c )
{
    if ( qApp )
	return qApp->translate( "QVFbView", s, c, QApplication::UnicodeUTF8 );
    else
	return QString::fromUtf8( s );
}
#endif // QT_NO_TRANSLATION_UTF8

#endif // QT_NO_TRANSLATION

QMetaObject* QVFbView::staticMetaObject()
{
    if ( metaObj )
	return metaObj;
    QMetaObject* parentObject = QScrollView::staticMetaObject();
    static const QUParameter param_slot_0[] = {
	{ 0, &static_QUType_int, 0, QUParameter::In }
    };
    static const QUMethod slot_0 = {"setRate", 1, param_slot_0 };
    static const QUParameter param_slot_1[] = {
	{ 0, &static_QUType_double, 0, QUParameter::In }
    };
    static const QUMethod slot_1 = {"setZoom", 1, param_slot_1 };
    static const QUParameter param_slot_2[] = {
	{ 0, &static_QUType_QString, 0, QUParameter::In }
    };
    static const QUMethod slot_2 = {"startAnimation", 1, param_slot_2 };
    static const QUMethod slot_3 = {"stopAnimation", 0, 0 };
    static const QUMethod slot_4 = {"timeout", 0, 0 };
    static const QUParameter param_slot_5[] = {
	{ "szText", &static_QUType_charstar, 0, QUParameter::In }
    };
    static const QUMethod slot_5 = {"sendIMEText", 1, param_slot_5 };
    static const QMetaData slot_tbl[] = {
	{ "setRate(int)", &slot_0, QMetaData::Public },
	{ "setZoom(double)", &slot_1, QMetaData::Public },
	{ "startAnimation(const QString&)", &slot_2, QMetaData::Public },
	{ "stopAnimation()", &slot_3, QMetaData::Public },
	{ "timeout()", &slot_4, QMetaData::Protected },
	{ "sendIMEText(const char*)", &slot_5, QMetaData::Public }
    };
    static const QUParameter param_signal_0[] = {
	{ "caption", &static_QUType_QString, 0, QUParameter::In }
    };
    static const QUMethod signal_0 = {"captionChanged", 1, param_signal_0 };
    static const QUParameter param_signal_1[] = {
	{ "bshow", &static_QUType_bool, 0, QUParameter::In }
    };
    static const QUMethod signal_1 = {"showHide", 1, param_signal_1 };
    static const QMetaData signal_tbl[] = {
	{ "captionChanged(QString)", &signal_0, QMetaData::Public },
	{ "showHide(bool)", &signal_1, QMetaData::Public }
    };
    metaObj = QMetaObject::new_metaobject(
	"QVFbView", parentObject,
	slot_tbl, 6,
	signal_tbl, 2,
#ifndef QT_NO_PROPERTIES
	0, 0,
	0, 0,
#endif // QT_NO_PROPERTIES
	0, 0 );
    cleanUp_QVFbView.setMetaObject( metaObj );
    return metaObj;
}

void* QVFbView::qt_cast( const char* clname )
{
    if ( !qstrcmp( clname, "QVFbView" ) )
	return this;
    return QScrollView::qt_cast( clname );
}

// SIGNAL captionChanged
void QVFbView::captionChanged( QString t0 )
{
    activate_signal( staticMetaObject()->signalOffset() + 0, t0 );
}

// SIGNAL showHide
void QVFbView::showHide( bool t0 )
{
    activate_signal_bool( staticMetaObject()->signalOffset() + 1, t0 );
}

bool QVFbView::qt_invoke( int _id, QUObject* _o )
{
    switch ( _id - staticMetaObject()->slotOffset() ) {
    case 0: setRate((int)static_QUType_int.get(_o+1)); break;
    case 1: setZoom((double)static_QUType_double.get(_o+1)); break;
    case 2: startAnimation((const QString&)static_QUType_QString.get(_o+1)); break;
    case 3: stopAnimation(); break;
    case 4: timeout(); break;
    case 5: sendIMEText((const char*)static_QUType_charstar.get(_o+1)); break;
    default:
	return QScrollView::qt_invoke( _id, _o );
    }
    return TRUE;
}

bool QVFbView::qt_emit( int _id, QUObject* _o )
{
    switch ( _id - staticMetaObject()->signalOffset() ) {
    case 0: captionChanged((QString)static_QUType_QString.get(_o+1)); break;
    case 1: showHide((bool)static_QUType_bool.get(_o+1)); break;
    default:
	return QScrollView::qt_emit(_id,_o);
    }
    return TRUE;
}
#ifndef QT_NO_PROPERTIES

bool QVFbView::qt_property( int id, int f, QVariant* v)
{
    return QScrollView::qt_property( id, f, v);
}

bool QVFbView::qt_static_property( QObject* , int , int , QVariant* ){ return FALSE; }
#endif // QT_NO_PROPERTIES
