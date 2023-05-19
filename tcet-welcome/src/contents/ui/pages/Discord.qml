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
    heading: i18nc("@title:window", "Feeling stuck or encountering issues?")
    description: xi18nc("@info:usagetip", "<nl/>For real-time assistance and direct communication, we invite you to join our Discord server. It's a vibrant community where you can engage with us and fellow TCET Linux users. Here, you can ask questions, discuss technical aspects, and connect with like-minded individuals who share your interests.Our team and community members are ready to provide guidance and address any concerns you may have.<nl/><nl/>Don't hesitate to join the conversation! We look forward to helping you and fostering an engaging community experience on our Discord server.")

    topContent: [
        Kirigami.UrlButton {
            id: link
            Layout.topMargin: Kirigami.Units.largeSpacing
            text: i18nc("@action:button", "Join Discord!")
            url: "https://discord.com/invite/r7ZhAREg2M"
        }
    ]

    Image {
        anchors.centerIn: parent
        anchors.verticalCenterOffset: -Kirigami.Units.gridUnit * 2
        height: Kirigami.Units.gridUnit * 16
        fillMode: Image.PreserveAspectFit
        source: "discord.png"

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
