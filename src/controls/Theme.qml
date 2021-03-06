pragma Singleton

import QtQuick 2.4
import MeuiKit.Core 1.0 as MeuiKitCore

QtObject {
    id: theme

    property bool darkMode: MeuiKitCore.ThemeManager.darkMode

    property color backgroundColor: darkMode ? "#3B3B3D" : "#FFFFFF"
    property color alternateBackgroundColor: darkMode ? "#4A4A4D" : "#EDEDED"
    property color viewBackgroundColor: darkMode ? "#2E2E2E" : "#F7F7F7"

    property color textColor: darkMode ? "#FFFFFF" : "#31363b"
    property color disabledTextColor: darkMode ? "#888888" : "#5c5c5c"

    property color highlightColor: MeuiKitCore.ThemeManager.accentColor
    property color highlightedTextColor: darkMode ? "#FFFFFF" : "#FFFFFF"

    property color activeTextColor: "#0176D3"
    property color activeBackgroundColor: "#0176D3"

    property color linkColor: "#2196F3"
    property color linkBackgroundColor: "#2196F3"
    property color visitedLinkColor: "#2196F3"
    property color visitedLinkBackgroundColor: "#2196F3"

    property real smallRadius: 8.0
    property real bigRadius: 12.0

    property font defaultFont: fontMetrics.font
    property font smallFont: {
        let font = fontMetrics.font
        if (!!font.pixelSize) {
            font.pixelSize =- 2
        } else {
            font.pointSize =- 2
        }
        return font
    }

    property list<QtObject> children: [
        TextMetrics {
            id: fontMetrics
        }
    ]
}