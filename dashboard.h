/*
DashBorad is system resource viewer app

DashBoard is free software; you can redistribute it and/or
modify it under the terms of the GNU General Public License
as published by the Free Software Foundation; version 2
of the License.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program; if not, see {http://www.gnu.org/licenses/}. */

#ifndef DASHBOARD_H
#define DASHBOARD_H

#include "pbattery.h"
#include "pdisplay.h"
#include "pdrives.h"
#include "pgeneral.h"
#include "presources.h"

#include <QListWidgetItem>
#include <QWidget>
#include <QPainter>
#include <QFile>
#include <QProcess>
#include <QMetaObject>
#include <QMetaProperty>
#include <QTreeWidgetItem>
#include <QDir>
#include <QSize>

#include <csys/system_info.h>
#include <csys/battery.h>
#include <csys/upower.h>


class UDisks2;
namespace Ui {
class dashboard;
}

class dashboard : public QWidget
{
    Q_OBJECT

private slots:
    void on_Bresource_clicked();
    void on_Bdrives_clicked();
    void on_Bbattery_clicked();
    void on_Bgeneral_clicked();
    void on_Bdisplay_clicked();

public:
    explicit dashboard(QWidget *parent = nullptr);
    ~dashboard();

protected:
    void closeEvent(QCloseEvent *event);

private:
    Ui::dashboard *ui;

    void pageClick(QPushButton *btn, int i, QString title);

};

#endif // DASHBOARD_H
