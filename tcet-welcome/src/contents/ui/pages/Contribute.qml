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

import org.kde.tcet.welcome 1.0

GenericPage {
    heading: i18nc("@title:window", "Join Us Today")
    description: xi18nc("@info:usagetip", "<nl/>TCET Linux is proudly affiliated with the TCET Open Source Community.The TCET Open Source Community is a collective of passionate individuals, developers, and enthusiasts who share a common goal of promoting and advancing open-source technologies.<nl/><nl/>As a part of the TCET Open Source Community, TCET Linux benefits from a diverse pool of talent and expertise. The community fosters collaboration, knowledge sharing, and innovation, enabling TCET Linux to continuously evolve and improve.<nl/><nl/>Join us in this vibrant community as we collectively shape the future of TCET Linux and drive the progress of open-source technologies. Together, we can make a meaningful impact on the world of computing and foster a culture of collaboration, transparency, and innovation.")

    topContent: [
        Kirigami.UrlButton {
            id: link
            Layout.topMargin: Kirigami.Units.largeSpacing
            text: i18nc("@action:button", "Start Contributing!")
            url: "https://github.com/tcet-opensource"
        }
    ]

    Image {
        anchors.centerIn: parent
        anchors.verticalCenterOffset: -Kirigami.Units.gridUnit * 2
        height: Kirigami.Units.gridUnit * 16
        fillMode: Image.PreserveAspectFit
        source: "konqi-build.png"

        HoverHandler {
            id: hoverhandler
            cursorShape: Qt.PointingHandCursor
        }
        TapHandler {
            onTapped: Qt.openUrlExternally(link.url)
        }
        QQC2.ToolTip {
            visible: hoverhandler.hovered
            text: i18nc("@action:button clicking on this takes the user to a web page", "Visit %1", link.url)
        }
    }
}
