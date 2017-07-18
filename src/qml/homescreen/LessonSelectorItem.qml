/*
 *  Copyright 2017  Sebastian Gottfried <sebastian.gottfried@posteo.de>
 *
 *  This program is free software; you can redistribute it and/or
 *  modify it under the terms of the GNU General Public License as
 *  published by the Free Software Foundation; either version 2 of
 *  the License, or (at your option) any later version.
 *
 *  This program is distributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *  GNU General Public License for more details.
 *
 *  You should have received a copy of the GNU General Public License
 *  along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

import QtQuick 2.4
import QtQuick.Layouts 1.1
import QtQuick.Controls 2.0
import ktouch 1.0
import '../common'

Item {
    id: root
    property Lesson lesson
    clip: true

    Rectangle {
        id: background
        anchors.fill: parent
        color: "#ffffff";
    }

    GridLayout {
        id: content
        anchors.fill: parent
        anchors.margins: 10

        Label {
            id: titleLabel
            Layout.column: 0
            Layout.row: 0
            Layout.fillWidth: true
            text: lesson.title
            color: "#000000"
            font.bold: true
            elide: Label.ElideRight

        }

        IconToolButton {
            Layout.column: 1
            Layout.row: 0
            icon: 'view-statistics'
            color: "#808080"
            backgroundColor: "#c0c0c0c0"
        }

        Item {
            Layout.column: 0
            Layout.row: 1
            Layout.columnSpan: 2
            Layout.fillHeight: true
            Layout.fillWidth: true
            clip: true

            Label {
                id: textLabel
                anchors.fill: parent
                text: lesson.text
                color: "#000000"
                font.family: 'monospace'
                lineHeight: 1.5
                scale: Math.min(1, width / implicitWidth)
                transformOrigin: Item.TopLeft
            }

            Rectangle {
                anchors.fill: parent
                gradient: Gradient {
                    GradientStop { position: 0.0; color: "#00ffffff" }
                    GradientStop { position: 0.8; color: "#00ffffff" }
                    GradientStop { position: 1.0; color: "#ffffffff" }
                }
            }
        }
    }
}

