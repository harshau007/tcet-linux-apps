# SPDX-License-Identifier: GPL-2.0-only OR GPL-3.0-only OR LicenseRef-KDE-Accepted-GPL
# SPDX-FileCopyrightText: 2021 Felipe Kinoshita <kinofhek@gmail.com>
# SPDX-FileCopyrightText: 2022 Nate Graham <nate@kde.org>

cmake_minimum_required(VERSION 3.16)

project(welcome)

include(FeatureSummary)

set(PROJECT_VERSION "5.27.5")
set(REQUIRED_QT_VERSION 5.15.2)
set(KF5_MIN_VERSION 5.98)