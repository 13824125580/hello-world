/****************************************************************************
** Form interface generated from reading ui file 'config.ui'
**
** Created: Tue Jul 21 10:26:28 2009
**
** WARNING! All changes made in this file will be lost!
****************************************************************************/

#ifndef CONFIG_H
#define CONFIG_H

#include <qvariant.h>
#include <qpixmap.h>
#include <qdialog.h>

class QVBoxLayout;
class QHBoxLayout;
class QGridLayout;
class QSpacerItem;
class GammaView;
class QButtonGroup;
class QRadioButton;
class QPushButton;
class QGroupBox;
class QLabel;
class QSlider;
class QSpinBox;
class QComboBox;

class Config : public QDialog
{
    Q_OBJECT

public:
    Config( QWidget* parent = 0, const char* name = 0, bool modal = FALSE, WFlags fl = 0 );
    ~Config();

    QButtonGroup* ButtonGroup2;
    QRadioButton* depth_1;
    QRadioButton* depth_4gray;
    QRadioButton* depth_8;
    QRadioButton* depth_12;
    QRadioButton* depth_16;
    QRadioButton* depth_32;
    QPushButton* buttonOk;
    QPushButton* buttonCancel;
    QGroupBox* GroupBox1;
    QLabel* TextLabel3;
    QSlider* bslider;
    QLabel* blabel;
    QLabel* TextLabel2;
    QSlider* gslider;
    QLabel* glabel;
    QLabel* TextLabel7;
    QLabel* TextLabel8;
    QSlider* gammaslider;
    QLabel* TextLabel1_2;
    QLabel* rlabel;
    QSlider* rslider;
    QPushButton* PushButton3;
    GammaView* MyCustomWidget1;
    QButtonGroup* ButtonGroup1;
    QRadioButton* size_240_320;
    QRadioButton* size_320_240;
    QRadioButton* size_640_480;
    QRadioButton* size_custom;
    QSpinBox* size_width;
    QSpinBox* size_height;
    QRadioButton* size_skin;
    QComboBox* skin;
    QLabel* TextLabel1;

protected:
    QGridLayout* ConfigLayout;
    QHBoxLayout* Layout1;
    QSpacerItem* Horizontal_Spacing2;
    QGridLayout* GroupBox1Layout;
    QSpacerItem* Spacer3;
    QSpacerItem* Spacer2;
    QSpacerItem* Spacer4;
    QSpacerItem* Spacer5;
    QVBoxLayout* ButtonGroup1Layout;
    QHBoxLayout* Layout1_2;
    QHBoxLayout* Layout8;

protected slots:
    virtual void languageChange();

private:
    QPixmap image0;

};

#endif // CONFIG_H
