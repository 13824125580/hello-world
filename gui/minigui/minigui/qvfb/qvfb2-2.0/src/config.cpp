/****************************************************************************
** Form implementation generated from reading ui file 'config.ui'
**
** Created: Tue Jul 21 10:27:32 2009
**
** WARNING! All changes made in this file will be lost!
****************************************************************************/

#include "config.h"

#include <qvariant.h>
#include <qpushbutton.h>
#include <qbuttongroup.h>
#include <qradiobutton.h>
#include <qgroupbox.h>
#include <qlabel.h>
#include <qslider.h>
#include <qspinbox.h>
#include <qcombobox.h>
#include <qlayout.h>
#include <qtooltip.h>
#include <qwhatsthis.h>
#include "gammaview.h"

/*
 *  Constructs a Config as a child of 'parent', with the
 *  name 'name' and widget flags set to 'f'.
 *
 *  The dialog will by default be modeless, unless you set 'modal' to
 *  TRUE to construct a modal dialog.
 */
Config::Config( QWidget* parent, const char* name, bool modal, WFlags fl )
    : QDialog( parent, name, modal, fl )
{
    if ( !name )
	setName( "Config" );
    setSizeGripEnabled( TRUE );
    ConfigLayout = new QGridLayout( this, 1, 1, 11, 6, "ConfigLayout"); 

    ButtonGroup2 = new QButtonGroup( this, "ButtonGroup2" );

    depth_1 = new QRadioButton( ButtonGroup2, "depth_1" );
    depth_1->setGeometry( QRect( 11, 19, 229, 19 ) );

    depth_4gray = new QRadioButton( ButtonGroup2, "depth_4gray" );
    depth_4gray->setGeometry( QRect( 11, 44, 229, 19 ) );

    depth_8 = new QRadioButton( ButtonGroup2, "depth_8" );
    depth_8->setGeometry( QRect( 11, 69, 229, 19 ) );

    depth_12 = new QRadioButton( ButtonGroup2, "depth_12" );
    depth_12->setGeometry( QRect( 11, 94, 229, 19 ) );

    depth_16 = new QRadioButton( ButtonGroup2, "depth_16" );
    depth_16->setGeometry( QRect( 11, 119, 229, 19 ) );

    depth_32 = new QRadioButton( ButtonGroup2, "depth_32" );
    depth_32->setGeometry( QRect( 11, 144, 229, 19 ) );

    ConfigLayout->addWidget( ButtonGroup2, 0, 1 );

    Layout1 = new QHBoxLayout( 0, 0, 6, "Layout1"); 
    Horizontal_Spacing2 = new QSpacerItem( 20, 20, QSizePolicy::Expanding, QSizePolicy::Minimum );
    Layout1->addItem( Horizontal_Spacing2 );

    buttonOk = new QPushButton( this, "buttonOk" );
    buttonOk->setAutoDefault( TRUE );
    buttonOk->setDefault( TRUE );
    Layout1->addWidget( buttonOk );

    buttonCancel = new QPushButton( this, "buttonCancel" );
    buttonCancel->setAutoDefault( TRUE );
    Layout1->addWidget( buttonCancel );

    ConfigLayout->addMultiCellLayout( Layout1, 3, 3, 0, 1 );

    GroupBox1 = new QGroupBox( this, "GroupBox1" );
    GroupBox1->setColumnLayout(0, Qt::Vertical );
    GroupBox1->layout()->setSpacing( 6 );
    GroupBox1->layout()->setMargin( 11 );
    GroupBox1Layout = new QGridLayout( GroupBox1->layout() );
    GroupBox1Layout->setAlignment( Qt::AlignTop );

    TextLabel3 = new QLabel( GroupBox1, "TextLabel3" );

    GroupBox1Layout->addWidget( TextLabel3, 6, 0 );

    bslider = new QSlider( GroupBox1, "bslider" );
    QPalette pal;
    QColorGroup cg;
    cg.setColor( QColorGroup::Foreground, black );
    cg.setColor( QColorGroup::Button, QColor( 0, 0, 255) );
    cg.setColor( QColorGroup::Light, QColor( 127, 127, 255) );
    cg.setColor( QColorGroup::Midlight, QColor( 63, 63, 255) );
    cg.setColor( QColorGroup::Dark, QColor( 0, 0, 127) );
    cg.setColor( QColorGroup::Mid, QColor( 0, 0, 170) );
    cg.setColor( QColorGroup::Text, black );
    cg.setColor( QColorGroup::BrightText, white );
    cg.setColor( QColorGroup::ButtonText, black );
    cg.setColor( QColorGroup::Base, white );
    cg.setColor( QColorGroup::Background, QColor( 220, 220, 220) );
    cg.setColor( QColorGroup::Shadow, black );
    cg.setColor( QColorGroup::Highlight, QColor( 10, 95, 137) );
    cg.setColor( QColorGroup::HighlightedText, white );
    cg.setColor( QColorGroup::Link, black );
    cg.setColor( QColorGroup::LinkVisited, black );
    pal.setActive( cg );
    cg.setColor( QColorGroup::Foreground, black );
    cg.setColor( QColorGroup::Button, QColor( 0, 0, 255) );
    cg.setColor( QColorGroup::Light, QColor( 127, 127, 255) );
    cg.setColor( QColorGroup::Midlight, QColor( 38, 38, 255) );
    cg.setColor( QColorGroup::Dark, QColor( 0, 0, 127) );
    cg.setColor( QColorGroup::Mid, QColor( 0, 0, 170) );
    cg.setColor( QColorGroup::Text, black );
    cg.setColor( QColorGroup::BrightText, white );
    cg.setColor( QColorGroup::ButtonText, black );
    cg.setColor( QColorGroup::Base, white );
    cg.setColor( QColorGroup::Background, QColor( 220, 220, 220) );
    cg.setColor( QColorGroup::Shadow, black );
    cg.setColor( QColorGroup::Highlight, QColor( 10, 95, 137) );
    cg.setColor( QColorGroup::HighlightedText, white );
    cg.setColor( QColorGroup::Link, black );
    cg.setColor( QColorGroup::LinkVisited, black );
    pal.setInactive( cg );
    cg.setColor( QColorGroup::Foreground, QColor( 128, 128, 128) );
    cg.setColor( QColorGroup::Button, QColor( 0, 0, 255) );
    cg.setColor( QColorGroup::Light, QColor( 127, 127, 255) );
    cg.setColor( QColorGroup::Midlight, QColor( 38, 38, 255) );
    cg.setColor( QColorGroup::Dark, QColor( 0, 0, 127) );
    cg.setColor( QColorGroup::Mid, QColor( 0, 0, 170) );
    cg.setColor( QColorGroup::Text, black );
    cg.setColor( QColorGroup::BrightText, white );
    cg.setColor( QColorGroup::ButtonText, QColor( 128, 128, 128) );
    cg.setColor( QColorGroup::Base, white );
    cg.setColor( QColorGroup::Background, QColor( 220, 220, 220) );
    cg.setColor( QColorGroup::Shadow, black );
    cg.setColor( QColorGroup::Highlight, QColor( 10, 95, 137) );
    cg.setColor( QColorGroup::HighlightedText, white );
    cg.setColor( QColorGroup::Link, black );
    cg.setColor( QColorGroup::LinkVisited, black );
    pal.setDisabled( cg );
    bslider->setPalette( pal );
    bslider->setMaxValue( 400 );
    bslider->setValue( 100 );
    bslider->setOrientation( QSlider::Horizontal );

    GroupBox1Layout->addWidget( bslider, 6, 1 );

    blabel = new QLabel( GroupBox1, "blabel" );

    GroupBox1Layout->addWidget( blabel, 6, 2 );
    Spacer3 = new QSpacerItem( 20, 20, QSizePolicy::Minimum, QSizePolicy::Expanding );
    GroupBox1Layout->addItem( Spacer3, 5, 1 );

    TextLabel2 = new QLabel( GroupBox1, "TextLabel2" );

    GroupBox1Layout->addWidget( TextLabel2, 4, 0 );

    gslider = new QSlider( GroupBox1, "gslider" );
    cg.setColor( QColorGroup::Foreground, black );
    cg.setColor( QColorGroup::Button, QColor( 0, 255, 0) );
    cg.setColor( QColorGroup::Light, QColor( 127, 255, 127) );
    cg.setColor( QColorGroup::Midlight, QColor( 63, 255, 63) );
    cg.setColor( QColorGroup::Dark, QColor( 0, 127, 0) );
    cg.setColor( QColorGroup::Mid, QColor( 0, 170, 0) );
    cg.setColor( QColorGroup::Text, black );
    cg.setColor( QColorGroup::BrightText, white );
    cg.setColor( QColorGroup::ButtonText, black );
    cg.setColor( QColorGroup::Base, white );
    cg.setColor( QColorGroup::Background, QColor( 220, 220, 220) );
    cg.setColor( QColorGroup::Shadow, black );
    cg.setColor( QColorGroup::Highlight, QColor( 10, 95, 137) );
    cg.setColor( QColorGroup::HighlightedText, white );
    cg.setColor( QColorGroup::Link, black );
    cg.setColor( QColorGroup::LinkVisited, black );
    pal.setActive( cg );
    cg.setColor( QColorGroup::Foreground, black );
    cg.setColor( QColorGroup::Button, QColor( 0, 255, 0) );
    cg.setColor( QColorGroup::Light, QColor( 127, 255, 127) );
    cg.setColor( QColorGroup::Midlight, QColor( 38, 255, 38) );
    cg.setColor( QColorGroup::Dark, QColor( 0, 127, 0) );
    cg.setColor( QColorGroup::Mid, QColor( 0, 170, 0) );
    cg.setColor( QColorGroup::Text, black );
    cg.setColor( QColorGroup::BrightText, white );
    cg.setColor( QColorGroup::ButtonText, black );
    cg.setColor( QColorGroup::Base, white );
    cg.setColor( QColorGroup::Background, QColor( 220, 220, 220) );
    cg.setColor( QColorGroup::Shadow, black );
    cg.setColor( QColorGroup::Highlight, QColor( 10, 95, 137) );
    cg.setColor( QColorGroup::HighlightedText, white );
    cg.setColor( QColorGroup::Link, black );
    cg.setColor( QColorGroup::LinkVisited, black );
    pal.setInactive( cg );
    cg.setColor( QColorGroup::Foreground, QColor( 128, 128, 128) );
    cg.setColor( QColorGroup::Button, QColor( 0, 255, 0) );
    cg.setColor( QColorGroup::Light, QColor( 127, 255, 127) );
    cg.setColor( QColorGroup::Midlight, QColor( 38, 255, 38) );
    cg.setColor( QColorGroup::Dark, QColor( 0, 127, 0) );
    cg.setColor( QColorGroup::Mid, QColor( 0, 170, 0) );
    cg.setColor( QColorGroup::Text, black );
    cg.setColor( QColorGroup::BrightText, white );
    cg.setColor( QColorGroup::ButtonText, QColor( 128, 128, 128) );
    cg.setColor( QColorGroup::Base, white );
    cg.setColor( QColorGroup::Background, QColor( 220, 220, 220) );
    cg.setColor( QColorGroup::Shadow, black );
    cg.setColor( QColorGroup::Highlight, QColor( 10, 95, 137) );
    cg.setColor( QColorGroup::HighlightedText, white );
    cg.setColor( QColorGroup::Link, black );
    cg.setColor( QColorGroup::LinkVisited, black );
    pal.setDisabled( cg );
    gslider->setPalette( pal );
    gslider->setMaxValue( 400 );
    gslider->setValue( 100 );
    gslider->setOrientation( QSlider::Horizontal );

    GroupBox1Layout->addWidget( gslider, 4, 1 );

    glabel = new QLabel( GroupBox1, "glabel" );

    GroupBox1Layout->addWidget( glabel, 4, 2 );

    TextLabel7 = new QLabel( GroupBox1, "TextLabel7" );

    GroupBox1Layout->addWidget( TextLabel7, 0, 0 );

    TextLabel8 = new QLabel( GroupBox1, "TextLabel8" );

    GroupBox1Layout->addWidget( TextLabel8, 0, 2 );

    gammaslider = new QSlider( GroupBox1, "gammaslider" );
    cg.setColor( QColorGroup::Foreground, black );
    cg.setColor( QColorGroup::Button, white );
    cg.setColor( QColorGroup::Light, white );
    cg.setColor( QColorGroup::Midlight, white );
    cg.setColor( QColorGroup::Dark, QColor( 127, 127, 127) );
    cg.setColor( QColorGroup::Mid, QColor( 170, 170, 170) );
    cg.setColor( QColorGroup::Text, black );
    cg.setColor( QColorGroup::BrightText, white );
    cg.setColor( QColorGroup::ButtonText, black );
    cg.setColor( QColorGroup::Base, white );
    cg.setColor( QColorGroup::Background, QColor( 220, 220, 220) );
    cg.setColor( QColorGroup::Shadow, black );
    cg.setColor( QColorGroup::Highlight, QColor( 10, 95, 137) );
    cg.setColor( QColorGroup::HighlightedText, white );
    cg.setColor( QColorGroup::Link, black );
    cg.setColor( QColorGroup::LinkVisited, black );
    pal.setActive( cg );
    cg.setColor( QColorGroup::Foreground, black );
    cg.setColor( QColorGroup::Button, white );
    cg.setColor( QColorGroup::Light, white );
    cg.setColor( QColorGroup::Midlight, white );
    cg.setColor( QColorGroup::Dark, QColor( 127, 127, 127) );
    cg.setColor( QColorGroup::Mid, QColor( 170, 170, 170) );
    cg.setColor( QColorGroup::Text, black );
    cg.setColor( QColorGroup::BrightText, white );
    cg.setColor( QColorGroup::ButtonText, black );
    cg.setColor( QColorGroup::Base, white );
    cg.setColor( QColorGroup::Background, QColor( 220, 220, 220) );
    cg.setColor( QColorGroup::Shadow, black );
    cg.setColor( QColorGroup::Highlight, QColor( 10, 95, 137) );
    cg.setColor( QColorGroup::HighlightedText, white );
    cg.setColor( QColorGroup::Link, black );
    cg.setColor( QColorGroup::LinkVisited, black );
    pal.setInactive( cg );
    cg.setColor( QColorGroup::Foreground, QColor( 128, 128, 128) );
    cg.setColor( QColorGroup::Button, white );
    cg.setColor( QColorGroup::Light, white );
    cg.setColor( QColorGroup::Midlight, white );
    cg.setColor( QColorGroup::Dark, QColor( 127, 127, 127) );
    cg.setColor( QColorGroup::Mid, QColor( 170, 170, 170) );
    cg.setColor( QColorGroup::Text, black );
    cg.setColor( QColorGroup::BrightText, white );
    cg.setColor( QColorGroup::ButtonText, QColor( 128, 128, 128) );
    cg.setColor( QColorGroup::Base, white );
    cg.setColor( QColorGroup::Background, QColor( 220, 220, 220) );
    cg.setColor( QColorGroup::Shadow, black );
    cg.setColor( QColorGroup::Highlight, QColor( 10, 95, 137) );
    cg.setColor( QColorGroup::HighlightedText, white );
    cg.setColor( QColorGroup::Link, black );
    cg.setColor( QColorGroup::LinkVisited, black );
    pal.setDisabled( cg );
    gammaslider->setPalette( pal );
    gammaslider->setMaxValue( 400 );
    gammaslider->setValue( 100 );
    gammaslider->setOrientation( QSlider::Horizontal );

    GroupBox1Layout->addWidget( gammaslider, 0, 1 );

    TextLabel1_2 = new QLabel( GroupBox1, "TextLabel1_2" );

    GroupBox1Layout->addWidget( TextLabel1_2, 2, 0 );

    rlabel = new QLabel( GroupBox1, "rlabel" );

    GroupBox1Layout->addWidget( rlabel, 2, 2 );

    rslider = new QSlider( GroupBox1, "rslider" );
    cg.setColor( QColorGroup::Foreground, black );
    cg.setColor( QColorGroup::Button, QColor( 255, 0, 0) );
    cg.setColor( QColorGroup::Light, QColor( 255, 127, 127) );
    cg.setColor( QColorGroup::Midlight, QColor( 255, 63, 63) );
    cg.setColor( QColorGroup::Dark, QColor( 127, 0, 0) );
    cg.setColor( QColorGroup::Mid, QColor( 170, 0, 0) );
    cg.setColor( QColorGroup::Text, black );
    cg.setColor( QColorGroup::BrightText, white );
    cg.setColor( QColorGroup::ButtonText, black );
    cg.setColor( QColorGroup::Base, white );
    cg.setColor( QColorGroup::Background, QColor( 220, 220, 220) );
    cg.setColor( QColorGroup::Shadow, black );
    cg.setColor( QColorGroup::Highlight, QColor( 10, 95, 137) );
    cg.setColor( QColorGroup::HighlightedText, white );
    cg.setColor( QColorGroup::Link, black );
    cg.setColor( QColorGroup::LinkVisited, black );
    pal.setActive( cg );
    cg.setColor( QColorGroup::Foreground, black );
    cg.setColor( QColorGroup::Button, QColor( 255, 0, 0) );
    cg.setColor( QColorGroup::Light, QColor( 255, 127, 127) );
    cg.setColor( QColorGroup::Midlight, QColor( 255, 38, 38) );
    cg.setColor( QColorGroup::Dark, QColor( 127, 0, 0) );
    cg.setColor( QColorGroup::Mid, QColor( 170, 0, 0) );
    cg.setColor( QColorGroup::Text, black );
    cg.setColor( QColorGroup::BrightText, white );
    cg.setColor( QColorGroup::ButtonText, black );
    cg.setColor( QColorGroup::Base, white );
    cg.setColor( QColorGroup::Background, QColor( 220, 220, 220) );
    cg.setColor( QColorGroup::Shadow, black );
    cg.setColor( QColorGroup::Highlight, QColor( 10, 95, 137) );
    cg.setColor( QColorGroup::HighlightedText, white );
    cg.setColor( QColorGroup::Link, black );
    cg.setColor( QColorGroup::LinkVisited, black );
    pal.setInactive( cg );
    cg.setColor( QColorGroup::Foreground, QColor( 128, 128, 128) );
    cg.setColor( QColorGroup::Button, QColor( 255, 0, 0) );
    cg.setColor( QColorGroup::Light, QColor( 255, 127, 127) );
    cg.setColor( QColorGroup::Midlight, QColor( 255, 38, 38) );
    cg.setColor( QColorGroup::Dark, QColor( 127, 0, 0) );
    cg.setColor( QColorGroup::Mid, QColor( 170, 0, 0) );
    cg.setColor( QColorGroup::Text, black );
    cg.setColor( QColorGroup::BrightText, white );
    cg.setColor( QColorGroup::ButtonText, QColor( 128, 128, 128) );
    cg.setColor( QColorGroup::Base, white );
    cg.setColor( QColorGroup::Background, QColor( 220, 220, 220) );
    cg.setColor( QColorGroup::Shadow, black );
    cg.setColor( QColorGroup::Highlight, QColor( 10, 95, 137) );
    cg.setColor( QColorGroup::HighlightedText, white );
    cg.setColor( QColorGroup::Link, black );
    cg.setColor( QColorGroup::LinkVisited, black );
    pal.setDisabled( cg );
    rslider->setPalette( pal );
    rslider->setMaxValue( 400 );
    rslider->setValue( 100 );
    rslider->setOrientation( QSlider::Horizontal );

    GroupBox1Layout->addWidget( rslider, 2, 1 );
    Spacer2 = new QSpacerItem( 20, 20, QSizePolicy::Minimum, QSizePolicy::Expanding );
    GroupBox1Layout->addItem( Spacer2, 3, 1 );
    Spacer4 = new QSpacerItem( 20, 20, QSizePolicy::Minimum, QSizePolicy::Expanding );
    GroupBox1Layout->addItem( Spacer4, 1, 1 );

    PushButton3 = new QPushButton( GroupBox1, "PushButton3" );

    GroupBox1Layout->addMultiCellWidget( PushButton3, 8, 8, 0, 2 );

    MyCustomWidget1 = new GammaView( GroupBox1, "MyCustomWidget1" );

    GroupBox1Layout->addMultiCellWidget( MyCustomWidget1, 0, 8, 3, 3 );
    Spacer5 = new QSpacerItem( 20, 20, QSizePolicy::Minimum, QSizePolicy::Expanding );
    GroupBox1Layout->addItem( Spacer5, 7, 1 );

    ConfigLayout->addMultiCellWidget( GroupBox1, 2, 2, 0, 1 );

    ButtonGroup1 = new QButtonGroup( this, "ButtonGroup1" );
    ButtonGroup1->setSizePolicy( QSizePolicy( (QSizePolicy::SizeType)5, (QSizePolicy::SizeType)5, 0, 0, ButtonGroup1->sizePolicy().hasHeightForWidth() ) );
    ButtonGroup1->setColumnLayout(0, Qt::Vertical );
    ButtonGroup1->layout()->setSpacing( 6 );
    ButtonGroup1->layout()->setMargin( 11 );
    ButtonGroup1Layout = new QVBoxLayout( ButtonGroup1->layout() );
    ButtonGroup1Layout->setAlignment( Qt::AlignTop );

    size_240_320 = new QRadioButton( ButtonGroup1, "size_240_320" );
    ButtonGroup1Layout->addWidget( size_240_320 );

    size_320_240 = new QRadioButton( ButtonGroup1, "size_320_240" );
    ButtonGroup1Layout->addWidget( size_320_240 );

    size_640_480 = new QRadioButton( ButtonGroup1, "size_640_480" );
    ButtonGroup1Layout->addWidget( size_640_480 );

    Layout1_2 = new QHBoxLayout( 0, 0, 6, "Layout1_2"); 

    size_custom = new QRadioButton( ButtonGroup1, "size_custom" );
    Layout1_2->addWidget( size_custom );

    size_width = new QSpinBox( ButtonGroup1, "size_width" );
    size_width->setMaxValue( 1280 );
    size_width->setMinValue( 1 );
    size_width->setLineStep( 16 );
    size_width->setValue( 400 );
    Layout1_2->addWidget( size_width );

    size_height = new QSpinBox( ButtonGroup1, "size_height" );
    size_height->setMaxValue( 1024 );
    size_height->setMinValue( 1 );
    size_height->setLineStep( 16 );
    size_height->setValue( 300 );
    Layout1_2->addWidget( size_height );
    ButtonGroup1Layout->addLayout( Layout1_2 );

    Layout8 = new QHBoxLayout( 0, 0, 6, "Layout8"); 

    size_skin = new QRadioButton( ButtonGroup1, "size_skin" );
    size_skin->setSizePolicy( QSizePolicy( (QSizePolicy::SizeType)0, (QSizePolicy::SizeType)0, 0, 0, size_skin->sizePolicy().hasHeightForWidth() ) );
    Layout8->addWidget( size_skin );

    skin = new QComboBox( FALSE, ButtonGroup1, "skin" );
    skin->setSizePolicy( QSizePolicy( (QSizePolicy::SizeType)5, (QSizePolicy::SizeType)0, 0, 0, skin->sizePolicy().hasHeightForWidth() ) );
    Layout8->addWidget( skin );
    ButtonGroup1Layout->addLayout( Layout8 );

    ConfigLayout->addWidget( ButtonGroup1, 0, 0 );

    TextLabel1 = new QLabel( this, "TextLabel1" );

    ConfigLayout->addMultiCellWidget( TextLabel1, 1, 1, 0, 1 );
    languageChange();
    resize( QSize(481, 645).expandedTo(minimumSizeHint()) );
    clearWState( WState_Polished );

    // signals and slots connections
    connect( buttonOk, SIGNAL( clicked() ), this, SLOT( accept() ) );
    connect( buttonCancel, SIGNAL( clicked() ), this, SLOT( reject() ) );
}

/*
 *  Destroys the object and frees any allocated resources
 */
Config::~Config()
{
    // no need to delete child widgets, Qt does it all for us
}

/*
 *  Sets the strings of the subwidgets using the current
 *  language.
 */
void Config::languageChange()
{
    setCaption( tr( "Configure" ) );
    ButtonGroup2->setTitle( tr( "Depth" ) );
    depth_1->setText( tr( "1 bit monochrome" ) );
    depth_4gray->setText( tr( "4 bit grayscale" ) );
    depth_8->setText( tr( "8 bit" ) );
    depth_12->setText( tr( "12 (16) bit" ) );
    depth_16->setText( tr( "16 bit" ) );
    depth_32->setText( tr( "32 bit" ) );
    buttonOk->setText( tr( "&OK" ) );
    buttonCancel->setText( tr( "&Cancel" ) );
    GroupBox1->setTitle( tr( "Gamma" ) );
    TextLabel3->setText( tr( "Blue" ) );
    blabel->setText( tr( "1.0" ) );
    TextLabel2->setText( tr( "Green" ) );
    glabel->setText( tr( "1.0" ) );
    TextLabel7->setText( tr( "All" ) );
    TextLabel8->setText( tr( "1.0" ) );
    TextLabel1_2->setText( tr( "Red" ) );
    rlabel->setText( tr( "1.0" ) );
    PushButton3->setText( tr( "Set all to 1.0" ) );
    ButtonGroup1->setTitle( tr( "Size" ) );
    size_240_320->setText( tr( "240x320 \"PDA\"" ) );
    size_320_240->setText( tr( "320x240 \"TV\"" ) );
    size_640_480->setText( tr( "640x480 \"VGA\"" ) );
    size_custom->setText( tr( "Custom" ) );
    size_skin->setText( tr( "Skin" ) );
    skin->clear();
    skin->insertItem( tr( "pda.skin" ) );
    skin->insertItem( tr( "ipaq.skin" ) );
    skin->insertItem( tr( "qpe.skin" ) );
    skin->insertItem( tr( "cassiopeia.skin" ) );
    skin->insertItem( tr( "other.skin" ) );
    TextLabel1->setText( tr( "<p>Note that any applications using the virtual framebuffer will be terminated if you change the Size or Depth <i>above</i>. You may freely modify the Gamma <i>below</i>." ) );
}

