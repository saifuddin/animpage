//
//  LBStatus.swift
//  Hifz
//
//  Created by Mohd Zaid Said on 15/03/2016.
//  Copyright © 2016 Brainstorm Technologies Sdn Bhd. All rights reserved.
//

import UIKit

enum LBPageStatus: String {
    case initial = "Initial"
    case memorize = "Memorize"
    case test = "Test"
    case countdown = "Countdown"
    case revise = "Revise"
    case completedRevise = "CompletedRevise"
    case done = "Done"
}

enum LBSnoozeStatus: String {
    case none = "None"
    case later = "Later"
    case tonight = "Tonight"
    case tomorrow = "Tomorrow"
}

enum LBQuranPage {
    case main, top, bottom
}

enum LBPopoverStatus {
    case today, profile, feed
}

enum LBSync {
    case pull, push, compare
}

extension UITableViewCell {
    func cannotBeHighlighted() {
        let clearView = UIView()
        clearView.backgroundColor = UIColor.clear
        self.selectedBackgroundView = clearView
    }
}
