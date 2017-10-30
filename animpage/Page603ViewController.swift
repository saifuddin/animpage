//
//  Page603ViewController.swift
//  Hifz
//
//  Created by Hifz Quran Page XIB Generator author by Ahmad Idzuan.
//  Copyright © 2016 Brainstorm Technologies Sdn Bhd. All rights reserved.
//

import UIKit

class Page603ViewController: UIViewController {

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

                    @IBOutlet weak var suraSeparator109LeadingConstraint: NSLayoutConstraint!
                    @IBOutlet weak var suraSeparator109TrailingConstraint: NSLayoutConstraint!
            @IBOutlet weak var suraSeparator109: UIImageView!
            @IBOutlet weak var titleSura109: UILabel!
            @IBOutlet weak var suraBismillah109: UILabel!
            @IBOutlet weak var sura109_aya1_1: UILabel!
            @IBOutlet weak var sura109_aya1_1Button: UIButton!
            @IBOutlet weak var sura109_aya2_1: UILabel!
            @IBOutlet weak var sura109_aya2_1Button: UIButton!
            @IBOutlet weak var sura109_aya3_1: UILabel!
            @IBOutlet weak var sura109_aya3_1Button: UIButton!
            @IBOutlet weak var sura109_aya4_1: UILabel!
            @IBOutlet weak var sura109_aya4_1Button: UIButton!
            @IBOutlet weak var sura109_aya5_1: UILabel!
            @IBOutlet weak var sura109_aya5_1Button: UIButton!
            @IBOutlet weak var sura109_aya6_1: UILabel!
            @IBOutlet weak var sura109_aya6_1Button: UIButton!
                    @IBOutlet weak var suraSeparator110LeadingConstraint: NSLayoutConstraint!
                    @IBOutlet weak var suraSeparator110TrailingConstraint: NSLayoutConstraint!
            @IBOutlet weak var suraSeparator110: UIImageView!
            @IBOutlet weak var titleSura110: UILabel!
            @IBOutlet weak var suraBismillah110: UILabel!
            @IBOutlet weak var sura110_aya1_1: UILabel!
            @IBOutlet weak var sura110_aya1_1Button: UIButton!
            @IBOutlet weak var sura110_aya2_1: UILabel!
            @IBOutlet weak var sura110_aya2_1Button: UIButton!
            @IBOutlet weak var sura110_aya2_2: UILabel!
            @IBOutlet weak var sura110_aya2_2Button: UIButton!
            @IBOutlet weak var sura110_aya3_1: UILabel!
            @IBOutlet weak var sura110_aya3_1Button: UIButton!
            @IBOutlet weak var sura110_aya3_2: UILabel!
            @IBOutlet weak var sura110_aya3_2Button: UIButton!
                    @IBOutlet weak var suraSeparator111LeadingConstraint: NSLayoutConstraint!
                    @IBOutlet weak var suraSeparator111TrailingConstraint: NSLayoutConstraint!
            @IBOutlet weak var suraSeparator111: UIImageView!
            @IBOutlet weak var titleSura111: UILabel!
            @IBOutlet weak var suraBismillah111: UILabel!
            @IBOutlet weak var sura111_aya1_1: UILabel!
            @IBOutlet weak var sura111_aya1_1Button: UIButton!
            @IBOutlet weak var sura111_aya2_1: UILabel!
            @IBOutlet weak var sura111_aya2_1Button: UIButton!
            @IBOutlet weak var sura111_aya2_2: UILabel!
            @IBOutlet weak var sura111_aya2_2Button: UIButton!
            @IBOutlet weak var sura111_aya3_1: UILabel!
            @IBOutlet weak var sura111_aya3_1Button: UIButton!
            @IBOutlet weak var sura111_aya4_1: UILabel!
            @IBOutlet weak var sura111_aya4_1Button: UIButton!
            @IBOutlet weak var sura111_aya4_2: UILabel!
            @IBOutlet weak var sura111_aya4_2Button: UIButton!
            @IBOutlet weak var sura111_aya5_1: UILabel!
            @IBOutlet weak var sura111_aya5_1Button: UIButton!

    let page = 603
    let daysNumber = [18, 4, 3, 2, 1]
    let appDelegate = UIApplication.shared.delegate as! AppDelegate

    weak var rootVC: UIViewController?
    var pageData: LBPageData = LBPageData(page: 603)
    var plan = LBMemorizationPlan()
    var pageLocation = LBQuranPage.main
    var pageStatus = [true, true]
    var memorizationIndex = 0
    var focusedAnAyat = false
    var translationData: [String : String] = [:]

    var ayaSura: [[Int: [[String: AnyObject]]]] = []
    var memorizedAya: [[[String: AnyObject]]] = []

        var constantAya1of18: [UILabel?] = []
        var constantButton1of18: [UIButton?] = []
        var constantAya2of18: [UILabel?] = []
        var constantButton2of18: [UIButton?] = []
        var constantAya3of18: [UILabel?] = []
        var constantButton3of18: [UIButton?] = []
        var constantAya4of18: [UILabel?] = []
        var constantButton4of18: [UIButton?] = []
        var constantAya5of18: [UILabel?] = []
        var constantButton5of18: [UIButton?] = []
        var constantAya6of18: [UILabel?] = []
        var constantButton6of18: [UIButton?] = []
        var constantAya7of18: [UILabel?] = []
        var constantButton7of18: [UIButton?] = []
        var constantAya8of18: [UILabel?] = []
        var constantButton8of18: [UIButton?] = []
        var constantAya9of18: [UILabel?] = []
        var constantButton9of18: [UIButton?] = []
        var constantAya10of18: [UILabel?] = []
        var constantButton10of18: [UIButton?] = []
        var constantAya11of18: [UILabel?] = []
        var constantButton11of18: [UIButton?] = []
        var constantAya12of18: [UILabel?] = []
        var constantButton12of18: [UIButton?] = []
        var constantAya13of18: [UILabel?] = []
        var constantButton13of18: [UIButton?] = []
        var constantAya14of18: [UILabel?] = []
        var constantButton14of18: [UIButton?] = []
        var constantAya15of18: [UILabel?] = []
        var constantButton15of18: [UIButton?] = []
        var constantAya16of18: [UILabel?] = []
        var constantButton16of18: [UIButton?] = []
        var constantAya17of18: [UILabel?] = []
        var constantButton17of18: [UIButton?] = []
        var constantAya18of18: [UILabel?] = []
        var constantButton18of18: [UIButton?] = []
    
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
//                self.ayaSura[0][1]!.append(["aya" : self.sura109_aya1_1, "button" : self.sura109_aya1_1Button])
//                    self.ayaSura[0][2] = []
//                self.ayaSura[0][2]!.append(["aya" : self.sura109_aya2_1, "button" : self.sura109_aya2_1Button])
//                    self.ayaSura[0][3] = []
//                self.ayaSura[0][3]!.append(["aya" : self.sura109_aya3_1, "button" : self.sura109_aya3_1Button])
//                    self.ayaSura[0][4] = []
//                self.ayaSura[0][4]!.append(["aya" : self.sura109_aya4_1, "button" : self.sura109_aya4_1Button])
//                    self.ayaSura[0][5] = []
//                self.ayaSura[0][5]!.append(["aya" : self.sura109_aya5_1, "button" : self.sura109_aya5_1Button])
//                    self.ayaSura[0][6] = []
//                self.ayaSura[0][6]!.append(["aya" : self.sura109_aya6_1, "button" : self.sura109_aya6_1Button])
//                self.ayaSura.append([:])
//                    self.ayaSura[1][1] = []
//                self.ayaSura[1][1]!.append(["aya" : self.sura110_aya1_1, "button" : self.sura110_aya1_1Button])
//                    self.ayaSura[1][2] = []
//                self.ayaSura[1][2]!.append(["aya" : self.sura110_aya2_1, "button" : self.sura110_aya2_1Button])
//                self.ayaSura[1][2]!.append(["aya" : self.sura110_aya2_2, "button" : self.sura110_aya2_2Button])
//                    self.ayaSura[1][3] = []
//                self.ayaSura[1][3]!.append(["aya" : self.sura110_aya3_1, "button" : self.sura110_aya3_1Button])
//                self.ayaSura[1][3]!.append(["aya" : self.sura110_aya3_2, "button" : self.sura110_aya3_2Button])
//                self.ayaSura.append([:])
//                    self.ayaSura[2][1] = []
//                self.ayaSura[2][1]!.append(["aya" : self.sura111_aya1_1, "button" : self.sura111_aya1_1Button])
//                    self.ayaSura[2][2] = []
//                self.ayaSura[2][2]!.append(["aya" : self.sura111_aya2_1, "button" : self.sura111_aya2_1Button])
//                self.ayaSura[2][2]!.append(["aya" : self.sura111_aya2_2, "button" : self.sura111_aya2_2Button])
//                    self.ayaSura[2][3] = []
//                self.ayaSura[2][3]!.append(["aya" : self.sura111_aya3_1, "button" : self.sura111_aya3_1Button])
//                    self.ayaSura[2][4] = []
//                self.ayaSura[2][4]!.append(["aya" : self.sura111_aya4_1, "button" : self.sura111_aya4_1Button])
//                self.ayaSura[2][4]!.append(["aya" : self.sura111_aya4_2, "button" : self.sura111_aya4_2Button])
//                    self.ayaSura[2][5] = []
//                self.ayaSura[2][5]!.append(["aya" : self.sura111_aya5_1, "button" : self.sura111_aya5_1Button])
//        
//            constantAya1of18 = []
//            constantButton1of18 = []
//                constantAya1of18.append(self.sura109_aya1_1)
//                constantButton1of18.append(self.sura109_aya1_1Button)
//            constantAya2of18 = []
//            constantButton2of18 = []
//                constantAya2of18.append(self.sura109_aya2_1)
//                constantButton2of18.append(self.sura109_aya2_1Button)
//            constantAya3of18 = []
//            constantButton3of18 = []
//                constantAya3of18.append(self.sura109_aya3_1)
//                constantButton3of18.append(self.sura109_aya3_1Button)
//            constantAya4of18 = []
//            constantButton4of18 = []
//                constantAya4of18.append(self.sura109_aya4_1)
//                constantButton4of18.append(self.sura109_aya4_1Button)
//            constantAya5of18 = []
//            constantButton5of18 = []
//                constantAya5of18.append(self.sura109_aya5_1)
//                constantButton5of18.append(self.sura109_aya5_1Button)
//            constantAya6of18 = []
//            constantButton6of18 = []
//                constantAya6of18.append(self.sura109_aya6_1)
//                constantButton6of18.append(self.sura109_aya6_1Button)
//            constantAya7of18 = []
//            constantButton7of18 = []
//                constantAya7of18.append(self.sura110_aya1_1)
//                constantButton7of18.append(self.sura110_aya1_1Button)
//            constantAya8of18 = []
//            constantButton8of18 = []
//                constantAya8of18.append(self.sura110_aya2_1)
//                constantButton8of18.append(self.sura110_aya2_1Button)
//            constantAya9of18 = []
//            constantButton9of18 = []
//                constantAya9of18.append(self.sura110_aya2_2)
//                constantButton9of18.append(self.sura110_aya2_2Button)
//            constantAya10of18 = []
//            constantButton10of18 = []
//                constantAya10of18.append(self.sura110_aya3_1)
//                constantButton10of18.append(self.sura110_aya3_1Button)
//            constantAya11of18 = []
//            constantButton11of18 = []
//                constantAya11of18.append(self.sura110_aya3_2)
//                constantButton11of18.append(self.sura110_aya3_2Button)
//            constantAya12of18 = []
//            constantButton12of18 = []
//                constantAya12of18.append(self.sura111_aya1_1)
//                constantButton12of18.append(self.sura111_aya1_1Button)
//            constantAya13of18 = []
//            constantButton13of18 = []
//                constantAya13of18.append(self.sura111_aya2_1)
//                constantButton13of18.append(self.sura111_aya2_1Button)
//            constantAya14of18 = []
//            constantButton14of18 = []
//                constantAya14of18.append(self.sura111_aya2_2)
//                constantButton14of18.append(self.sura111_aya2_2Button)
//            constantAya15of18 = []
//            constantButton15of18 = []
//                constantAya15of18.append(self.sura111_aya3_1)
//                constantButton15of18.append(self.sura111_aya3_1Button)
//            constantAya16of18 = []
//            constantButton16of18 = []
//                constantAya16of18.append(self.sura111_aya4_1)
//                constantButton16of18.append(self.sura111_aya4_1Button)
//            constantAya17of18 = []
//            constantButton17of18 = []
//                constantAya17of18.append(self.sura111_aya4_2)
//                constantButton17of18.append(self.sura111_aya4_2Button)
//            constantAya18of18 = []
//            constantButton18of18 = []
//                constantAya18of18.append(self.sura111_aya5_1)
//                constantButton18of18.append(self.sura111_aya5_1Button)

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

            self.constantAllAyat.append(contentsOf: self.constantAya1of18)
            self.constantAllButton.append(contentsOf: self.constantButton1of18)
            self.constantAllAyat.append(contentsOf: self.constantAya2of18)
            self.constantAllButton.append(contentsOf: self.constantButton2of18)
            self.constantAllAyat.append(contentsOf: self.constantAya3of18)
            self.constantAllButton.append(contentsOf: self.constantButton3of18)
            self.constantAllAyat.append(contentsOf: self.constantAya4of18)
            self.constantAllButton.append(contentsOf: self.constantButton4of18)
            self.constantAllAyat.append(contentsOf: self.constantAya5of18)
            self.constantAllButton.append(contentsOf: self.constantButton5of18)
            self.constantAllAyat.append(contentsOf: self.constantAya6of18)
            self.constantAllButton.append(contentsOf: self.constantButton6of18)
            self.constantAllAyat.append(contentsOf: self.constantAya7of18)
            self.constantAllButton.append(contentsOf: self.constantButton7of18)
            self.constantAllAyat.append(contentsOf: self.constantAya8of18)
            self.constantAllButton.append(contentsOf: self.constantButton8of18)
            self.constantAllAyat.append(contentsOf: self.constantAya9of18)
            self.constantAllButton.append(contentsOf: self.constantButton9of18)
            self.constantAllAyat.append(contentsOf: self.constantAya10of18)
            self.constantAllButton.append(contentsOf: self.constantButton10of18)
            self.constantAllAyat.append(contentsOf: self.constantAya11of18)
            self.constantAllButton.append(contentsOf: self.constantButton11of18)
            self.constantAllAyat.append(contentsOf: self.constantAya12of18)
            self.constantAllButton.append(contentsOf: self.constantButton12of18)
            self.constantAllAyat.append(contentsOf: self.constantAya13of18)
            self.constantAllButton.append(contentsOf: self.constantButton13of18)
            self.constantAllAyat.append(contentsOf: self.constantAya14of18)
            self.constantAllButton.append(contentsOf: self.constantButton14of18)
            self.constantAllAyat.append(contentsOf: self.constantAya15of18)
            self.constantAllButton.append(contentsOf: self.constantButton15of18)
            self.constantAllAyat.append(contentsOf: self.constantAya16of18)
            self.constantAllButton.append(contentsOf: self.constantButton16of18)
            self.constantAllAyat.append(contentsOf: self.constantAya17of18)
            self.constantAllButton.append(contentsOf: self.constantButton17of18)
            self.constantAllAyat.append(contentsOf: self.constantAya18of18)
            self.constantAllButton.append(contentsOf: self.constantButton18of18)
    
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
                            self.suraSeparator109LeadingConstraint.constant = Constant.Offset4s
                            self.suraSeparator109TrailingConstraint.constant = Constant.Offset4s
                            self.suraSeparator110LeadingConstraint.constant = Constant.Offset4s
                            self.suraSeparator110TrailingConstraint.constant = Constant.Offset4s
                            self.suraSeparator111LeadingConstraint.constant = Constant.Offset4s
                            self.suraSeparator111TrailingConstraint.constant = Constant.Offset4s
        } else if LBDeviceHeight().isIpadPro {
                            self.suraSeparator109LeadingConstraint.constant = Constant.OffsetIpadPro
                            self.suraSeparator109TrailingConstraint.constant = Constant.OffsetIpadPro
                            self.suraSeparator110LeadingConstraint.constant = Constant.OffsetIpadPro
                            self.suraSeparator110TrailingConstraint.constant = Constant.OffsetIpadPro
                            self.suraSeparator111LeadingConstraint.constant = Constant.OffsetIpadPro
                            self.suraSeparator111TrailingConstraint.constant = Constant.OffsetIpadPro
        } else if UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiom.pad {
                            self.suraSeparator109LeadingConstraint.constant = Constant.OffsetIpad
                            self.suraSeparator109TrailingConstraint.constant = Constant.OffsetIpad
                            self.suraSeparator110LeadingConstraint.constant = Constant.OffsetIpad
                            self.suraSeparator110TrailingConstraint.constant = Constant.OffsetIpad
                            self.suraSeparator111LeadingConstraint.constant = Constant.OffsetIpad
                            self.suraSeparator111TrailingConstraint.constant = Constant.OffsetIpad
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
        let fontPage = UIFont(name: "QCF_P603", size: size)

                self.titleSura109.text = "ﰚﮌ"
                    self.titleSura109.font = fontBasmallah
                self.suraBismillah109.text = "ﭓﭒﭑ"
                    self.suraBismillah109.font = fontBasmallah
                self.sura109_aya1_1.text = "ﭔﭓﭒﭑ"
                self.sura109_aya2_1.text = "ﭙﭘﭗﭖﭕ"
                self.sura109_aya3_1.text = "ﭟﭞﭝﭜﭛﭚ"
                self.sura109_aya4_1.text = "ﭥﭤﭣﭢﭡﭠ"
                self.sura109_aya5_1.text = "ﭫﭪﭩﭨﭧﭦ"
                self.sura109_aya6_1.text = "ﭰﭯﭮﭭﭬ"
                self.titleSura110.text = "ﰛﮌ"
                    self.titleSura110.font = fontBasmallah
                self.suraBismillah110.text = "ﭓﭒﭑ"
                    self.suraBismillah110.font = fontBasmallah
                self.sura110_aya1_1.text = "ﭶﭵﭴﭳﭲﭱ"
                self.sura110_aya2_1.text = "ﭸﭷ"
                self.sura110_aya2_2.text = "ﭾﭽﭼﭻﭺﭹ"
                self.sura110_aya3_1.text = "ﮁﮀﭿ"
                self.sura110_aya3_2.text = "ﮇﮆﮅﮄﮃﮂ"
                self.titleSura111.text = "ﰜﮌ"
                    self.titleSura111.font = fontBasmallah
                self.suraBismillah111.text = "ﭓﭒﭑ"
                    self.suraBismillah111.font = fontBasmallah
                self.sura111_aya1_1.text = "ﮍﮌﮋﮊﮉﮈ"
                self.sura111_aya2_1.text = "ﮒﮑﮐﮏﮎ"
                self.sura111_aya2_2.text = "ﮔﮓ"
                self.sura111_aya3_1.text = "ﮙﮘﮗﮖﮕ"
                self.sura111_aya4_1.text = "ﮚ"
                self.sura111_aya4_2.text = "ﮝﮜﮛ"
                self.sura111_aya5_1.text = "ﮣﮢﮡﮠﮟﮞ"

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
