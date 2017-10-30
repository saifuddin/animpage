//
//  Page604ViewController.swift
//  Hifz
//
//  Created by Hifz Quran Page XIB Generator author by Ahmad Idzuan.
//  Copyright © 2016 Brainstorm Technologies Sdn Bhd. All rights reserved.
//

import UIKit

class Page604ViewController: UIViewController {

    // MARK: - Constants

    fileprivate struct Constant {
        static let ForceSegueIdentifier = "Quran.Translation.ForceTouch"
        static let ForceStoryboardIdentifier = "forceViewController"
        static let Offset4s: CGFloat = 28.0
        static let OffsetIpad: CGFloat = 104.0
        static let OffsetIpadPro: CGFloat = 144.0
        static let PeekAlpha: CGFloat = 0.6
        static let TextColor = UIColor.black
        static let BlockColor = UIColor(red: 220.0/255, green: 210.0/255, blue: 197.0/255, alpha: 1.0)
        static let TestColor = UIColor(red: 250.0/255, green: 240.0/255, blue: 227.0/255, alpha: 1.0)
        static let PeekColor = UIColor(red: 135.0/255, green: 193.0/255, blue: 185.0/255, alpha: 1.0)
    }

                    @IBOutlet weak var suraSeparator112LeadingConstraint: NSLayoutConstraint!
                    @IBOutlet weak var suraSeparator112TrailingConstraint: NSLayoutConstraint!
            @IBOutlet weak var suraSeparator112: UIImageView!
            @IBOutlet weak var titleSura112: UILabel!
            @IBOutlet weak var suraBismillah112: UILabel!
            @IBOutlet weak var sura112_aya1_1: UILabel!
            @IBOutlet weak var sura112_aya1_1Button: UIButton!
            @IBOutlet weak var sura112_aya2_1: UILabel!
            @IBOutlet weak var sura112_aya2_1Button: UIButton!
            @IBOutlet weak var sura112_aya3_1: UILabel!
            @IBOutlet weak var sura112_aya3_1Button: UIButton!
            @IBOutlet weak var sura112_aya3_2: UILabel!
            @IBOutlet weak var sura112_aya3_2Button: UIButton!
            @IBOutlet weak var sura112_aya4_1: UILabel!
            @IBOutlet weak var sura112_aya4_1Button: UIButton!
                    @IBOutlet weak var suraSeparator113LeadingConstraint: NSLayoutConstraint!
                    @IBOutlet weak var suraSeparator113TrailingConstraint: NSLayoutConstraint!
            @IBOutlet weak var suraSeparator113: UIImageView!
            @IBOutlet weak var titleSura113: UILabel!
            @IBOutlet weak var suraBismillah113: UILabel!
            @IBOutlet weak var sura113_aya1_1: UILabel!
            @IBOutlet weak var sura113_aya1_1Button: UIButton!
            @IBOutlet weak var sura113_aya2_1: UILabel!
            @IBOutlet weak var sura113_aya2_1Button: UIButton!
            @IBOutlet weak var sura113_aya3_1: UILabel!
            @IBOutlet weak var sura113_aya3_1Button: UIButton!
            @IBOutlet weak var sura113_aya3_2: UILabel!
            @IBOutlet weak var sura113_aya3_2Button: UIButton!
            @IBOutlet weak var sura113_aya4_1: UILabel!
            @IBOutlet weak var sura113_aya4_1Button: UIButton!
            @IBOutlet weak var sura113_aya4_2: UILabel!
            @IBOutlet weak var sura113_aya4_2Button: UIButton!
            @IBOutlet weak var sura113_aya5_1: UILabel!
            @IBOutlet weak var sura113_aya5_1Button: UIButton!
                    @IBOutlet weak var suraSeparator114LeadingConstraint: NSLayoutConstraint!
                    @IBOutlet weak var suraSeparator114TrailingConstraint: NSLayoutConstraint!
            @IBOutlet weak var suraSeparator114: UIImageView!
            @IBOutlet weak var titleSura114: UILabel!
            @IBOutlet weak var suraBismillah114: UILabel!
            @IBOutlet weak var sura114_aya1_1: UILabel!
            @IBOutlet weak var sura114_aya1_1Button: UIButton!
            @IBOutlet weak var sura114_aya2_1: UILabel!
            @IBOutlet weak var sura114_aya2_1Button: UIButton!
            @IBOutlet weak var sura114_aya3_1: UILabel!
            @IBOutlet weak var sura114_aya3_1Button: UIButton!
            @IBOutlet weak var sura114_aya3_2: UILabel!
            @IBOutlet weak var sura114_aya3_2Button: UIButton!
            @IBOutlet weak var sura114_aya4_1: UILabel!
            @IBOutlet weak var sura114_aya4_1Button: UIButton!
            @IBOutlet weak var sura114_aya5_1: UILabel!
            @IBOutlet weak var sura114_aya5_1Button: UIButton!
            @IBOutlet weak var sura114_aya5_2: UILabel!
            @IBOutlet weak var sura114_aya5_2Button: UIButton!
            @IBOutlet weak var sura114_aya6_1: UILabel!
            @IBOutlet weak var sura114_aya6_1Button: UIButton!

    let page = 604
    let daysNumber = [20, 4, 3, 2, 1]
    let appDelegate = UIApplication.shared.delegate as! AppDelegate

    weak var rootVC: UIViewController?
    var pageData: LBPageData = LBPageData(page: 604)
    var plan = LBMemorizationPlan()
    var pageLocation = LBQuranPage.main
    var pageStatus = [true, true]
    var memorizationIndex = 0
    var focusedAnAyat = false
    var translationData: [String : String] = [:]

    var ayaSura: [[Int: [[String: AnyObject]]]] = []
    var memorizedAya: [[[String: AnyObject]]] = []

        var constantAya1of20: [UILabel?] = []
        var constantButton1of20: [UIButton?] = []
        var constantAya2of20: [UILabel?] = []
        var constantButton2of20: [UIButton?] = []
        var constantAya3of20: [UILabel?] = []
        var constantButton3of20: [UIButton?] = []
        var constantAya4of20: [UILabel?] = []
        var constantButton4of20: [UIButton?] = []
        var constantAya5of20: [UILabel?] = []
        var constantButton5of20: [UIButton?] = []
        var constantAya6of20: [UILabel?] = []
        var constantButton6of20: [UIButton?] = []
        var constantAya7of20: [UILabel?] = []
        var constantButton7of20: [UIButton?] = []
        var constantAya8of20: [UILabel?] = []
        var constantButton8of20: [UIButton?] = []
        var constantAya9of20: [UILabel?] = []
        var constantButton9of20: [UIButton?] = []
        var constantAya10of20: [UILabel?] = []
        var constantButton10of20: [UIButton?] = []
        var constantAya11of20: [UILabel?] = []
        var constantButton11of20: [UIButton?] = []
        var constantAya12of20: [UILabel?] = []
        var constantButton12of20: [UIButton?] = []
        var constantAya13of20: [UILabel?] = []
        var constantButton13of20: [UIButton?] = []
        var constantAya14of20: [UILabel?] = []
        var constantButton14of20: [UIButton?] = []
        var constantAya15of20: [UILabel?] = []
        var constantButton15of20: [UIButton?] = []
        var constantAya16of20: [UILabel?] = []
        var constantButton16of20: [UIButton?] = []
        var constantAya17of20: [UILabel?] = []
        var constantButton17of20: [UIButton?] = []
        var constantAya18of20: [UILabel?] = []
        var constantButton18of20: [UIButton?] = []
        var constantAya19of20: [UILabel?] = []
        var constantButton19of20: [UIButton?] = []
        var constantAya20of20: [UILabel?] = []
        var constantButton20of20: [UIButton?] = []
    
    var constantAyatShow: [UILabel?] = []
    var constantAyatHide: [UILabel?] = []
    var constantButtonHide: [UIButton?] = []
    var constantButtonShow: [UIButton?] = []
    var constantAllAyat: [UILabel?] = []
    var constantAllButton: [UIButton?] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewDidLoad \(self.page)")
        // Do any additional setup after loading the view.
        updateConstant()
        updateUI()
//        if self.pageLocation == LBQuranPage.Main && traitCollection.forceTouchCapability == .Available {
//            self.registerForPreviewingWithDelegate(self, sourceView: self.view)
//        }
    }

    func updateConstant() {
        print(#function)
//        self.ayaSura.append([:])
//                self.ayaSura.append([:])
//                    self.ayaSura[0][1] = []
//                self.ayaSura[0][1]!.append(["aya" : self.sura112_aya1_1, "button" : self.sura112_aya1_1Button])
//                    self.ayaSura[0][2] = []
//                self.ayaSura[0][2]!.append(["aya" : self.sura112_aya2_1, "button" : self.sura112_aya2_1Button])
//                    self.ayaSura[0][3] = []
//                self.ayaSura[0][3]!.append(["aya" : self.sura112_aya3_1, "button" : self.sura112_aya3_1Button])
//                self.ayaSura[0][3]!.append(["aya" : self.sura112_aya3_2, "button" : self.sura112_aya3_2Button])
//                    self.ayaSura[0][4] = []
//                self.ayaSura[0][4]!.append(["aya" : self.sura112_aya4_1, "button" : self.sura112_aya4_1Button])
//                self.ayaSura.append([:])
//                    self.ayaSura[1][1] = []
//                self.ayaSura[1][1]!.append(["aya" : self.sura113_aya1_1, "button" : self.sura113_aya1_1Button])
//                    self.ayaSura[1][2] = []
//                self.ayaSura[1][2]!.append(["aya" : self.sura113_aya2_1, "button" : self.sura113_aya2_1Button])
//                    self.ayaSura[1][3] = []
//                self.ayaSura[1][3]!.append(["aya" : self.sura113_aya3_1, "button" : self.sura113_aya3_1Button])
//                self.ayaSura[1][3]!.append(["aya" : self.sura113_aya3_2, "button" : self.sura113_aya3_2Button])
//                    self.ayaSura[1][4] = []
//                self.ayaSura[1][4]!.append(["aya" : self.sura113_aya4_1, "button" : self.sura113_aya4_1Button])
//                self.ayaSura[1][4]!.append(["aya" : self.sura113_aya4_2, "button" : self.sura113_aya4_2Button])
//                    self.ayaSura[1][5] = []
//                self.ayaSura[1][5]!.append(["aya" : self.sura113_aya5_1, "button" : self.sura113_aya5_1Button])
//                self.ayaSura.append([:])
//                    self.ayaSura[2][1] = []
//                self.ayaSura[2][1]!.append(["aya" : self.sura114_aya1_1, "button" : self.sura114_aya1_1Button])
//                    self.ayaSura[2][2] = []
//                self.ayaSura[2][2]!.append(["aya" : self.sura114_aya2_1, "button" : self.sura114_aya2_1Button])
//                    self.ayaSura[2][3] = []
//                self.ayaSura[2][3]!.append(["aya" : self.sura114_aya3_1, "button" : self.sura114_aya3_1Button])
//                self.ayaSura[2][3]!.append(["aya" : self.sura114_aya3_2, "button" : self.sura114_aya3_2Button])
//                    self.ayaSura[2][4] = []
//                self.ayaSura[2][4]!.append(["aya" : self.sura114_aya4_1, "button" : self.sura114_aya4_1Button])
//                    self.ayaSura[2][5] = []
//                self.ayaSura[2][5]!.append(["aya" : self.sura114_aya5_1, "button" : self.sura114_aya5_1Button])
//                self.ayaSura[2][5]!.append(["aya" : self.sura114_aya5_2, "button" : self.sura114_aya5_2Button])
//                    self.ayaSura[2][6] = []
//                self.ayaSura[2][6]!.append(["aya" : self.sura114_aya6_1, "button" : self.sura114_aya6_1Button])
//        
//            constantAya1of20 = []
//            constantButton1of20 = []
//                constantAya1of20.append(self.sura112_aya1_1)
//                constantButton1of20.append(self.sura112_aya1_1Button)
//            constantAya2of20 = []
//            constantButton2of20 = []
//                constantAya2of20.append(self.sura112_aya2_1)
//                constantButton2of20.append(self.sura112_aya2_1Button)
//            constantAya3of20 = []
//            constantButton3of20 = []
//                constantAya3of20.append(self.sura112_aya3_1)
//                constantButton3of20.append(self.sura112_aya3_1Button)
//            constantAya4of20 = []
//            constantButton4of20 = []
//                constantAya4of20.append(self.sura112_aya3_2)
//                constantButton4of20.append(self.sura112_aya3_2Button)
//            constantAya5of20 = []
//            constantButton5of20 = []
//                constantAya5of20.append(self.sura112_aya4_1)
//                constantButton5of20.append(self.sura112_aya4_1Button)
//            constantAya6of20 = []
//            constantButton6of20 = []
//                constantAya6of20.append(self.sura113_aya1_1)
//                constantButton6of20.append(self.sura113_aya1_1Button)
//            constantAya7of20 = []
//            constantButton7of20 = []
//                constantAya7of20.append(self.sura113_aya2_1)
//                constantButton7of20.append(self.sura113_aya2_1Button)
//            constantAya8of20 = []
//            constantButton8of20 = []
//                constantAya8of20.append(self.sura113_aya3_1)
//                constantButton8of20.append(self.sura113_aya3_1Button)
//            constantAya9of20 = []
//            constantButton9of20 = []
//                constantAya9of20.append(self.sura113_aya3_2)
//                constantButton9of20.append(self.sura113_aya3_2Button)
//            constantAya10of20 = []
//            constantButton10of20 = []
//                constantAya10of20.append(self.sura113_aya4_1)
//                constantButton10of20.append(self.sura113_aya4_1Button)
//            constantAya11of20 = []
//            constantButton11of20 = []
//                constantAya11of20.append(self.sura113_aya4_2)
//                constantButton11of20.append(self.sura113_aya4_2Button)
//            constantAya12of20 = []
//            constantButton12of20 = []
//                constantAya12of20.append(self.sura113_aya5_1)
//                constantButton12of20.append(self.sura113_aya5_1Button)
//            constantAya13of20 = []
//            constantButton13of20 = []
//                constantAya13of20.append(self.sura114_aya1_1)
//                constantButton13of20.append(self.sura114_aya1_1Button)
//            constantAya14of20 = []
//            constantButton14of20 = []
//                constantAya14of20.append(self.sura114_aya2_1)
//                constantButton14of20.append(self.sura114_aya2_1Button)
//            constantAya15of20 = []
//            constantButton15of20 = []
//                constantAya15of20.append(self.sura114_aya3_1)
//                constantButton15of20.append(self.sura114_aya3_1Button)
//            constantAya16of20 = []
//            constantButton16of20 = []
//                constantAya16of20.append(self.sura114_aya3_2)
//                constantButton16of20.append(self.sura114_aya3_2Button)
//            constantAya17of20 = []
//            constantButton17of20 = []
//                constantAya17of20.append(self.sura114_aya4_1)
//                constantButton17of20.append(self.sura114_aya4_1Button)
//            constantAya18of20 = []
//            constantButton18of20 = []
//                constantAya18of20.append(self.sura114_aya5_1)
//                constantButton18of20.append(self.sura114_aya5_1Button)
//            constantAya19of20 = []
//            constantButton19of20 = []
//                constantAya19of20.append(self.sura114_aya5_2)
//                constantButton19of20.append(self.sura114_aya5_2Button)
//            constantAya20of20 = []
//            constantButton20of20 = []
//                constantAya20of20.append(self.sura114_aya6_1)
//                constantButton20of20.append(self.sura114_aya6_1Button)

//        let result = self.plan.forCorePage(firstPage: self.appDelegate.progressPageToday.first!, progressCurrentPage: self.page, difficulty: self.appDelegate.progressDifficultyCurrent, dayNumber: self.appDelegate.progressCurrentRevisionDay, viewController: self)
//        self.appDelegate.progressPageToday = result.pageStack
//
//        print("generating double tap data")
//        if self.pageLocation == LBQuranPage.main {
//            var i = 0
//            var j = 0
//            if result.suraStack.first != result.suraAllStack.first {
//                for r in result.suraAllStack {
//                    if result.suraStack.first != r {
//                        j = j + 1
//                    } else {
//                        break
//                    }
//                }
//            }
//            for _ in result.suraStack {
//                for aya in result.ayaStartStack[i]...result.ayaEndStack[i] {
//                    if let memorizedAya = self.ayaSura[j][aya] {
//                        self.memorizedAya.append(memorizedAya)
//                    }
//                }
//                i = i + 1
//                j = j + 1
//            }
//        }
//        print("finished generating double tap data")
        
        self.constantAyatShow = self.plan.ayatShown
        self.constantAyatHide = self.plan.ayatHidden
        self.constantButtonShow = self.plan.buttonShown
        self.constantButtonHide = self.plan.buttonHidden

            self.constantAllAyat.append(contentsOf: self.constantAya1of20)
            self.constantAllButton.append(contentsOf: self.constantButton1of20)
            self.constantAllAyat.append(contentsOf: self.constantAya2of20)
            self.constantAllButton.append(contentsOf: self.constantButton2of20)
            self.constantAllAyat.append(contentsOf: self.constantAya3of20)
            self.constantAllButton.append(contentsOf: self.constantButton3of20)
            self.constantAllAyat.append(contentsOf: self.constantAya4of20)
            self.constantAllButton.append(contentsOf: self.constantButton4of20)
            self.constantAllAyat.append(contentsOf: self.constantAya5of20)
            self.constantAllButton.append(contentsOf: self.constantButton5of20)
            self.constantAllAyat.append(contentsOf: self.constantAya6of20)
            self.constantAllButton.append(contentsOf: self.constantButton6of20)
            self.constantAllAyat.append(contentsOf: self.constantAya7of20)
            self.constantAllButton.append(contentsOf: self.constantButton7of20)
            self.constantAllAyat.append(contentsOf: self.constantAya8of20)
            self.constantAllButton.append(contentsOf: self.constantButton8of20)
            self.constantAllAyat.append(contentsOf: self.constantAya9of20)
            self.constantAllButton.append(contentsOf: self.constantButton9of20)
            self.constantAllAyat.append(contentsOf: self.constantAya10of20)
            self.constantAllButton.append(contentsOf: self.constantButton10of20)
            self.constantAllAyat.append(contentsOf: self.constantAya11of20)
            self.constantAllButton.append(contentsOf: self.constantButton11of20)
            self.constantAllAyat.append(contentsOf: self.constantAya12of20)
            self.constantAllButton.append(contentsOf: self.constantButton12of20)
            self.constantAllAyat.append(contentsOf: self.constantAya13of20)
            self.constantAllButton.append(contentsOf: self.constantButton13of20)
            self.constantAllAyat.append(contentsOf: self.constantAya14of20)
            self.constantAllButton.append(contentsOf: self.constantButton14of20)
            self.constantAllAyat.append(contentsOf: self.constantAya15of20)
            self.constantAllButton.append(contentsOf: self.constantButton15of20)
            self.constantAllAyat.append(contentsOf: self.constantAya16of20)
            self.constantAllButton.append(contentsOf: self.constantButton16of20)
            self.constantAllAyat.append(contentsOf: self.constantAya17of20)
            self.constantAllButton.append(contentsOf: self.constantButton17of20)
            self.constantAllAyat.append(contentsOf: self.constantAya18of20)
            self.constantAllButton.append(contentsOf: self.constantButton18of20)
            self.constantAllAyat.append(contentsOf: self.constantAya19of20)
            self.constantAllButton.append(contentsOf: self.constantButton19of20)
            self.constantAllAyat.append(contentsOf: self.constantAya20of20)
            self.constantAllButton.append(contentsOf: self.constantButton20of20)
    
        self.constantAyatShow = []
        self.constantAyatHide = []
        self.constantButtonShow = []
        self.constantButtonHide = []

//        for ayat in self.constantAllAyat {
//            if let a = ayat, let t = self.appDelegate.progressSuraToday.first, let s = self.appDelegate.progressSuraAyaStartToday.first, let e = self.appDelegate.progressSuraAyaEndToday.first {
//                let start = (t * 1000) + s
//                let end = (t * 1000) + e
//                if (a.tag >= start && a.tag <= end) || self.constantAyatShow.contains(where: { $0 == a }) {
//                    if self.constantAyatShow.contains(where: { $0 == a }) {
//                        print("already inserted")
//                    } else {
//                        self.constantAyatShow.append(a)
//                    }
//                } else {
//                    self.constantAyatHide.append(a)
//                }
//            }
//        }
//
//        for button in self.constantAllButton {
//            if let b = button, let t = self.appDelegate.progressSuraToday.first, let s = self.appDelegate.progressSuraAyaStartToday.first, let e = self.appDelegate.progressSuraAyaEndToday.first {
//                let start = (t * 1000) + s
//                let end = (t * 1000) + e
//                if (b.tag >= start && b.tag <= end) || self.constantButtonShow.contains(where: { $0 == b }) {
//                    if self.constantButtonShow.contains(where: { $0 == b }) {
//                        print("already inserted")
//                    } else {
//                        self.constantButtonShow.append(b)
//                    }
//                } else {
//                    self.constantButtonHide.append(b)
//                }
//            }
//        }
    }

    func updateUI() {
        print(#function)
        if LBDeviceHeight().is4S {
                            self.suraSeparator112LeadingConstraint.constant = -Constant.Offset4s
                            self.suraSeparator112TrailingConstraint.constant = Constant.Offset4s
                            self.suraSeparator113LeadingConstraint.constant = -Constant.Offset4s
                            self.suraSeparator113TrailingConstraint.constant = Constant.Offset4s
                            self.suraSeparator114LeadingConstraint.constant = -Constant.Offset4s
                            self.suraSeparator114TrailingConstraint.constant = Constant.Offset4s
        } else if LBDeviceHeight().isIpadPro {
                            self.suraSeparator112LeadingConstraint.constant = -Constant.OffsetIpadPro
                            self.suraSeparator112TrailingConstraint.constant = Constant.OffsetIpadPro
                            self.suraSeparator113LeadingConstraint.constant = -Constant.OffsetIpadPro
                            self.suraSeparator113TrailingConstraint.constant = Constant.OffsetIpadPro
                            self.suraSeparator114LeadingConstraint.constant = -Constant.OffsetIpadPro
                            self.suraSeparator114TrailingConstraint.constant = Constant.OffsetIpadPro
        } else if UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiom.pad {
                            self.suraSeparator112LeadingConstraint.constant = -Constant.OffsetIpad
                            self.suraSeparator112TrailingConstraint.constant = Constant.OffsetIpad
                            self.suraSeparator113LeadingConstraint.constant = -Constant.OffsetIpad
                            self.suraSeparator113TrailingConstraint.constant = Constant.OffsetIpad
                            self.suraSeparator114LeadingConstraint.constant = -Constant.OffsetIpad
                            self.suraSeparator114TrailingConstraint.constant = Constant.OffsetIpad
        }
//        switch self.pageLocation {
//        case LBQuranPage.main:
//            self.pageStatus = self.appDelegate.pageStatus
//        case LBQuranPage.top:
//            self.pageStatus = self.appDelegate.topPageStatus
//        case LBQuranPage.bottom:
//            self.pageStatus = self.appDelegate.bottomPageStatus
//        }
        
        let device = LBDeviceHeight()
        let size: CGFloat = device.quranTextFontSize
        
            let fontBasmallah = UIFont(name: "QCF_BSML", size: size)
        let fontPage = UIFont(name: "QCF_P604", size: size)

                self.titleSura112.text = "ﰝﮌ"
                    self.titleSura112.font = fontBasmallah
                self.suraBismillah112.text = "ﭓﭒﭑ"
                    self.suraBismillah112.font = fontBasmallah
                self.sura112_aya1_1.text = "ﭕﭔﭓﭒﭑ"
                self.sura112_aya2_1.text = "ﭘﭗﭖ"
                self.sura112_aya3_1.text = "ﭚﭙ"
                self.sura112_aya3_2.text = "ﭝﭜﭛ"
                self.sura112_aya4_1.text = "ﭣﭢﭡﭠﭟﭞ"
                self.titleSura113.text = "ﰞﮌ"
                    self.titleSura113.font = fontBasmallah
                self.suraBismillah113.text = "ﭓﭒﭑ"
                    self.suraBismillah113.font = fontBasmallah
                self.sura113_aya1_1.text = "ﭨﭧﭦﭥﭤ"
                self.sura113_aya2_1.text = "ﭭﭬﭫﭪﭩ"
                self.sura113_aya3_1.text = "ﭮ"
                self.sura113_aya3_2.text = "ﭳﭲﭱﭰﭯ"
                self.sura113_aya4_1.text = "ﭷﭶﭵﭴ"
                self.sura113_aya4_2.text = "ﭹﭸ"
                self.sura113_aya5_1.text = "ﭿﭾﭽﭼﭻﭺ"
                self.titleSura114.text = "ﰟﮌ"
                    self.titleSura114.font = fontBasmallah
                self.suraBismillah114.text = "ﭓﭒﭑ"
                    self.suraBismillah114.font = fontBasmallah
                self.sura114_aya1_1.text = "ﮄﮃﮂﮁﮀ"
                self.sura114_aya2_1.text = "ﮇﮆﮅ"
                self.sura114_aya3_1.text = "ﮈ"
                self.sura114_aya3_2.text = "ﮊﮉ"
                self.sura114_aya4_1.text = "ﮏﮎﮍﮌﮋ"
                self.sura114_aya5_1.text = "ﮐ"
                self.sura114_aya5_2.text = "ﮕﮔﮓﮒﮑ"
                self.sura114_aya6_1.text = "ﮙﮘﮗﮖ"

        for aya in self.constantAllAyat {
            aya?.font = fontPage
        }

        if self.pageStatus[0] == true {
            for aya in self.constantAyatHide {
                aya?.textColor = Constant.TextColor
                aya?.shadowColor = Constant.TextColor
            }
        } else {
            for aya in self.constantAyatHide {
                aya?.textColor = Constant.BlockColor
                aya?.shadowColor = Constant.BlockColor
            }
        }


        if self.pageStatus[1] == true {
            for button in self.constantAllButton {
                button?.isHidden = false
                button?.backgroundColor = UIColor.clear
            }
        } else {
            for button in self.constantButtonHide {
                button?.isHidden = true
            }
            for button in self.constantButtonShow {
                button?.isHidden = false
                button?.backgroundColor = Constant.PeekColor
            }
            for aya in self.constantAyatHide {
                aya?.textColor = Constant.TestColor
                aya?.shadowColor = Constant.TestColor
            }
        }
    }

//    func previewingContext(_ previewingContext: UIViewControllerPreviewing, viewControllerForLocation location: CGPoint) -> UIViewController? {
//        guard let viewController = self.rootVC?.storyboard?.instantiateViewController(withIdentifier: Constant.ForceStoryboardIdentifier) as? TranslationForceTouchViewController else { return nil }
//
//        if self.translationData["translation"] != nil {
//            viewController.preferredContentSize = CGSize(width: 0, height: 0)
//            viewController.translationData = self.translationData
//
//            return viewController
//        } else {
//            return nil
//        }
//    }

    func previewingContext(_ previewingContext: UIViewControllerPreviewing, commit viewControllerToCommit: UIViewController) {
        show(viewControllerToCommit, sender: self)
    }

    func focusMemorization() {
        print(#function)
        // self.rootVC?.playTapAudio()
        
        if self.memorizationIndex == self.memorizedAya.count {
            for aya in self.constantAyatShow {
                aya?.textColor = Constant.TextColor
                aya?.shadowColor = Constant.TextColor
            }
            for aya in self.constantAyatHide {
                aya?.textColor = Constant.BlockColor
                aya?.shadowColor = Constant.BlockColor
            }
            self.memorizationIndex = 0
            self.focusedAnAyat = false
        } else {
            var i = 0
            for aya in self.memorizedAya {
                for dictionary in aya {
                    let a = dictionary["aya"] as! UILabel!
                    if self.focusedAnAyat {
                        if i == self.memorizationIndex {
                            a?.textColor = Constant.TextColor
                            a?.shadowColor = Constant.TextColor
                        } else {
                            a?.textColor = Constant.BlockColor
                            a?.shadowColor = Constant.BlockColor
                        }
                    } else {
                        if i <= self.memorizationIndex {
                            a?.textColor = Constant.TextColor
                            a?.shadowColor = Constant.TextColor
                        } else {
                            a?.textColor = Constant.BlockColor
                            a?.shadowColor = Constant.BlockColor
                        }
                    }
                }
                i = i + 1
            }
            for aya in self.constantAyatHide {
                aya?.textColor = Constant.TestColor
                aya?.shadowColor = Constant.TestColor
            }
            if !self.focusedAnAyat {
                self.memorizationIndex = self.memorizationIndex + 1
            }
            self.focusedAnAyat = !self.focusedAnAyat
        }
    }

    func handleMemorize(sender: UIButton, touchEvent: UITouch) {
//        let threshold: CGFloat = 0.1
//        if touchEvent.phase == UITouchPhase.began {
//            self.translationData["sura"] = self.pageData.suraArray[0]
//            self.translationData["aya"] = "\(self.pageData.ayaActualNumber[sender.tag - 1])"
//            self.translationData["translation"] = self.pageData.englishActualTranslation[sender.tag - 1]
//        } else if touchEvent.phase == UITouchPhase.ended || touchEvent.phase == UITouchPhase.cancelled {
//            self.translationData["sura"] = nil
//            self.translationData["aya"] = nil
//            self.translationData["translation"] = nil
//            print("tapCount: \(touchEvent.tapCount)")
//            if touchEvent.tapCount == 2 {
//                focusMemorization()
//            } else {
//                print(threshold)
//            }
//        }
    }

    func handleTest(sender: UIButton, touchEvent: UITouch) {
        if touchEvent.phase == UITouchPhase.began {
            for button in self.constantAllButton {
                button?.alpha = Constant.PeekAlpha
            }
        } else if touchEvent.phase == UITouchPhase.ended || touchEvent.phase == UITouchPhase.cancelled {
            for button in self.constantAllButton {
                button?.alpha = 1.0
            }
        }
    }

    @IBAction func ayaButtonTapped(_ sender: UIButton, forEvent event: UIEvent) {
        event.allTouches?.forEach({ (touchEvent: UITouch) -> () in
//            if self.rootVC?.status == LBPageStatus.initial || self.rootVC?.status == LBPageStatus.memorize {
//                handleMemorize(sender: sender, touchEvent: touchEvent)
//            } else if self.rootVC?.status == LBPageStatus.revise {
//                handleMemorize(sender: sender, touchEvent: touchEvent)
//                handleTest(sender: sender, touchEvent: touchEvent)
//            } else if self.rootVC?.status == LBPageStatus.test {
                handleTest(sender: sender, touchEvent: touchEvent)
//            }
        })
    }
}
