/* === This file is part of Calamares - <http://github.com/calamares> ===
 *
 *   Copyright 2015, Teo Mrnjavac <teo@kde.org>
 *
 *   Calamares is free software: you can redistribute it and/or modify
 *   it under the terms of the GNU General Public License as published by
 *   the Free Software Foundation, either version 3 of the License, or
 *   (at your option) any later version.
 *
 *   Calamares is distributed in the hope that it will be useful,
 *   but WITHOUT ANY WARRANTY; without even the implied warranty of
 *   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
 *   GNU General Public License for more details.
 *
 *   You should have received a copy of the GNU General Public License
 *   along with Calamares. If not, see <http://www.gnu.org/licenses/>.
 *
 *   Coopertronic-OS custom settings
 *   Component.onCompleted: advanceTimer.running = true
 *  Timer {
 *          id: advanceTimer
 *          interval: 30000
 *          running: true
 *          repeat: true
 *          onTriggered: presentation.goToNextSlide()
 *      }
 *  height: parent.height
 */

import QtQuick 2.0
import calamares.slideshow 1.0

Presentation {
    id: presentation

    function nextSlide() {
        console.log("QML Component (default slideshow) Next slide");
        presentation.goToNextSlide();
    }

    function onActivate() {
        console.log("QML Component (default slideshow) activated");
        presentation.currentSlide = 0;
    }

    function onLeave() {
        console.log("QML Component (default slideshow) deactivated");
    }

    Timer {
        id: advanceTimer

        interval: 5000
        running: presentation.activatedInCalamares
        repeat: true
        onTriggered: nextSlide()
    }

    Slide {
        anchors.fill: parent
        anchors.verticalCenterOffset: 0

        Image {
            id: background1

            source: "dragon-circle.black.red.coopertronic.3D-icon.2021.png"
            width: parent.width
            horizontalAlignment: Image.AlignCenter
            verticalAlignment: Image.AlignCenter
            anchors.fill: parent

            Text {
                anchors.centerIn: parent
                anchors.verticalCenterOffset: 25
                anchors.horizontalCenterOffset: 0
                font.pixelSize: parent.width * 0.02
                color: 'green'
                text: qsTr("<b>Welcome to Coopertronic-OS, The home of Happy Computers<br/>")
                wrapMode: Text.WordWrap
                width: parent.width / 1.4
                horizontalAlignment: Text.AlignHCenter
            }

            Text {
                anchors.centerIn: parent
                anchors.verticalCenterOffset: 35
                anchors.horizontalCenterOffset: 0
                font.pixelSize: parent.width * 0.02
                color: 'green'
                text: qsTr("<p><b>You are now installing Coopertronic-OS. The system has been built so that I can explore how Operating Systems are made and to have an installable system taht I can put on all my machines, personal or work related.<b/><p/><p><b>I have included packages that I use all the time. At the moment this ISO is purely for my own use and should only be used at your own risk. I accept absolutely no responsibility for any damage or loss that may result from using this ISO.<b/><p/>")
                wrapMode: Text.WordWrap
                width: parent.width / 1.4
                horizontalAlignment: Text.AlignHCenter
            }

        }

    }

    Slide {
        anchors.fill: parent
        anchors.verticalCenterOffset: 0

        Image {
            id: background2

            source: "dragon-circle.coopertronic.black.red.BG.2021.Slide-2.png"
            width: parent.width
            height: parent.height
            horizontalAlignment: Image.AlignCenter
            verticalAlignment: Image.AlignTop
            anchors.fill: parent

            Text {
                anchors.centerIn: parent
                anchors.verticalCenterOffset: 163
                anchors.horizontalCenterOffset: 0
                font.pixelSize: parent.width * 0.02
                color: 'white'
                text: qsTr("<b>Coopertronic-OS uses the KDE desktop<br/>")
                wrapMode: Text.WordWrap
                width: parent.width / 1.4
                horizontalAlignment: Text.AlignHCenter
            }

        }

    }

    Slide {
        anchors.fill: parent
        anchors.verticalCenterOffset: 0

        Image {
            id: background3

            source: "dragon-circle.coopertronic.black.red.BG.2021.Slide-3.png"
            width: parent.width
            height: parent.height
            horizontalAlignment: Image.AlignCenter
            verticalAlignment: Image.AlignTop
            anchors.fill: parent

            Text {
                anchors.centerIn: parent
                anchors.verticalCenterOffset: 165
                anchors.horizontalCenterOffset: 0
                font.pixelSize: parent.width * 0.02
                color: 'white'
                text: qsTr("<b>A work in progress<br/>")
                wrapMode: Text.WordWrap
                width: parent.width / 1.4
                horizontalAlignment: Text.AlignHCenter
            }

        }

    }

    Slide {
        anchors.fill: parent
        anchors.verticalCenterOffset: 0

        Image {
            id: background4

            source: "dragon-circle.coopertronic.black.red.BG.2021.Slide-4.png"
            width: parent.width
            height: parent.height
            horizontalAlignment: Image.AlignCenter
            verticalAlignment: Image.AlignTop
            anchors.fill: parent

            Text {
                anchors.centerIn: parent
                anchors.verticalCenterOffset: 165
                anchors.horizontalCenterOffset: 0
                font.pixelSize: parent.width * 0.02
                color: 'white'
                text: qsTr("<b>Thank you for trying Coopertronic-OS<br/>")
                wrapMode: Text.WordWrap
                width: parent.width / 1.4
                horizontalAlignment: Text.AlignHCenter
            }

        }

    }

}
