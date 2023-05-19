/*
 *  SPDX-FileCopyrightText: 2021 Felipe Kinoshita <kinofhek@gmail.com>
 *  SPDX-FileCopyrightText: 2022 Nate Graham <nate@kde.org>
 *
 *  SPDX-License-Identifier: GPL-2.0-only OR GPL-3.0-only OR LicenseRef-KDE-Accepted-GPL
 */

import QtQuick 2.15
import QtQuick.Controls 2.15 as QQC2
import QtQuick.Layouts 1.15
import org.kde.kirigami 2.15 as Kirigami
import QtGraphicalEffects 1.15

import org.kde.tcet.welcome 1.0
import org.kde.welcome 1.0

GenericPage {
    heading: i18nc("@info:window", "TCET Linux Is User-Friendly Arch-Based XFCE Environment")
    description: xi18nc("@info:usagetip", "<nl/>TCET Linux is an innovative operating system built on the solid foundation of Arch Linux, designed with simplicity and user-friendliness in mind. With a customized XFCE environment, TCET Linux offers a seamless and intuitive experience for beginners, ensuring that anyone can easily navigate and operate their system right from the start. <nl/><nl/>Should you ever feel the need to customize your TCET Linux experience, you'll find all the necessary tools and options conveniently located within the <application>Settings Manager</application> app.<nl/>")
    Kirigami.Icon {
        id: image
        anchors.centerIn: parent
        anchors.verticalCenterOffset: -Kirigami.Units.gridUnit * 4
        width: Kirigami.Units.gridUnit * 10
        height: Kirigami.Units.gridUnit * 10
        source: "preferences-system"

        HoverHandler {
            id: hoverhandler
            cursorShape: Qt.PointingHandCursor
        }
        TapHandler {
            onTapped: Controller.launchApp("xfce-settings-manager"); // Desktop file isn't namespaced, boo!
        }

        QQC2.ToolTip {
            visible: hoverhandler.hovered
            text: i18nc("@action:button", "Launch Settings Manager now")
        }

        layer.enabled: true
        layer.effect: DropShadow {
            transparentBorder: true
            horizontalOffset: 0
            verticalOffset: 1
            radius: 20
            samples: 20
            color: Qt.rgba(0, 0, 0, 0.2)
        }
    }

    Kirigami.Heading {
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: image.bottom
        text: i18nc("@title the name of the 'Settings Manager' app", "Settings Manager")
        wrapMode: Text.WordWrap
        level: 3
    }
}
