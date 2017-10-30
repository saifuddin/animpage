//
//  LBDeviceHeight
//  Hifz
//
//  Created by Mohd Zaid Said on 12/05/2016.
//  Copyright © 2016 Brainstorm Technologies Sdn Bhd. All rights reserved.
//

import UIKit

struct LBDeviceHeight {
    let quranTextFontSize: CGFloat
    let titleFontSize: CGFloat
    let headlineFontSize: CGFloat
    let bodyFontSize: CGFloat
    let footnoteFontSize: CGFloat
    let captionFontSize: CGFloat
    let is4S: Bool
    let isIpadPro: Bool

    init(screenHeight: CGFloat = UIScreen.main.bounds.height) {
        var quranTextFontSize: CGFloat = 17
        var titleFontSize: CGFloat = 43
        var headlineFontSize: CGFloat = 20
        var bodyFontSize: CGFloat = 17
        var footnoteFontSize: CGFloat = 15
        var captionFontSize: CGFloat = 13
        var iPhone4S = false
        var iPadPro = false

        switch screenHeight {
        case 480: // 3.5 inch
            quranTextFontSize = 17
            iPhone4S = true
        case 568: // 4 inch
            quranTextFontSize = 19
        case 667: // 4.7 inch
            quranTextFontSize = 23
            titleFontSize = 50
            headlineFontSize = 24
            bodyFontSize = 20
            footnoteFontSize = 17
            captionFontSize = 15
        case 812: // iphone X
            quranTextFontSize = 23
            titleFontSize = 50
            headlineFontSize = 24
            bodyFontSize = 20
            footnoteFontSize = 17
            captionFontSize = 15
        case 736: // 5.5 inch
            quranTextFontSize = 25
            titleFontSize = 60
            headlineFontSize = 28
            bodyFontSize = 25
            footnoteFontSize = 20
            captionFontSize = 17
        case 768: // ipad landscape
            quranTextFontSize = 28
            titleFontSize = 70
            headlineFontSize = 32
            bodyFontSize = 28
            footnoteFontSize = 23
            captionFontSize = 18
        case 1024: // ipad potrait && ipad pro pandscape
            quranTextFontSize = 36
            titleFontSize = 90
            headlineFontSize = 42
            bodyFontSize = 35
            footnoteFontSize = 30
            captionFontSize = 20
        case 1366: // ipad pro potrait
            quranTextFontSize = 48
            titleFontSize = 120
            headlineFontSize = 58
            bodyFontSize = 46
            footnoteFontSize = 40
            captionFontSize = 30
            iPadPro = true
        default: // rest of screen sizes
            quranTextFontSize = 17
        }

        self.quranTextFontSize = quranTextFontSize
        self.titleFontSize = titleFontSize
        self.headlineFontSize = headlineFontSize
        self.bodyFontSize = bodyFontSize
        self.footnoteFontSize = footnoteFontSize
        self.captionFontSize = captionFontSize
        self.is4S = iPhone4S
        self.isIpadPro = iPadPro
    }
}
