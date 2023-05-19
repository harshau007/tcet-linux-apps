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
    heading: i18nc("@title:window", "Support Us!")
    description: xi18nc("@info:usagetip", "<nl/>By donating to TCET Linux, you can help us expand our resources and achieve even greater heights. Your financial donations play a vital role in funding essential aspects such as development initiatives, hardware and serve maintenannce, and potential employment opportunities.<nl/><nl/> Every contribution bring us closenr to our vision of delivering an exceptional Linux experiencne.")

    topContent: [
        Kirigami.UrlButton {
            id: link
            Layout.topMargin: Kirigami.Units.largeSpacing
            text: i18nc("@action:button", "Make a donation")
            url: "https://kde.org/community/donations?source=tcet-welcome"
        }
    ]

    Image {
        anchors.centerIn: parent
        anchors.verticalCenterOffset: -Kirigami.Units.gridUnit * 2
        height: Kirigami.Units.gridUnit * 16
        fillMode: Image.PreserveAspectFit
        mipmap: true
        source: "konqi-donations.png"

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
