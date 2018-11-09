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

#ifndef PRESOURCES_H
#define PRESOURCES_H

#include "utilities.h"
#include "history_chart.h"

#include <QWidget>
#include <QTimer>

#include <csys/info_manager.h>
#include <cprime/themefunc.h>


namespace Ui {
class presources;
}

class presources : public QWidget
{
    Q_OBJECT

public:
    explicit presources(QWidget *parent = nullptr);
    ~presources();

private slots:
    void updateCpuChart();
    void updateCpuLoadAvg();
    void updateDiskReadWrite();
    void updateMemoryChart();
    void updateNetworkChart();

private:
    Ui::presources *ui;

    InfoManager *im;
    QTimer *mTimer;
    void init();

    HistoryChart *mChartCpu;
    HistoryChart *mChartCpuLoadAvg;
    HistoryChart *mChartDiskReadWrite;
    HistoryChart *mChartMemory;
    HistoryChart *mChartNetwork;

};

#endif // PRESOURCES_H
