/****************************************************************************
** QVFbRateDialog meta object code from reading C++ file 'qvfbratedlg.h'
**
** Created: Tue Jul 21 10:27:31 2009
**      by: The Qt MOC ($Id: qt/moc_yacc.cpp   3.3.8   edited Feb 2 14:59 $)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#undef QT_NO_COMPAT
#include "qvfbratedlg.h"
#include <qmetaobject.h>
#include <qapplication.h>

#include <private/qucomextra_p.h>
#if !defined(Q_MOC_OUTPUT_REVISION) || (Q_MOC_OUTPUT_REVISION != 26)
#error "This file was generated using the moc from 3.3.8b. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

const char *QVFbRateDialog::className() const
{
    return "QVFbRateDialog";
}

QMetaObject *QVFbRateDialog::metaObj = 0;
static QMetaObjectCleanUp cleanUp_QVFbRateDialog( "QVFbRateDialog", &QVFbRateDialog::staticMetaObject );

#ifndef QT_NO_TRANSLATION
QString QVFbRateDialog::tr( const char *s, const char *c )
{
    if ( qApp )
	return qApp->translate( "QVFbRateDialog", s, c, QApplication::DefaultCodec );
    else
	return QString::fromLatin1( s );
}
#ifndef QT_NO_TRANSLATION_UTF8
QString QVFbRateDialog::trUtf8( const char *s, const char *c )
{
    if ( qApp )
	return qApp->translate( "QVFbRateDialog", s, c, QApplication::UnicodeUTF8 );
    else
	return QString::fromUtf8( s );
}
#endif // QT_NO_TRANSLATION_UTF8

#endif // QT_NO_TRANSLATION

QMetaObject* QVFbRateDialog::staticMetaObject()
{
    if ( metaObj )
	return metaObj;
    QMetaObject* parentObject = QDialog::staticMetaObject();
    static const QUParameter param_slot_0[] = {
	{ "r", &static_QUType_int, 0, QUParameter::In }
    };
    static const QUMethod slot_0 = {"rateChanged", 1, param_slot_0 };
    static const QUMethod slot_1 = {"cancel", 0, 0 };
    static const QMetaData slot_tbl[] = {
	{ "rateChanged(int)", &slot_0, QMetaData::Protected },
	{ "cancel()", &slot_1, QMetaData::Protected }
    };
    static const QUParameter param_signal_0[] = {
	{ "r", &static_QUType_int, 0, QUParameter::In }
    };
    static const QUMethod signal_0 = {"updateRate", 1, param_signal_0 };
    static const QMetaData signal_tbl[] = {
	{ "updateRate(int)", &signal_0, QMetaData::Public }
    };
    metaObj = QMetaObject::new_metaobject(
	"QVFbRateDialog", parentObject,
	slot_tbl, 2,
	signal_tbl, 1,
#ifndef QT_NO_PROPERTIES
	0, 0,
	0, 0,
#endif // QT_NO_PROPERTIES
	0, 0 );
    cleanUp_QVFbRateDialog.setMetaObject( metaObj );
    return metaObj;
}

void* QVFbRateDialog::qt_cast( const char* clname )
{
    if ( !qstrcmp( clname, "QVFbRateDialog" ) )
	return this;
    return QDialog::qt_cast( clname );
}

// SIGNAL updateRate
void QVFbRateDialog::updateRate( int t0 )
{
    activate_signal( staticMetaObject()->signalOffset() + 0, t0 );
}

bool QVFbRateDialog::qt_invoke( int _id, QUObject* _o )
{
    switch ( _id - staticMetaObject()->slotOffset() ) {
    case 0: rateChanged((int)static_QUType_int.get(_o+1)); break;
    case 1: cancel(); break;
    default:
	return QDialog::qt_invoke( _id, _o );
    }
    return TRUE;
}

bool QVFbRateDialog::qt_emit( int _id, QUObject* _o )
{
    switch ( _id - staticMetaObject()->signalOffset() ) {
    case 0: updateRate((int)static_QUType_int.get(_o+1)); break;
    default:
	return QDialog::qt_emit(_id,_o);
    }
    return TRUE;
}
#ifndef QT_NO_PROPERTIES

bool QVFbRateDialog::qt_property( int id, int f, QVariant* v)
{
    return QDialog::qt_property( id, f, v);
}

bool QVFbRateDialog::qt_static_property( QObject* , int , int , QVariant* ){ return FALSE; }
#endif // QT_NO_PROPERTIES
