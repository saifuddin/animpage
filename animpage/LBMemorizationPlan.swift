//
//  LBMemorizationPlan.swift
//  Hifz
//
//  Created by Mohd Zaid Said on 29/04/2016.
//  Copyright © 2016 Brainstorm Technologies Sdn Bhd. All rights reserved.
//

import UIKit

struct LBMemorizationPlan {
    var ayatShown: [UILabel?]
    var ayatHidden: [UILabel?]
    var buttonShown: [UIButton?]
    var buttonHidden: [UIButton?]

    init() {
        self.ayatShown = []
        self.ayatHidden = []
        self.buttonShown = []
        self.buttonHidden = []
    }

    mutating func forCorePage(firstPage: Int, progressCurrentPage: Int, difficulty: Int, dayNumber: Int, viewController: UIViewController?) -> (pageStack: [Int], suraStack: [String], suraAllStack: [String], ayaStartStack: [Int], ayaEndStack: [Int]) {
        let pageData = LBPageData(page: firstPage)
        let suraAllStack: [String] = pageData.suraEname
        let suraStack: [String] = pageData.suraEname
        var ayaStartStack: [Int] = pageData.ayaStartNumber
        var ayaEndStack: [Int] = pageData.ayaEndNumber
        let pageStack: [Int] = [firstPage]
        var viewControllers: [Int : Any?] = [:]
        var ayatShow: [UILabel?] = []
        var ayatHide: [UILabel?] = []
        var buttonShow: [UIButton?] = []
        var buttonHide: [UIButton?] = []

//        viewControllers[2] = viewController as? Page002ViewController ?? nil
//        viewControllers[3] = viewController as? Page003ViewController ?? nil
//        viewControllers[4] = viewController as? Page004ViewController ?? nil
//        viewControllers[5] = viewController as? Page005ViewController ?? nil
//        viewControllers[6] = viewController as? Page006ViewController ?? nil
//        viewControllers[7] = viewController as? Page007ViewController ?? nil
//        viewControllers[8] = viewController as? Page008ViewController ?? nil
//        viewControllers[9] = viewController as? Page009ViewController ?? nil
//        viewControllers[10] = viewController as? Page010ViewController ?? nil
//        viewControllers[11] = viewController as? Page011ViewController ?? nil
//        viewControllers[12] = viewController as? Page012ViewController ?? nil
//        viewControllers[13] = viewController as? Page013ViewController ?? nil
//        viewControllers[14] = viewController as? Page014ViewController ?? nil
//        viewControllers[15] = viewController as? Page015ViewController ?? nil
//        viewControllers[16] = viewController as? Page016ViewController ?? nil
//        viewControllers[17] = viewController as? Page017ViewController ?? nil
//        viewControllers[18] = viewController as? Page018ViewController ?? nil
//        viewControllers[19] = viewController as? Page019ViewController ?? nil
//        viewControllers[20] = viewController as? Page020ViewController ?? nil
//        viewControllers[21] = viewController as? Page021ViewController ?? nil
//        viewControllers[22] = viewController as? Page022ViewController ?? nil
//        viewControllers[23] = viewController as? Page023ViewController ?? nil
//        viewControllers[24] = viewController as? Page024ViewController ?? nil
//        viewControllers[25] = viewController as? Page025ViewController ?? nil
//        viewControllers[26] = viewController as? Page026ViewController ?? nil
//        viewControllers[27] = viewController as? Page027ViewController ?? nil
//        viewControllers[28] = viewController as? Page028ViewController ?? nil
//        viewControllers[29] = viewController as? Page029ViewController ?? nil
//        viewControllers[30] = viewController as? Page030ViewController ?? nil
//        viewControllers[31] = viewController as? Page031ViewController ?? nil
//        viewControllers[32] = viewController as? Page032ViewController ?? nil
//        viewControllers[33] = viewController as? Page033ViewController ?? nil
//        viewControllers[34] = viewController as? Page034ViewController ?? nil
//        viewControllers[35] = viewController as? Page035ViewController ?? nil
//        viewControllers[36] = viewController as? Page036ViewController ?? nil
//        viewControllers[37] = viewController as? Page037ViewController ?? nil
//        viewControllers[38] = viewController as? Page038ViewController ?? nil
//        viewControllers[39] = viewController as? Page039ViewController ?? nil
//        viewControllers[40] = viewController as? Page040ViewController ?? nil
//        viewControllers[41] = viewController as? Page041ViewController ?? nil
//        viewControllers[42] = viewController as? Page042ViewController ?? nil
//        viewControllers[43] = viewController as? Page043ViewController ?? nil
//        viewControllers[44] = viewController as? Page044ViewController ?? nil
//        viewControllers[45] = viewController as? Page045ViewController ?? nil
//        viewControllers[46] = viewController as? Page046ViewController ?? nil
//        viewControllers[47] = viewController as? Page047ViewController ?? nil
//        viewControllers[48] = viewController as? Page048ViewController ?? nil
//        viewControllers[49] = viewController as? Page049ViewController ?? nil

//        switch firstPage {
//        case 2:
//            // MARK: - Page 2
//            switch dayNumber {
//            case 1:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 1, Difficulty 1
//                    ayaStartStack = [2]
//                    ayaEndStack = [2]
//                    if let page = viewController as? Page002ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of5)
//                        ayatShow.append(contentsOf: page.constantAya2of5)
//                        ayatHide.append(contentsOf: page.constantAya3of5)
//                        ayatHide.append(contentsOf: page.constantAya4of5)
//                        ayatHide.append(contentsOf: page.constantAya5of5)
//                        buttonHide.append(contentsOf: page.constantButton1of5)
//                        buttonShow.append(contentsOf: page.constantButton2of5)
//                        buttonHide.append(contentsOf: page.constantButton3of5)
//                        buttonHide.append(contentsOf: page.constantButton4of5)
//                        buttonHide.append(contentsOf: page.constantButton5of5)
//                    }
//                default:
//                    break
//                }
//            case 2:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 2, Difficulty 1
//                    ayaStartStack = [3]
//                    ayaEndStack = [3]
//                    if let page = viewController as? Page002ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of5)
//                        ayatHide.append(contentsOf: page.constantAya2of5)
//                        ayatShow.append(contentsOf: page.constantAya3of5)
//                        ayatHide.append(contentsOf: page.constantAya4of5)
//                        ayatHide.append(contentsOf: page.constantAya5of5)
//                        buttonHide.append(contentsOf: page.constantButton1of5)
//                        buttonHide.append(contentsOf: page.constantButton2of5)
//                        buttonShow.append(contentsOf: page.constantButton3of5)
//                        buttonHide.append(contentsOf: page.constantButton4of5)
//                        buttonHide.append(contentsOf: page.constantButton5of5)
//                    }
//                default:
//                    break
//                }
//            case 3:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 3, Difficulty 1
//                    ayaStartStack = [4]
//                    ayaEndStack = [4]
//                    if let page = viewController as? Page002ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of5)
//                        ayatHide.append(contentsOf: page.constantAya2of5)
//                        ayatHide.append(contentsOf: page.constantAya3of5)
//                        ayatShow.append(contentsOf: page.constantAya4of5)
//                        ayatHide.append(contentsOf: page.constantAya5of5)
//                        buttonHide.append(contentsOf: page.constantButton1of5)
//                        buttonHide.append(contentsOf: page.constantButton2of5)
//                        buttonHide.append(contentsOf: page.constantButton3of5)
//                        buttonShow.append(contentsOf: page.constantButton4of5)
//                        buttonHide.append(contentsOf: page.constantButton5of5)
//                    }
//                default:
//                    break
//                }
//            case 4:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 4, Difficulty 1
//                    ayaStartStack = [5]
//                    ayaEndStack = [5]
//                    if let page = viewController as? Page002ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of5)
//                        ayatHide.append(contentsOf: page.constantAya2of5)
//                        ayatHide.append(contentsOf: page.constantAya3of5)
//                        ayatHide.append(contentsOf: page.constantAya4of5)
//                        ayatShow.append(contentsOf: page.constantAya5of5)
//                        buttonHide.append(contentsOf: page.constantButton1of5)
//                        buttonHide.append(contentsOf: page.constantButton2of5)
//                        buttonHide.append(contentsOf: page.constantButton3of5)
//                        buttonHide.append(contentsOf: page.constantButton4of5)
//                        buttonShow.append(contentsOf: page.constantButton5of5)
//                    }
//                default:
//                    break
//                }
//            default:
//                break
//            }
//        case 3:
//            // MARK: - Page 3
//            switch dayNumber {
//            case 1:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 1, Difficulty 1
//                    ayaStartStack = [6]
//                    ayaEndStack = [6]
//                    if let page = viewController as? Page003ViewController {
//                        ayatShow.append(contentsOf: page.constantAya1of11)
//                        ayatHide.append(contentsOf: page.constantAya2of11)
//                        ayatHide.append(contentsOf: page.constantAya3of11)
//                        ayatHide.append(contentsOf: page.constantAya4of11)
//                        ayatHide.append(contentsOf: page.constantAya5of11)
//                        ayatHide.append(contentsOf: page.constantAya6of11)
//                        ayatHide.append(contentsOf: page.constantAya7of11)
//                        ayatHide.append(contentsOf: page.constantAya8of11)
//                        ayatHide.append(contentsOf: page.constantAya9of11)
//                        ayatHide.append(contentsOf: page.constantAya10of11)
//                        ayatHide.append(contentsOf: page.constantAya11of11)
//                        buttonShow.append(contentsOf: page.constantButton1of11)
//                        buttonHide.append(contentsOf: page.constantButton2of11)
//                        buttonHide.append(contentsOf: page.constantButton3of11)
//                        buttonHide.append(contentsOf: page.constantButton4of11)
//                        buttonHide.append(contentsOf: page.constantButton5of11)
//                        buttonHide.append(contentsOf: page.constantButton6of11)
//                        buttonHide.append(contentsOf: page.constantButton7of11)
//                        buttonHide.append(contentsOf: page.constantButton8of11)
//                        buttonHide.append(contentsOf: page.constantButton9of11)
//                        buttonHide.append(contentsOf: page.constantButton10of11)
//                        buttonHide.append(contentsOf: page.constantButton11of11)
//                    }
//                default:
//                    break
//                }
//            case 2:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 2, Difficulty 1
//                    ayaStartStack = [7]
//                    ayaEndStack = [7]
//                    if let page = viewController as? Page003ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of11)
//                        ayatShow.append(contentsOf: page.constantAya2of11)
//                        ayatHide.append(contentsOf: page.constantAya3of11)
//                        ayatHide.append(contentsOf: page.constantAya4of11)
//                        ayatHide.append(contentsOf: page.constantAya5of11)
//                        ayatHide.append(contentsOf: page.constantAya6of11)
//                        ayatHide.append(contentsOf: page.constantAya7of11)
//                        ayatHide.append(contentsOf: page.constantAya8of11)
//                        ayatHide.append(contentsOf: page.constantAya9of11)
//                        ayatHide.append(contentsOf: page.constantAya10of11)
//                        ayatHide.append(contentsOf: page.constantAya11of11)
//                        buttonHide.append(contentsOf: page.constantButton1of11)
//                        buttonShow.append(contentsOf: page.constantButton2of11)
//                        buttonHide.append(contentsOf: page.constantButton3of11)
//                        buttonHide.append(contentsOf: page.constantButton4of11)
//                        buttonHide.append(contentsOf: page.constantButton5of11)
//                        buttonHide.append(contentsOf: page.constantButton6of11)
//                        buttonHide.append(contentsOf: page.constantButton7of11)
//                        buttonHide.append(contentsOf: page.constantButton8of11)
//                        buttonHide.append(contentsOf: page.constantButton9of11)
//                        buttonHide.append(contentsOf: page.constantButton10of11)
//                        buttonHide.append(contentsOf: page.constantButton11of11)
//                    }
//                default:
//                    break
//                }
//            case 3:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 3, Difficulty 1
//                    ayaStartStack = [8]
//                    ayaEndStack = [8]
//                    if let page = viewController as? Page003ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of11)
//                        ayatHide.append(contentsOf: page.constantAya2of11)
//                        ayatShow.append(contentsOf: page.constantAya3of11)
//                        ayatHide.append(contentsOf: page.constantAya4of11)
//                        ayatHide.append(contentsOf: page.constantAya5of11)
//                        ayatHide.append(contentsOf: page.constantAya6of11)
//                        ayatHide.append(contentsOf: page.constantAya7of11)
//                        ayatHide.append(contentsOf: page.constantAya8of11)
//                        ayatHide.append(contentsOf: page.constantAya9of11)
//                        ayatHide.append(contentsOf: page.constantAya10of11)
//                        ayatHide.append(contentsOf: page.constantAya11of11)
//                        buttonHide.append(contentsOf: page.constantButton1of11)
//                        buttonHide.append(contentsOf: page.constantButton2of11)
//                        buttonShow.append(contentsOf: page.constantButton3of11)
//                        buttonHide.append(contentsOf: page.constantButton4of11)
//                        buttonHide.append(contentsOf: page.constantButton5of11)
//                        buttonHide.append(contentsOf: page.constantButton6of11)
//                        buttonHide.append(contentsOf: page.constantButton7of11)
//                        buttonHide.append(contentsOf: page.constantButton8of11)
//                        buttonHide.append(contentsOf: page.constantButton9of11)
//                        buttonHide.append(contentsOf: page.constantButton10of11)
//                        buttonHide.append(contentsOf: page.constantButton11of11)
//                    }
//                default:
//                    break
//                }
//            case 4:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 4, Difficulty 1
//                    ayaStartStack = [9]
//                    ayaEndStack = [9]
//                    if let page = viewController as? Page003ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of11)
//                        ayatHide.append(contentsOf: page.constantAya2of11)
//                        ayatHide.append(contentsOf: page.constantAya3of11)
//                        ayatShow.append(contentsOf: page.constantAya4of11)
//                        ayatHide.append(contentsOf: page.constantAya5of11)
//                        ayatHide.append(contentsOf: page.constantAya6of11)
//                        ayatHide.append(contentsOf: page.constantAya7of11)
//                        ayatHide.append(contentsOf: page.constantAya8of11)
//                        ayatHide.append(contentsOf: page.constantAya9of11)
//                        ayatHide.append(contentsOf: page.constantAya10of11)
//                        ayatHide.append(contentsOf: page.constantAya11of11)
//                        buttonHide.append(contentsOf: page.constantButton1of11)
//                        buttonHide.append(contentsOf: page.constantButton2of11)
//                        buttonHide.append(contentsOf: page.constantButton3of11)
//                        buttonShow.append(contentsOf: page.constantButton4of11)
//                        buttonHide.append(contentsOf: page.constantButton5of11)
//                        buttonHide.append(contentsOf: page.constantButton6of11)
//                        buttonHide.append(contentsOf: page.constantButton7of11)
//                        buttonHide.append(contentsOf: page.constantButton8of11)
//                        buttonHide.append(contentsOf: page.constantButton9of11)
//                        buttonHide.append(contentsOf: page.constantButton10of11)
//                        buttonHide.append(contentsOf: page.constantButton11of11)
//                    }
//                default:
//                    break
//                }
//            case 5:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 5, Difficulty 1
//                    ayaStartStack = [10]
//                    ayaEndStack = [10]
//                    if let page = viewController as? Page003ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of11)
//                        ayatHide.append(contentsOf: page.constantAya2of11)
//                        ayatHide.append(contentsOf: page.constantAya3of11)
//                        ayatHide.append(contentsOf: page.constantAya4of11)
//                        ayatShow.append(contentsOf: page.constantAya5of11)
//                        ayatHide.append(contentsOf: page.constantAya6of11)
//                        ayatHide.append(contentsOf: page.constantAya7of11)
//                        ayatHide.append(contentsOf: page.constantAya8of11)
//                        ayatHide.append(contentsOf: page.constantAya9of11)
//                        ayatHide.append(contentsOf: page.constantAya10of11)
//                        ayatHide.append(contentsOf: page.constantAya11of11)
//                        buttonHide.append(contentsOf: page.constantButton1of11)
//                        buttonHide.append(contentsOf: page.constantButton2of11)
//                        buttonHide.append(contentsOf: page.constantButton3of11)
//                        buttonHide.append(contentsOf: page.constantButton4of11)
//                        buttonShow.append(contentsOf: page.constantButton5of11)
//                        buttonHide.append(contentsOf: page.constantButton6of11)
//                        buttonHide.append(contentsOf: page.constantButton7of11)
//                        buttonHide.append(contentsOf: page.constantButton8of11)
//                        buttonHide.append(contentsOf: page.constantButton9of11)
//                        buttonHide.append(contentsOf: page.constantButton10of11)
//                        buttonHide.append(contentsOf: page.constantButton11of11)
//                    }
//                default:
//                    break
//                }
//            case 6:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 6, Difficulty 1
//                    ayaStartStack = [11]
//                    ayaEndStack = [11]
//                    if let page = viewController as? Page003ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of11)
//                        ayatHide.append(contentsOf: page.constantAya2of11)
//                        ayatHide.append(contentsOf: page.constantAya3of11)
//                        ayatHide.append(contentsOf: page.constantAya4of11)
//                        ayatHide.append(contentsOf: page.constantAya5of11)
//                        ayatShow.append(contentsOf: page.constantAya6of11)
//                        ayatHide.append(contentsOf: page.constantAya7of11)
//                        ayatHide.append(contentsOf: page.constantAya8of11)
//                        ayatHide.append(contentsOf: page.constantAya9of11)
//                        ayatHide.append(contentsOf: page.constantAya10of11)
//                        ayatHide.append(contentsOf: page.constantAya11of11)
//                        buttonHide.append(contentsOf: page.constantButton1of11)
//                        buttonHide.append(contentsOf: page.constantButton2of11)
//                        buttonHide.append(contentsOf: page.constantButton3of11)
//                        buttonHide.append(contentsOf: page.constantButton4of11)
//                        buttonHide.append(contentsOf: page.constantButton5of11)
//                        buttonShow.append(contentsOf: page.constantButton6of11)
//                        buttonHide.append(contentsOf: page.constantButton7of11)
//                        buttonHide.append(contentsOf: page.constantButton8of11)
//                        buttonHide.append(contentsOf: page.constantButton9of11)
//                        buttonHide.append(contentsOf: page.constantButton10of11)
//                        buttonHide.append(contentsOf: page.constantButton11of11)
//                    }
//                default:
//                    break
//                }
//            case 7:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 7, Difficulty 1
//                    ayaStartStack = [12]
//                    ayaEndStack = [12]
//                    if let page = viewController as? Page003ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of11)
//                        ayatHide.append(contentsOf: page.constantAya2of11)
//                        ayatHide.append(contentsOf: page.constantAya3of11)
//                        ayatHide.append(contentsOf: page.constantAya4of11)
//                        ayatHide.append(contentsOf: page.constantAya5of11)
//                        ayatHide.append(contentsOf: page.constantAya6of11)
//                        ayatShow.append(contentsOf: page.constantAya7of11)
//                        ayatHide.append(contentsOf: page.constantAya8of11)
//                        ayatHide.append(contentsOf: page.constantAya9of11)
//                        ayatHide.append(contentsOf: page.constantAya10of11)
//                        ayatHide.append(contentsOf: page.constantAya11of11)
//                        buttonHide.append(contentsOf: page.constantButton1of11)
//                        buttonHide.append(contentsOf: page.constantButton2of11)
//                        buttonHide.append(contentsOf: page.constantButton3of11)
//                        buttonHide.append(contentsOf: page.constantButton4of11)
//                        buttonHide.append(contentsOf: page.constantButton5of11)
//                        buttonHide.append(contentsOf: page.constantButton6of11)
//                        buttonShow.append(contentsOf: page.constantButton7of11)
//                        buttonHide.append(contentsOf: page.constantButton8of11)
//                        buttonHide.append(contentsOf: page.constantButton9of11)
//                        buttonHide.append(contentsOf: page.constantButton10of11)
//                        buttonHide.append(contentsOf: page.constantButton11of11)
//                    }
//                default:
//                    break
//                }
//            case 8:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 8, Difficulty 1
//                    ayaStartStack = [13]
//                    ayaEndStack = [13]
//                    if let page = viewController as? Page003ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of11)
//                        ayatHide.append(contentsOf: page.constantAya2of11)
//                        ayatHide.append(contentsOf: page.constantAya3of11)
//                        ayatHide.append(contentsOf: page.constantAya4of11)
//                        ayatHide.append(contentsOf: page.constantAya5of11)
//                        ayatHide.append(contentsOf: page.constantAya6of11)
//                        ayatHide.append(contentsOf: page.constantAya7of11)
//                        ayatShow.append(contentsOf: page.constantAya8of11)
//                        ayatHide.append(contentsOf: page.constantAya9of11)
//                        ayatHide.append(contentsOf: page.constantAya10of11)
//                        ayatHide.append(contentsOf: page.constantAya11of11)
//                        buttonHide.append(contentsOf: page.constantButton1of11)
//                        buttonHide.append(contentsOf: page.constantButton2of11)
//                        buttonHide.append(contentsOf: page.constantButton3of11)
//                        buttonHide.append(contentsOf: page.constantButton4of11)
//                        buttonHide.append(contentsOf: page.constantButton5of11)
//                        buttonHide.append(contentsOf: page.constantButton6of11)
//                        buttonHide.append(contentsOf: page.constantButton7of11)
//                        buttonShow.append(contentsOf: page.constantButton8of11)
//                        buttonHide.append(contentsOf: page.constantButton9of11)
//                        buttonHide.append(contentsOf: page.constantButton10of11)
//                        buttonHide.append(contentsOf: page.constantButton11of11)
//                    }
//                default:
//                    break
//                }
//            case 9:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 9, Difficulty 1
//                    ayaStartStack = [14]
//                    ayaEndStack = [14]
//                    if let page = viewController as? Page003ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of11)
//                        ayatHide.append(contentsOf: page.constantAya2of11)
//                        ayatHide.append(contentsOf: page.constantAya3of11)
//                        ayatHide.append(contentsOf: page.constantAya4of11)
//                        ayatHide.append(contentsOf: page.constantAya5of11)
//                        ayatHide.append(contentsOf: page.constantAya6of11)
//                        ayatHide.append(contentsOf: page.constantAya7of11)
//                        ayatHide.append(contentsOf: page.constantAya8of11)
//                        ayatShow.append(contentsOf: page.constantAya9of11)
//                        ayatHide.append(contentsOf: page.constantAya10of11)
//                        ayatHide.append(contentsOf: page.constantAya11of11)
//                        buttonHide.append(contentsOf: page.constantButton1of11)
//                        buttonHide.append(contentsOf: page.constantButton2of11)
//                        buttonHide.append(contentsOf: page.constantButton3of11)
//                        buttonHide.append(contentsOf: page.constantButton4of11)
//                        buttonHide.append(contentsOf: page.constantButton5of11)
//                        buttonHide.append(contentsOf: page.constantButton6of11)
//                        buttonHide.append(contentsOf: page.constantButton7of11)
//                        buttonHide.append(contentsOf: page.constantButton8of11)
//                        buttonShow.append(contentsOf: page.constantButton9of11)
//                        buttonHide.append(contentsOf: page.constantButton10of11)
//                        buttonHide.append(contentsOf: page.constantButton11of11)
//                    }
//                default:
//                    break
//                }
//            case 10:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 10, Difficulty 1
//                    ayaStartStack = [15]
//                    ayaEndStack = [15]
//                    if let page = viewController as? Page003ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of11)
//                        ayatHide.append(contentsOf: page.constantAya2of11)
//                        ayatHide.append(contentsOf: page.constantAya3of11)
//                        ayatHide.append(contentsOf: page.constantAya4of11)
//                        ayatHide.append(contentsOf: page.constantAya5of11)
//                        ayatHide.append(contentsOf: page.constantAya6of11)
//                        ayatHide.append(contentsOf: page.constantAya7of11)
//                        ayatHide.append(contentsOf: page.constantAya8of11)
//                        ayatHide.append(contentsOf: page.constantAya9of11)
//                        ayatShow.append(contentsOf: page.constantAya10of11)
//                        ayatHide.append(contentsOf: page.constantAya11of11)
//                        buttonHide.append(contentsOf: page.constantButton1of11)
//                        buttonHide.append(contentsOf: page.constantButton2of11)
//                        buttonHide.append(contentsOf: page.constantButton3of11)
//                        buttonHide.append(contentsOf: page.constantButton4of11)
//                        buttonHide.append(contentsOf: page.constantButton5of11)
//                        buttonHide.append(contentsOf: page.constantButton6of11)
//                        buttonHide.append(contentsOf: page.constantButton7of11)
//                        buttonHide.append(contentsOf: page.constantButton8of11)
//                        buttonHide.append(contentsOf: page.constantButton9of11)
//                        buttonShow.append(contentsOf: page.constantButton10of11)
//                        buttonHide.append(contentsOf: page.constantButton11of11)
//                    }
//                default:
//                    break
//                }
//            case 11:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 11, Difficulty 1
//                    ayaStartStack = [16]
//                    ayaEndStack = [16]
//                    if let page = viewController as? Page003ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of11)
//                        ayatHide.append(contentsOf: page.constantAya2of11)
//                        ayatHide.append(contentsOf: page.constantAya3of11)
//                        ayatHide.append(contentsOf: page.constantAya4of11)
//                        ayatHide.append(contentsOf: page.constantAya5of11)
//                        ayatHide.append(contentsOf: page.constantAya6of11)
//                        ayatHide.append(contentsOf: page.constantAya7of11)
//                        ayatHide.append(contentsOf: page.constantAya8of11)
//                        ayatHide.append(contentsOf: page.constantAya9of11)
//                        ayatHide.append(contentsOf: page.constantAya10of11)
//                        ayatShow.append(contentsOf: page.constantAya11of11)
//                        buttonHide.append(contentsOf: page.constantButton1of11)
//                        buttonHide.append(contentsOf: page.constantButton2of11)
//                        buttonHide.append(contentsOf: page.constantButton3of11)
//                        buttonHide.append(contentsOf: page.constantButton4of11)
//                        buttonHide.append(contentsOf: page.constantButton5of11)
//                        buttonHide.append(contentsOf: page.constantButton6of11)
//                        buttonHide.append(contentsOf: page.constantButton7of11)
//                        buttonHide.append(contentsOf: page.constantButton8of11)
//                        buttonHide.append(contentsOf: page.constantButton9of11)
//                        buttonHide.append(contentsOf: page.constantButton10of11)
//                        buttonShow.append(contentsOf: page.constantButton11of11)
//                    }
//                default:
//                    break
//                }
//            default:
//                break
//            }
//        case 4:
//            // MARK: - Page 4
//            switch dayNumber {
//            case 1:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 1, Difficulty 1
//                    ayaStartStack = [17]
//                    ayaEndStack = [17]
//                    if let page = viewController as? Page004ViewController {
//                        ayatShow.append(contentsOf: page.constantAya1of8)
//                        ayatHide.append(contentsOf: page.constantAya2of8)
//                        ayatHide.append(contentsOf: page.constantAya3of8)
//                        ayatHide.append(contentsOf: page.constantAya4of8)
//                        ayatHide.append(contentsOf: page.constantAya5of8)
//                        ayatHide.append(contentsOf: page.constantAya6of8)
//                        ayatHide.append(contentsOf: page.constantAya7of8)
//                        ayatHide.append(contentsOf: page.constantAya8of8)
//                        buttonShow.append(contentsOf: page.constantButton1of8)
//                        buttonHide.append(contentsOf: page.constantButton2of8)
//                        buttonHide.append(contentsOf: page.constantButton3of8)
//                        buttonHide.append(contentsOf: page.constantButton4of8)
//                        buttonHide.append(contentsOf: page.constantButton5of8)
//                        buttonHide.append(contentsOf: page.constantButton6of8)
//                        buttonHide.append(contentsOf: page.constantButton7of8)
//                        buttonHide.append(contentsOf: page.constantButton8of8)
//                    }
//                default:
//                    break
//                }
//            case 2:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 2, Difficulty 1
//                    ayaStartStack = [18]
//                    ayaEndStack = [18]
//                    if let page = viewController as? Page004ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of8)
//                        ayatShow.append(contentsOf: page.constantAya2of8)
//                        ayatHide.append(contentsOf: page.constantAya3of8)
//                        ayatHide.append(contentsOf: page.constantAya4of8)
//                        ayatHide.append(contentsOf: page.constantAya5of8)
//                        ayatHide.append(contentsOf: page.constantAya6of8)
//                        ayatHide.append(contentsOf: page.constantAya7of8)
//                        ayatHide.append(contentsOf: page.constantAya8of8)
//                        buttonHide.append(contentsOf: page.constantButton1of8)
//                        buttonShow.append(contentsOf: page.constantButton2of8)
//                        buttonHide.append(contentsOf: page.constantButton3of8)
//                        buttonHide.append(contentsOf: page.constantButton4of8)
//                        buttonHide.append(contentsOf: page.constantButton5of8)
//                        buttonHide.append(contentsOf: page.constantButton6of8)
//                        buttonHide.append(contentsOf: page.constantButton7of8)
//                        buttonHide.append(contentsOf: page.constantButton8of8)
//                    }
//                default:
//                    break
//                }
//            case 3:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 3, Difficulty 1
//                    ayaStartStack = [19]
//                    ayaEndStack = [19]
//                    if let page = viewController as? Page004ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of8)
//                        ayatHide.append(contentsOf: page.constantAya2of8)
//                        ayatShow.append(contentsOf: page.constantAya3of8)
//                        ayatHide.append(contentsOf: page.constantAya4of8)
//                        ayatHide.append(contentsOf: page.constantAya5of8)
//                        ayatHide.append(contentsOf: page.constantAya6of8)
//                        ayatHide.append(contentsOf: page.constantAya7of8)
//                        ayatHide.append(contentsOf: page.constantAya8of8)
//                        buttonHide.append(contentsOf: page.constantButton1of8)
//                        buttonHide.append(contentsOf: page.constantButton2of8)
//                        buttonShow.append(contentsOf: page.constantButton3of8)
//                        buttonHide.append(contentsOf: page.constantButton4of8)
//                        buttonHide.append(contentsOf: page.constantButton5of8)
//                        buttonHide.append(contentsOf: page.constantButton6of8)
//                        buttonHide.append(contentsOf: page.constantButton7of8)
//                        buttonHide.append(contentsOf: page.constantButton8of8)
//                    }
//                default:
//                    break
//                }
//            case 4:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 4, Difficulty 1
//                    ayaStartStack = [20]
//                    ayaEndStack = [20]
//                    if let page = viewController as? Page004ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of8)
//                        ayatHide.append(contentsOf: page.constantAya2of8)
//                        ayatHide.append(contentsOf: page.constantAya3of8)
//                        ayatShow.append(contentsOf: page.constantAya4of8)
//                        ayatHide.append(contentsOf: page.constantAya5of8)
//                        ayatHide.append(contentsOf: page.constantAya6of8)
//                        ayatHide.append(contentsOf: page.constantAya7of8)
//                        ayatHide.append(contentsOf: page.constantAya8of8)
//                        buttonHide.append(contentsOf: page.constantButton1of8)
//                        buttonHide.append(contentsOf: page.constantButton2of8)
//                        buttonHide.append(contentsOf: page.constantButton3of8)
//                        buttonShow.append(contentsOf: page.constantButton4of8)
//                        buttonHide.append(contentsOf: page.constantButton5of8)
//                        buttonHide.append(contentsOf: page.constantButton6of8)
//                        buttonHide.append(contentsOf: page.constantButton7of8)
//                        buttonHide.append(contentsOf: page.constantButton8of8)
//                    }
//                default:
//                    break
//                }
//            case 5:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 5, Difficulty 1
//                    ayaStartStack = [21]
//                    ayaEndStack = [21]
//                    if let page = viewController as? Page004ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of8)
//                        ayatHide.append(contentsOf: page.constantAya2of8)
//                        ayatHide.append(contentsOf: page.constantAya3of8)
//                        ayatHide.append(contentsOf: page.constantAya4of8)
//                        ayatShow.append(contentsOf: page.constantAya5of8)
//                        ayatHide.append(contentsOf: page.constantAya6of8)
//                        ayatHide.append(contentsOf: page.constantAya7of8)
//                        ayatHide.append(contentsOf: page.constantAya8of8)
//                        buttonHide.append(contentsOf: page.constantButton1of8)
//                        buttonHide.append(contentsOf: page.constantButton2of8)
//                        buttonHide.append(contentsOf: page.constantButton3of8)
//                        buttonHide.append(contentsOf: page.constantButton4of8)
//                        buttonShow.append(contentsOf: page.constantButton5of8)
//                        buttonHide.append(contentsOf: page.constantButton6of8)
//                        buttonHide.append(contentsOf: page.constantButton7of8)
//                        buttonHide.append(contentsOf: page.constantButton8of8)
//                    }
//                default:
//                    break
//                }
//            case 6:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 6, Difficulty 1
//                    ayaStartStack = [22]
//                    ayaEndStack = [22]
//                    if let page = viewController as? Page004ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of8)
//                        ayatHide.append(contentsOf: page.constantAya2of8)
//                        ayatHide.append(contentsOf: page.constantAya3of8)
//                        ayatHide.append(contentsOf: page.constantAya4of8)
//                        ayatHide.append(contentsOf: page.constantAya5of8)
//                        ayatShow.append(contentsOf: page.constantAya6of8)
//                        ayatHide.append(contentsOf: page.constantAya7of8)
//                        ayatHide.append(contentsOf: page.constantAya8of8)
//                        buttonHide.append(contentsOf: page.constantButton1of8)
//                        buttonHide.append(contentsOf: page.constantButton2of8)
//                        buttonHide.append(contentsOf: page.constantButton3of8)
//                        buttonHide.append(contentsOf: page.constantButton4of8)
//                        buttonHide.append(contentsOf: page.constantButton5of8)
//                        buttonShow.append(contentsOf: page.constantButton6of8)
//                        buttonHide.append(contentsOf: page.constantButton7of8)
//                        buttonHide.append(contentsOf: page.constantButton8of8)
//                    }
//                default:
//                    break
//                }
//            case 7:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 7, Difficulty 1
//                    ayaStartStack = [23]
//                    ayaEndStack = [23]
//                    if let page = viewController as? Page004ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of8)
//                        ayatHide.append(contentsOf: page.constantAya2of8)
//                        ayatHide.append(contentsOf: page.constantAya3of8)
//                        ayatHide.append(contentsOf: page.constantAya4of8)
//                        ayatHide.append(contentsOf: page.constantAya5of8)
//                        ayatHide.append(contentsOf: page.constantAya6of8)
//                        ayatShow.append(contentsOf: page.constantAya7of8)
//                        ayatHide.append(contentsOf: page.constantAya8of8)
//                        buttonHide.append(contentsOf: page.constantButton1of8)
//                        buttonHide.append(contentsOf: page.constantButton2of8)
//                        buttonHide.append(contentsOf: page.constantButton3of8)
//                        buttonHide.append(contentsOf: page.constantButton4of8)
//                        buttonHide.append(contentsOf: page.constantButton5of8)
//                        buttonHide.append(contentsOf: page.constantButton6of8)
//                        buttonShow.append(contentsOf: page.constantButton7of8)
//                        buttonHide.append(contentsOf: page.constantButton8of8)
//                    }
//                default:
//                    break
//                }
//            case 8:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 8, Difficulty 1
//                    ayaStartStack = [24]
//                    ayaEndStack = [24]
//                    if let page = viewController as? Page004ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of8)
//                        ayatHide.append(contentsOf: page.constantAya2of8)
//                        ayatHide.append(contentsOf: page.constantAya3of8)
//                        ayatHide.append(contentsOf: page.constantAya4of8)
//                        ayatHide.append(contentsOf: page.constantAya5of8)
//                        ayatHide.append(contentsOf: page.constantAya6of8)
//                        ayatHide.append(contentsOf: page.constantAya7of8)
//                        ayatShow.append(contentsOf: page.constantAya8of8)
//                        buttonHide.append(contentsOf: page.constantButton1of8)
//                        buttonHide.append(contentsOf: page.constantButton2of8)
//                        buttonHide.append(contentsOf: page.constantButton3of8)
//                        buttonHide.append(contentsOf: page.constantButton4of8)
//                        buttonHide.append(contentsOf: page.constantButton5of8)
//                        buttonHide.append(contentsOf: page.constantButton6of8)
//                        buttonHide.append(contentsOf: page.constantButton7of8)
//                        buttonShow.append(contentsOf: page.constantButton8of8)
//                    }
//                default:
//                    break
//                }
//            default:
//                break
//            }
//        case 5:
//            // MARK: - Page 5
//            switch dayNumber {
//            case 1:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 1, Difficulty 1
//                    ayaStartStack = [25]
//                    ayaEndStack = [25]
//                    if let page = viewController as? Page005ViewController {
//                        ayatShow.append(contentsOf: page.constantAya1of5)
//                        ayatHide.append(contentsOf: page.constantAya2of5)
//                        ayatHide.append(contentsOf: page.constantAya3of5)
//                        ayatHide.append(contentsOf: page.constantAya4of5)
//                        ayatHide.append(contentsOf: page.constantAya5of5)
//                        buttonShow.append(contentsOf: page.constantButton1of5)
//                        buttonHide.append(contentsOf: page.constantButton2of5)
//                        buttonHide.append(contentsOf: page.constantButton3of5)
//                        buttonHide.append(contentsOf: page.constantButton4of5)
//                        buttonHide.append(contentsOf: page.constantButton5of5)
//                    }
//                default:
//                    break
//                }
//            case 2:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 2, Difficulty 1
//                    ayaStartStack = [26]
//                    ayaEndStack = [26]
//                    if let page = viewController as? Page005ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of5)
//                        ayatShow.append(contentsOf: page.constantAya2of5)
//                        ayatHide.append(contentsOf: page.constantAya3of5)
//                        ayatHide.append(contentsOf: page.constantAya4of5)
//                        ayatHide.append(contentsOf: page.constantAya5of5)
//                        buttonHide.append(contentsOf: page.constantButton1of5)
//                        buttonShow.append(contentsOf: page.constantButton2of5)
//                        buttonHide.append(contentsOf: page.constantButton3of5)
//                        buttonHide.append(contentsOf: page.constantButton4of5)
//                        buttonHide.append(contentsOf: page.constantButton5of5)
//                    }
//                default:
//                    break
//                }
//            case 3:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 3, Difficulty 1
//                    ayaStartStack = [27]
//                    ayaEndStack = [27]
//                    if let page = viewController as? Page005ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of5)
//                        ayatHide.append(contentsOf: page.constantAya2of5)
//                        ayatShow.append(contentsOf: page.constantAya3of5)
//                        ayatHide.append(contentsOf: page.constantAya4of5)
//                        ayatHide.append(contentsOf: page.constantAya5of5)
//                        buttonHide.append(contentsOf: page.constantButton1of5)
//                        buttonHide.append(contentsOf: page.constantButton2of5)
//                        buttonShow.append(contentsOf: page.constantButton3of5)
//                        buttonHide.append(contentsOf: page.constantButton4of5)
//                        buttonHide.append(contentsOf: page.constantButton5of5)
//                    }
//                default:
//                    break
//                }
//            case 4:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 4, Difficulty 1
//                    ayaStartStack = [28]
//                    ayaEndStack = [28]
//                    if let page = viewController as? Page005ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of5)
//                        ayatHide.append(contentsOf: page.constantAya2of5)
//                        ayatHide.append(contentsOf: page.constantAya3of5)
//                        ayatShow.append(contentsOf: page.constantAya4of5)
//                        ayatHide.append(contentsOf: page.constantAya5of5)
//                        buttonHide.append(contentsOf: page.constantButton1of5)
//                        buttonHide.append(contentsOf: page.constantButton2of5)
//                        buttonHide.append(contentsOf: page.constantButton3of5)
//                        buttonShow.append(contentsOf: page.constantButton4of5)
//                        buttonHide.append(contentsOf: page.constantButton5of5)
//                    }
//                default:
//                    break
//                }
//            case 5:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 5, Difficulty 1
//                    ayaStartStack = [29]
//                    ayaEndStack = [29]
//                    if let page = viewController as? Page005ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of5)
//                        ayatHide.append(contentsOf: page.constantAya2of5)
//                        ayatHide.append(contentsOf: page.constantAya3of5)
//                        ayatHide.append(contentsOf: page.constantAya4of5)
//                        ayatShow.append(contentsOf: page.constantAya5of5)
//                        buttonHide.append(contentsOf: page.constantButton1of5)
//                        buttonHide.append(contentsOf: page.constantButton2of5)
//                        buttonHide.append(contentsOf: page.constantButton3of5)
//                        buttonHide.append(contentsOf: page.constantButton4of5)
//                        buttonShow.append(contentsOf: page.constantButton5of5)
//                    }
//                default:
//                    break
//                }
//            default:
//                break
//            }
//        case 6:
//            // MARK: - Page 6
//            switch dayNumber {
//            case 1:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 1, Difficulty 1
//                    ayaStartStack = [30]
//                    ayaEndStack = [30]
//                    if let page = viewController as? Page006ViewController {
//                        ayatShow.append(contentsOf: page.constantAya1of8)
//                        ayatHide.append(contentsOf: page.constantAya2of8)
//                        ayatHide.append(contentsOf: page.constantAya3of8)
//                        ayatHide.append(contentsOf: page.constantAya4of8)
//                        ayatHide.append(contentsOf: page.constantAya5of8)
//                        ayatHide.append(contentsOf: page.constantAya6of8)
//                        ayatHide.append(contentsOf: page.constantAya7of8)
//                        ayatHide.append(contentsOf: page.constantAya8of8)
//                        buttonShow.append(contentsOf: page.constantButton1of8)
//                        buttonHide.append(contentsOf: page.constantButton2of8)
//                        buttonHide.append(contentsOf: page.constantButton3of8)
//                        buttonHide.append(contentsOf: page.constantButton4of8)
//                        buttonHide.append(contentsOf: page.constantButton5of8)
//                        buttonHide.append(contentsOf: page.constantButton6of8)
//                        buttonHide.append(contentsOf: page.constantButton7of8)
//                        buttonHide.append(contentsOf: page.constantButton8of8)
//                    }
//                default:
//                    break
//                }
//            case 2:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 2, Difficulty 1
//                    ayaStartStack = [31]
//                    ayaEndStack = [31]
//                    if let page = viewController as? Page006ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of8)
//                        ayatShow.append(contentsOf: page.constantAya2of8)
//                        ayatHide.append(contentsOf: page.constantAya3of8)
//                        ayatHide.append(contentsOf: page.constantAya4of8)
//                        ayatHide.append(contentsOf: page.constantAya5of8)
//                        ayatHide.append(contentsOf: page.constantAya6of8)
//                        ayatHide.append(contentsOf: page.constantAya7of8)
//                        ayatHide.append(contentsOf: page.constantAya8of8)
//                        buttonHide.append(contentsOf: page.constantButton1of8)
//                        buttonShow.append(contentsOf: page.constantButton2of8)
//                        buttonHide.append(contentsOf: page.constantButton3of8)
//                        buttonHide.append(contentsOf: page.constantButton4of8)
//                        buttonHide.append(contentsOf: page.constantButton5of8)
//                        buttonHide.append(contentsOf: page.constantButton6of8)
//                        buttonHide.append(contentsOf: page.constantButton7of8)
//                        buttonHide.append(contentsOf: page.constantButton8of8)
//                    }
//                default:
//                    break
//                }
//            case 3:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 3, Difficulty 1
//                    ayaStartStack = [32]
//                    ayaEndStack = [32]
//                    if let page = viewController as? Page006ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of8)
//                        ayatHide.append(contentsOf: page.constantAya2of8)
//                        ayatShow.append(contentsOf: page.constantAya3of8)
//                        ayatHide.append(contentsOf: page.constantAya4of8)
//                        ayatHide.append(contentsOf: page.constantAya5of8)
//                        ayatHide.append(contentsOf: page.constantAya6of8)
//                        ayatHide.append(contentsOf: page.constantAya7of8)
//                        ayatHide.append(contentsOf: page.constantAya8of8)
//                        buttonHide.append(contentsOf: page.constantButton1of8)
//                        buttonHide.append(contentsOf: page.constantButton2of8)
//                        buttonShow.append(contentsOf: page.constantButton3of8)
//                        buttonHide.append(contentsOf: page.constantButton4of8)
//                        buttonHide.append(contentsOf: page.constantButton5of8)
//                        buttonHide.append(contentsOf: page.constantButton6of8)
//                        buttonHide.append(contentsOf: page.constantButton7of8)
//                        buttonHide.append(contentsOf: page.constantButton8of8)
//                    }
//                default:
//                    break
//                }
//            case 4:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 4, Difficulty 1
//                    ayaStartStack = [33]
//                    ayaEndStack = [33]
//                    if let page = viewController as? Page006ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of8)
//                        ayatHide.append(contentsOf: page.constantAya2of8)
//                        ayatHide.append(contentsOf: page.constantAya3of8)
//                        ayatShow.append(contentsOf: page.constantAya4of8)
//                        ayatHide.append(contentsOf: page.constantAya5of8)
//                        ayatHide.append(contentsOf: page.constantAya6of8)
//                        ayatHide.append(contentsOf: page.constantAya7of8)
//                        ayatHide.append(contentsOf: page.constantAya8of8)
//                        buttonHide.append(contentsOf: page.constantButton1of8)
//                        buttonHide.append(contentsOf: page.constantButton2of8)
//                        buttonHide.append(contentsOf: page.constantButton3of8)
//                        buttonShow.append(contentsOf: page.constantButton4of8)
//                        buttonHide.append(contentsOf: page.constantButton5of8)
//                        buttonHide.append(contentsOf: page.constantButton6of8)
//                        buttonHide.append(contentsOf: page.constantButton7of8)
//                        buttonHide.append(contentsOf: page.constantButton8of8)
//                    }
//                default:
//                    break
//                }
//            case 5:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 5, Difficulty 1
//                    ayaStartStack = [34]
//                    ayaEndStack = [34]
//                    if let page = viewController as? Page006ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of8)
//                        ayatHide.append(contentsOf: page.constantAya2of8)
//                        ayatHide.append(contentsOf: page.constantAya3of8)
//                        ayatHide.append(contentsOf: page.constantAya4of8)
//                        ayatShow.append(contentsOf: page.constantAya5of8)
//                        ayatHide.append(contentsOf: page.constantAya6of8)
//                        ayatHide.append(contentsOf: page.constantAya7of8)
//                        ayatHide.append(contentsOf: page.constantAya8of8)
//                        buttonHide.append(contentsOf: page.constantButton1of8)
//                        buttonHide.append(contentsOf: page.constantButton2of8)
//                        buttonHide.append(contentsOf: page.constantButton3of8)
//                        buttonHide.append(contentsOf: page.constantButton4of8)
//                        buttonShow.append(contentsOf: page.constantButton5of8)
//                        buttonHide.append(contentsOf: page.constantButton6of8)
//                        buttonHide.append(contentsOf: page.constantButton7of8)
//                        buttonHide.append(contentsOf: page.constantButton8of8)
//                    }
//                default:
//                    break
//                }
//            case 6:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 6, Difficulty 1
//                    ayaStartStack = [35]
//                    ayaEndStack = [35]
//                    if let page = viewController as? Page006ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of8)
//                        ayatHide.append(contentsOf: page.constantAya2of8)
//                        ayatHide.append(contentsOf: page.constantAya3of8)
//                        ayatHide.append(contentsOf: page.constantAya4of8)
//                        ayatHide.append(contentsOf: page.constantAya5of8)
//                        ayatShow.append(contentsOf: page.constantAya6of8)
//                        ayatHide.append(contentsOf: page.constantAya7of8)
//                        ayatHide.append(contentsOf: page.constantAya8of8)
//                        buttonHide.append(contentsOf: page.constantButton1of8)
//                        buttonHide.append(contentsOf: page.constantButton2of8)
//                        buttonHide.append(contentsOf: page.constantButton3of8)
//                        buttonHide.append(contentsOf: page.constantButton4of8)
//                        buttonHide.append(contentsOf: page.constantButton5of8)
//                        buttonShow.append(contentsOf: page.constantButton6of8)
//                        buttonHide.append(contentsOf: page.constantButton7of8)
//                        buttonHide.append(contentsOf: page.constantButton8of8)
//                    }
//                default:
//                    break
//                }
//            case 7:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 7, Difficulty 1
//                    ayaStartStack = [36]
//                    ayaEndStack = [36]
//                    if let page = viewController as? Page006ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of8)
//                        ayatHide.append(contentsOf: page.constantAya2of8)
//                        ayatHide.append(contentsOf: page.constantAya3of8)
//                        ayatHide.append(contentsOf: page.constantAya4of8)
//                        ayatHide.append(contentsOf: page.constantAya5of8)
//                        ayatHide.append(contentsOf: page.constantAya6of8)
//                        ayatShow.append(contentsOf: page.constantAya7of8)
//                        ayatHide.append(contentsOf: page.constantAya8of8)
//                        buttonHide.append(contentsOf: page.constantButton1of8)
//                        buttonHide.append(contentsOf: page.constantButton2of8)
//                        buttonHide.append(contentsOf: page.constantButton3of8)
//                        buttonHide.append(contentsOf: page.constantButton4of8)
//                        buttonHide.append(contentsOf: page.constantButton5of8)
//                        buttonHide.append(contentsOf: page.constantButton6of8)
//                        buttonShow.append(contentsOf: page.constantButton7of8)
//                        buttonHide.append(contentsOf: page.constantButton8of8)
//                    }
//                default:
//                    break
//                }
//            case 8:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 8, Difficulty 1
//                    ayaStartStack = [37]
//                    ayaEndStack = [37]
//                    if let page = viewController as? Page006ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of8)
//                        ayatHide.append(contentsOf: page.constantAya2of8)
//                        ayatHide.append(contentsOf: page.constantAya3of8)
//                        ayatHide.append(contentsOf: page.constantAya4of8)
//                        ayatHide.append(contentsOf: page.constantAya5of8)
//                        ayatHide.append(contentsOf: page.constantAya6of8)
//                        ayatHide.append(contentsOf: page.constantAya7of8)
//                        ayatShow.append(contentsOf: page.constantAya8of8)
//                        buttonHide.append(contentsOf: page.constantButton1of8)
//                        buttonHide.append(contentsOf: page.constantButton2of8)
//                        buttonHide.append(contentsOf: page.constantButton3of8)
//                        buttonHide.append(contentsOf: page.constantButton4of8)
//                        buttonHide.append(contentsOf: page.constantButton5of8)
//                        buttonHide.append(contentsOf: page.constantButton6of8)
//                        buttonHide.append(contentsOf: page.constantButton7of8)
//                        buttonShow.append(contentsOf: page.constantButton8of8)
//                    }
//                default:
//                    break
//                }
//            default:
//                break
//            }
//        case 7:
//            // MARK: - Page 7
//            switch dayNumber {
//            case 1:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 1, Difficulty 1
//                    ayaStartStack = [38]
//                    ayaEndStack = [38]
//                    if let page = viewController as? Page007ViewController {
//                        ayatShow.append(contentsOf: page.constantAya1of11)
//                        ayatHide.append(contentsOf: page.constantAya2of11)
//                        ayatHide.append(contentsOf: page.constantAya3of11)
//                        ayatHide.append(contentsOf: page.constantAya4of11)
//                        ayatHide.append(contentsOf: page.constantAya5of11)
//                        ayatHide.append(contentsOf: page.constantAya6of11)
//                        ayatHide.append(contentsOf: page.constantAya7of11)
//                        ayatHide.append(contentsOf: page.constantAya8of11)
//                        ayatHide.append(contentsOf: page.constantAya9of11)
//                        ayatHide.append(contentsOf: page.constantAya10of11)
//                        ayatHide.append(contentsOf: page.constantAya11of11)
//                        buttonShow.append(contentsOf: page.constantButton1of11)
//                        buttonHide.append(contentsOf: page.constantButton2of11)
//                        buttonHide.append(contentsOf: page.constantButton3of11)
//                        buttonHide.append(contentsOf: page.constantButton4of11)
//                        buttonHide.append(contentsOf: page.constantButton5of11)
//                        buttonHide.append(contentsOf: page.constantButton6of11)
//                        buttonHide.append(contentsOf: page.constantButton7of11)
//                        buttonHide.append(contentsOf: page.constantButton8of11)
//                        buttonHide.append(contentsOf: page.constantButton9of11)
//                        buttonHide.append(contentsOf: page.constantButton10of11)
//                        buttonHide.append(contentsOf: page.constantButton11of11)
//                    }
//                default:
//                    break
//                }
//            case 2:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 2, Difficulty 1
//                    ayaStartStack = [39]
//                    ayaEndStack = [39]
//                    if let page = viewController as? Page007ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of11)
//                        ayatShow.append(contentsOf: page.constantAya2of11)
//                        ayatHide.append(contentsOf: page.constantAya3of11)
//                        ayatHide.append(contentsOf: page.constantAya4of11)
//                        ayatHide.append(contentsOf: page.constantAya5of11)
//                        ayatHide.append(contentsOf: page.constantAya6of11)
//                        ayatHide.append(contentsOf: page.constantAya7of11)
//                        ayatHide.append(contentsOf: page.constantAya8of11)
//                        ayatHide.append(contentsOf: page.constantAya9of11)
//                        ayatHide.append(contentsOf: page.constantAya10of11)
//                        ayatHide.append(contentsOf: page.constantAya11of11)
//                        buttonHide.append(contentsOf: page.constantButton1of11)
//                        buttonShow.append(contentsOf: page.constantButton2of11)
//                        buttonHide.append(contentsOf: page.constantButton3of11)
//                        buttonHide.append(contentsOf: page.constantButton4of11)
//                        buttonHide.append(contentsOf: page.constantButton5of11)
//                        buttonHide.append(contentsOf: page.constantButton6of11)
//                        buttonHide.append(contentsOf: page.constantButton7of11)
//                        buttonHide.append(contentsOf: page.constantButton8of11)
//                        buttonHide.append(contentsOf: page.constantButton9of11)
//                        buttonHide.append(contentsOf: page.constantButton10of11)
//                        buttonHide.append(contentsOf: page.constantButton11of11)
//                    }
//                default:
//                    break
//                }
//            case 3:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 3, Difficulty 1
//                    ayaStartStack = [40]
//                    ayaEndStack = [40]
//                    if let page = viewController as? Page007ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of11)
//                        ayatHide.append(contentsOf: page.constantAya2of11)
//                        ayatShow.append(contentsOf: page.constantAya3of11)
//                        ayatHide.append(contentsOf: page.constantAya4of11)
//                        ayatHide.append(contentsOf: page.constantAya5of11)
//                        ayatHide.append(contentsOf: page.constantAya6of11)
//                        ayatHide.append(contentsOf: page.constantAya7of11)
//                        ayatHide.append(contentsOf: page.constantAya8of11)
//                        ayatHide.append(contentsOf: page.constantAya9of11)
//                        ayatHide.append(contentsOf: page.constantAya10of11)
//                        ayatHide.append(contentsOf: page.constantAya11of11)
//                        buttonHide.append(contentsOf: page.constantButton1of11)
//                        buttonHide.append(contentsOf: page.constantButton2of11)
//                        buttonShow.append(contentsOf: page.constantButton3of11)
//                        buttonHide.append(contentsOf: page.constantButton4of11)
//                        buttonHide.append(contentsOf: page.constantButton5of11)
//                        buttonHide.append(contentsOf: page.constantButton6of11)
//                        buttonHide.append(contentsOf: page.constantButton7of11)
//                        buttonHide.append(contentsOf: page.constantButton8of11)
//                        buttonHide.append(contentsOf: page.constantButton9of11)
//                        buttonHide.append(contentsOf: page.constantButton10of11)
//                        buttonHide.append(contentsOf: page.constantButton11of11)
//                    }
//                default:
//                    break
//                }
//            case 4:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 4, Difficulty 1
//                    ayaStartStack = [41]
//                    ayaEndStack = [41]
//                    if let page = viewController as? Page007ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of11)
//                        ayatHide.append(contentsOf: page.constantAya2of11)
//                        ayatHide.append(contentsOf: page.constantAya3of11)
//                        ayatShow.append(contentsOf: page.constantAya4of11)
//                        ayatHide.append(contentsOf: page.constantAya5of11)
//                        ayatHide.append(contentsOf: page.constantAya6of11)
//                        ayatHide.append(contentsOf: page.constantAya7of11)
//                        ayatHide.append(contentsOf: page.constantAya8of11)
//                        ayatHide.append(contentsOf: page.constantAya9of11)
//                        ayatHide.append(contentsOf: page.constantAya10of11)
//                        ayatHide.append(contentsOf: page.constantAya11of11)
//                        buttonHide.append(contentsOf: page.constantButton1of11)
//                        buttonHide.append(contentsOf: page.constantButton2of11)
//                        buttonHide.append(contentsOf: page.constantButton3of11)
//                        buttonShow.append(contentsOf: page.constantButton4of11)
//                        buttonHide.append(contentsOf: page.constantButton5of11)
//                        buttonHide.append(contentsOf: page.constantButton6of11)
//                        buttonHide.append(contentsOf: page.constantButton7of11)
//                        buttonHide.append(contentsOf: page.constantButton8of11)
//                        buttonHide.append(contentsOf: page.constantButton9of11)
//                        buttonHide.append(contentsOf: page.constantButton10of11)
//                        buttonHide.append(contentsOf: page.constantButton11of11)
//                    }
//                default:
//                    break
//                }
//            case 5:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 5, Difficulty 1
//                    ayaStartStack = [42]
//                    ayaEndStack = [42]
//                    if let page = viewController as? Page007ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of11)
//                        ayatHide.append(contentsOf: page.constantAya2of11)
//                        ayatHide.append(contentsOf: page.constantAya3of11)
//                        ayatHide.append(contentsOf: page.constantAya4of11)
//                        ayatShow.append(contentsOf: page.constantAya5of11)
//                        ayatHide.append(contentsOf: page.constantAya6of11)
//                        ayatHide.append(contentsOf: page.constantAya7of11)
//                        ayatHide.append(contentsOf: page.constantAya8of11)
//                        ayatHide.append(contentsOf: page.constantAya9of11)
//                        ayatHide.append(contentsOf: page.constantAya10of11)
//                        ayatHide.append(contentsOf: page.constantAya11of11)
//                        buttonHide.append(contentsOf: page.constantButton1of11)
//                        buttonHide.append(contentsOf: page.constantButton2of11)
//                        buttonHide.append(contentsOf: page.constantButton3of11)
//                        buttonHide.append(contentsOf: page.constantButton4of11)
//                        buttonShow.append(contentsOf: page.constantButton5of11)
//                        buttonHide.append(contentsOf: page.constantButton6of11)
//                        buttonHide.append(contentsOf: page.constantButton7of11)
//                        buttonHide.append(contentsOf: page.constantButton8of11)
//                        buttonHide.append(contentsOf: page.constantButton9of11)
//                        buttonHide.append(contentsOf: page.constantButton10of11)
//                        buttonHide.append(contentsOf: page.constantButton11of11)
//                    }
//                default:
//                    break
//                }
//            case 6:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 6, Difficulty 1
//                    ayaStartStack = [43]
//                    ayaEndStack = [43]
//                    if let page = viewController as? Page007ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of11)
//                        ayatHide.append(contentsOf: page.constantAya2of11)
//                        ayatHide.append(contentsOf: page.constantAya3of11)
//                        ayatHide.append(contentsOf: page.constantAya4of11)
//                        ayatHide.append(contentsOf: page.constantAya5of11)
//                        ayatShow.append(contentsOf: page.constantAya6of11)
//                        ayatHide.append(contentsOf: page.constantAya7of11)
//                        ayatHide.append(contentsOf: page.constantAya8of11)
//                        ayatHide.append(contentsOf: page.constantAya9of11)
//                        ayatHide.append(contentsOf: page.constantAya10of11)
//                        ayatHide.append(contentsOf: page.constantAya11of11)
//                        buttonHide.append(contentsOf: page.constantButton1of11)
//                        buttonHide.append(contentsOf: page.constantButton2of11)
//                        buttonHide.append(contentsOf: page.constantButton3of11)
//                        buttonHide.append(contentsOf: page.constantButton4of11)
//                        buttonHide.append(contentsOf: page.constantButton5of11)
//                        buttonShow.append(contentsOf: page.constantButton6of11)
//                        buttonHide.append(contentsOf: page.constantButton7of11)
//                        buttonHide.append(contentsOf: page.constantButton8of11)
//                        buttonHide.append(contentsOf: page.constantButton9of11)
//                        buttonHide.append(contentsOf: page.constantButton10of11)
//                        buttonHide.append(contentsOf: page.constantButton11of11)
//                    }
//                default:
//                    break
//                }
//            case 7:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 7, Difficulty 1
//                    ayaStartStack = [44]
//                    ayaEndStack = [44]
//                    if let page = viewController as? Page007ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of11)
//                        ayatHide.append(contentsOf: page.constantAya2of11)
//                        ayatHide.append(contentsOf: page.constantAya3of11)
//                        ayatHide.append(contentsOf: page.constantAya4of11)
//                        ayatHide.append(contentsOf: page.constantAya5of11)
//                        ayatHide.append(contentsOf: page.constantAya6of11)
//                        ayatShow.append(contentsOf: page.constantAya7of11)
//                        ayatHide.append(contentsOf: page.constantAya8of11)
//                        ayatHide.append(contentsOf: page.constantAya9of11)
//                        ayatHide.append(contentsOf: page.constantAya10of11)
//                        ayatHide.append(contentsOf: page.constantAya11of11)
//                        buttonHide.append(contentsOf: page.constantButton1of11)
//                        buttonHide.append(contentsOf: page.constantButton2of11)
//                        buttonHide.append(contentsOf: page.constantButton3of11)
//                        buttonHide.append(contentsOf: page.constantButton4of11)
//                        buttonHide.append(contentsOf: page.constantButton5of11)
//                        buttonHide.append(contentsOf: page.constantButton6of11)
//                        buttonShow.append(contentsOf: page.constantButton7of11)
//                        buttonHide.append(contentsOf: page.constantButton8of11)
//                        buttonHide.append(contentsOf: page.constantButton9of11)
//                        buttonHide.append(contentsOf: page.constantButton10of11)
//                        buttonHide.append(contentsOf: page.constantButton11of11)
//                    }
//                default:
//                    break
//                }
//            case 8:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 8, Difficulty 1
//                    ayaStartStack = [45]
//                    ayaEndStack = [45]
//                    if let page = viewController as? Page007ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of11)
//                        ayatHide.append(contentsOf: page.constantAya2of11)
//                        ayatHide.append(contentsOf: page.constantAya3of11)
//                        ayatHide.append(contentsOf: page.constantAya4of11)
//                        ayatHide.append(contentsOf: page.constantAya5of11)
//                        ayatHide.append(contentsOf: page.constantAya6of11)
//                        ayatHide.append(contentsOf: page.constantAya7of11)
//                        ayatShow.append(contentsOf: page.constantAya8of11)
//                        ayatHide.append(contentsOf: page.constantAya9of11)
//                        ayatHide.append(contentsOf: page.constantAya10of11)
//                        ayatHide.append(contentsOf: page.constantAya11of11)
//                        buttonHide.append(contentsOf: page.constantButton1of11)
//                        buttonHide.append(contentsOf: page.constantButton2of11)
//                        buttonHide.append(contentsOf: page.constantButton3of11)
//                        buttonHide.append(contentsOf: page.constantButton4of11)
//                        buttonHide.append(contentsOf: page.constantButton5of11)
//                        buttonHide.append(contentsOf: page.constantButton6of11)
//                        buttonHide.append(contentsOf: page.constantButton7of11)
//                        buttonShow.append(contentsOf: page.constantButton8of11)
//                        buttonHide.append(contentsOf: page.constantButton9of11)
//                        buttonHide.append(contentsOf: page.constantButton10of11)
//                        buttonHide.append(contentsOf: page.constantButton11of11)
//                    }
//                default:
//                    break
//                }
//            case 9:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 9, Difficulty 1
//                    ayaStartStack = [46]
//                    ayaEndStack = [46]
//                    if let page = viewController as? Page007ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of11)
//                        ayatHide.append(contentsOf: page.constantAya2of11)
//                        ayatHide.append(contentsOf: page.constantAya3of11)
//                        ayatHide.append(contentsOf: page.constantAya4of11)
//                        ayatHide.append(contentsOf: page.constantAya5of11)
//                        ayatHide.append(contentsOf: page.constantAya6of11)
//                        ayatHide.append(contentsOf: page.constantAya7of11)
//                        ayatHide.append(contentsOf: page.constantAya8of11)
//                        ayatShow.append(contentsOf: page.constantAya9of11)
//                        ayatHide.append(contentsOf: page.constantAya10of11)
//                        ayatHide.append(contentsOf: page.constantAya11of11)
//                        buttonHide.append(contentsOf: page.constantButton1of11)
//                        buttonHide.append(contentsOf: page.constantButton2of11)
//                        buttonHide.append(contentsOf: page.constantButton3of11)
//                        buttonHide.append(contentsOf: page.constantButton4of11)
//                        buttonHide.append(contentsOf: page.constantButton5of11)
//                        buttonHide.append(contentsOf: page.constantButton6of11)
//                        buttonHide.append(contentsOf: page.constantButton7of11)
//                        buttonHide.append(contentsOf: page.constantButton8of11)
//                        buttonShow.append(contentsOf: page.constantButton9of11)
//                        buttonHide.append(contentsOf: page.constantButton10of11)
//                        buttonHide.append(contentsOf: page.constantButton11of11)
//                    }
//                default:
//                    break
//                }
//            case 10:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 10, Difficulty 1
//                    ayaStartStack = [47]
//                    ayaEndStack = [47]
//                    if let page = viewController as? Page007ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of11)
//                        ayatHide.append(contentsOf: page.constantAya2of11)
//                        ayatHide.append(contentsOf: page.constantAya3of11)
//                        ayatHide.append(contentsOf: page.constantAya4of11)
//                        ayatHide.append(contentsOf: page.constantAya5of11)
//                        ayatHide.append(contentsOf: page.constantAya6of11)
//                        ayatHide.append(contentsOf: page.constantAya7of11)
//                        ayatHide.append(contentsOf: page.constantAya8of11)
//                        ayatHide.append(contentsOf: page.constantAya9of11)
//                        ayatShow.append(contentsOf: page.constantAya10of11)
//                        ayatHide.append(contentsOf: page.constantAya11of11)
//                        buttonHide.append(contentsOf: page.constantButton1of11)
//                        buttonHide.append(contentsOf: page.constantButton2of11)
//                        buttonHide.append(contentsOf: page.constantButton3of11)
//                        buttonHide.append(contentsOf: page.constantButton4of11)
//                        buttonHide.append(contentsOf: page.constantButton5of11)
//                        buttonHide.append(contentsOf: page.constantButton6of11)
//                        buttonHide.append(contentsOf: page.constantButton7of11)
//                        buttonHide.append(contentsOf: page.constantButton8of11)
//                        buttonHide.append(contentsOf: page.constantButton9of11)
//                        buttonShow.append(contentsOf: page.constantButton10of11)
//                        buttonHide.append(contentsOf: page.constantButton11of11)
//                    }
//                default:
//                    break
//                }
//            case 11:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 11, Difficulty 1
//                    ayaStartStack = [48]
//                    ayaEndStack = [48]
//                    if let page = viewController as? Page007ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of11)
//                        ayatHide.append(contentsOf: page.constantAya2of11)
//                        ayatHide.append(contentsOf: page.constantAya3of11)
//                        ayatHide.append(contentsOf: page.constantAya4of11)
//                        ayatHide.append(contentsOf: page.constantAya5of11)
//                        ayatHide.append(contentsOf: page.constantAya6of11)
//                        ayatHide.append(contentsOf: page.constantAya7of11)
//                        ayatHide.append(contentsOf: page.constantAya8of11)
//                        ayatHide.append(contentsOf: page.constantAya9of11)
//                        ayatHide.append(contentsOf: page.constantAya10of11)
//                        ayatShow.append(contentsOf: page.constantAya11of11)
//                        buttonHide.append(contentsOf: page.constantButton1of11)
//                        buttonHide.append(contentsOf: page.constantButton2of11)
//                        buttonHide.append(contentsOf: page.constantButton3of11)
//                        buttonHide.append(contentsOf: page.constantButton4of11)
//                        buttonHide.append(contentsOf: page.constantButton5of11)
//                        buttonHide.append(contentsOf: page.constantButton6of11)
//                        buttonHide.append(contentsOf: page.constantButton7of11)
//                        buttonHide.append(contentsOf: page.constantButton8of11)
//                        buttonHide.append(contentsOf: page.constantButton9of11)
//                        buttonHide.append(contentsOf: page.constantButton10of11)
//                        buttonShow.append(contentsOf: page.constantButton11of11)
//                    }
//                default:
//                    break
//                }
//            default:
//                break
//            }
//        case 8:
//            // MARK: - Page 8
//            switch dayNumber {
//            case 1:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 1, Difficulty 1
//                    ayaStartStack = [49]
//                    ayaEndStack = [49]
//                    if let page = viewController as? Page008ViewController {
//                        ayatShow.append(contentsOf: page.constantAya1of9)
//                        ayatHide.append(contentsOf: page.constantAya2of9)
//                        ayatHide.append(contentsOf: page.constantAya3of9)
//                        ayatHide.append(contentsOf: page.constantAya4of9)
//                        ayatHide.append(contentsOf: page.constantAya5of9)
//                        ayatHide.append(contentsOf: page.constantAya6of9)
//                        ayatHide.append(contentsOf: page.constantAya7of9)
//                        ayatHide.append(contentsOf: page.constantAya8of9)
//                        ayatHide.append(contentsOf: page.constantAya9of9)
//                        buttonShow.append(contentsOf: page.constantButton1of9)
//                        buttonHide.append(contentsOf: page.constantButton2of9)
//                        buttonHide.append(contentsOf: page.constantButton3of9)
//                        buttonHide.append(contentsOf: page.constantButton4of9)
//                        buttonHide.append(contentsOf: page.constantButton5of9)
//                        buttonHide.append(contentsOf: page.constantButton6of9)
//                        buttonHide.append(contentsOf: page.constantButton7of9)
//                        buttonHide.append(contentsOf: page.constantButton8of9)
//                        buttonHide.append(contentsOf: page.constantButton9of9)
//                    }
//                default:
//                    break
//                }
//            case 2:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 2, Difficulty 1
//                    ayaStartStack = [50]
//                    ayaEndStack = [50]
//                    if let page = viewController as? Page008ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of9)
//                        ayatShow.append(contentsOf: page.constantAya2of9)
//                        ayatHide.append(contentsOf: page.constantAya3of9)
//                        ayatHide.append(contentsOf: page.constantAya4of9)
//                        ayatHide.append(contentsOf: page.constantAya5of9)
//                        ayatHide.append(contentsOf: page.constantAya6of9)
//                        ayatHide.append(contentsOf: page.constantAya7of9)
//                        ayatHide.append(contentsOf: page.constantAya8of9)
//                        ayatHide.append(contentsOf: page.constantAya9of9)
//                        buttonHide.append(contentsOf: page.constantButton1of9)
//                        buttonShow.append(contentsOf: page.constantButton2of9)
//                        buttonHide.append(contentsOf: page.constantButton3of9)
//                        buttonHide.append(contentsOf: page.constantButton4of9)
//                        buttonHide.append(contentsOf: page.constantButton5of9)
//                        buttonHide.append(contentsOf: page.constantButton6of9)
//                        buttonHide.append(contentsOf: page.constantButton7of9)
//                        buttonHide.append(contentsOf: page.constantButton8of9)
//                        buttonHide.append(contentsOf: page.constantButton9of9)
//                    }
//                default:
//                    break
//                }
//            case 3:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 3, Difficulty 1
//                    ayaStartStack = [51]
//                    ayaEndStack = [51]
//                    if let page = viewController as? Page008ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of9)
//                        ayatHide.append(contentsOf: page.constantAya2of9)
//                        ayatShow.append(contentsOf: page.constantAya3of9)
//                        ayatHide.append(contentsOf: page.constantAya4of9)
//                        ayatHide.append(contentsOf: page.constantAya5of9)
//                        ayatHide.append(contentsOf: page.constantAya6of9)
//                        ayatHide.append(contentsOf: page.constantAya7of9)
//                        ayatHide.append(contentsOf: page.constantAya8of9)
//                        ayatHide.append(contentsOf: page.constantAya9of9)
//                        buttonHide.append(contentsOf: page.constantButton1of9)
//                        buttonHide.append(contentsOf: page.constantButton2of9)
//                        buttonShow.append(contentsOf: page.constantButton3of9)
//                        buttonHide.append(contentsOf: page.constantButton4of9)
//                        buttonHide.append(contentsOf: page.constantButton5of9)
//                        buttonHide.append(contentsOf: page.constantButton6of9)
//                        buttonHide.append(contentsOf: page.constantButton7of9)
//                        buttonHide.append(contentsOf: page.constantButton8of9)
//                        buttonHide.append(contentsOf: page.constantButton9of9)
//                    }
//                default:
//                    break
//                }
//            case 4:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 4, Difficulty 1
//                    ayaStartStack = [52]
//                    ayaEndStack = [52]
//                    if let page = viewController as? Page008ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of9)
//                        ayatHide.append(contentsOf: page.constantAya2of9)
//                        ayatHide.append(contentsOf: page.constantAya3of9)
//                        ayatShow.append(contentsOf: page.constantAya4of9)
//                        ayatHide.append(contentsOf: page.constantAya5of9)
//                        ayatHide.append(contentsOf: page.constantAya6of9)
//                        ayatHide.append(contentsOf: page.constantAya7of9)
//                        ayatHide.append(contentsOf: page.constantAya8of9)
//                        ayatHide.append(contentsOf: page.constantAya9of9)
//                        buttonHide.append(contentsOf: page.constantButton1of9)
//                        buttonHide.append(contentsOf: page.constantButton2of9)
//                        buttonHide.append(contentsOf: page.constantButton3of9)
//                        buttonShow.append(contentsOf: page.constantButton4of9)
//                        buttonHide.append(contentsOf: page.constantButton5of9)
//                        buttonHide.append(contentsOf: page.constantButton6of9)
//                        buttonHide.append(contentsOf: page.constantButton7of9)
//                        buttonHide.append(contentsOf: page.constantButton8of9)
//                        buttonHide.append(contentsOf: page.constantButton9of9)
//                    }
//                default:
//                    break
//                }
//            case 5:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 5, Difficulty 1
//                    ayaStartStack = [53]
//                    ayaEndStack = [53]
//                    if let page = viewController as? Page008ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of9)
//                        ayatHide.append(contentsOf: page.constantAya2of9)
//                        ayatHide.append(contentsOf: page.constantAya3of9)
//                        ayatHide.append(contentsOf: page.constantAya4of9)
//                        ayatShow.append(contentsOf: page.constantAya5of9)
//                        ayatHide.append(contentsOf: page.constantAya6of9)
//                        ayatHide.append(contentsOf: page.constantAya7of9)
//                        ayatHide.append(contentsOf: page.constantAya8of9)
//                        ayatHide.append(contentsOf: page.constantAya9of9)
//                        buttonHide.append(contentsOf: page.constantButton1of9)
//                        buttonHide.append(contentsOf: page.constantButton2of9)
//                        buttonHide.append(contentsOf: page.constantButton3of9)
//                        buttonHide.append(contentsOf: page.constantButton4of9)
//                        buttonShow.append(contentsOf: page.constantButton5of9)
//                        buttonHide.append(contentsOf: page.constantButton6of9)
//                        buttonHide.append(contentsOf: page.constantButton7of9)
//                        buttonHide.append(contentsOf: page.constantButton8of9)
//                        buttonHide.append(contentsOf: page.constantButton9of9)
//                    }
//                default:
//                    break
//                }
//            case 6:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 6, Difficulty 1
//                    ayaStartStack = [54]
//                    ayaEndStack = [54]
//                    if let page = viewController as? Page008ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of9)
//                        ayatHide.append(contentsOf: page.constantAya2of9)
//                        ayatHide.append(contentsOf: page.constantAya3of9)
//                        ayatHide.append(contentsOf: page.constantAya4of9)
//                        ayatHide.append(contentsOf: page.constantAya5of9)
//                        ayatShow.append(contentsOf: page.constantAya6of9)
//                        ayatHide.append(contentsOf: page.constantAya7of9)
//                        ayatHide.append(contentsOf: page.constantAya8of9)
//                        ayatHide.append(contentsOf: page.constantAya9of9)
//                        buttonHide.append(contentsOf: page.constantButton1of9)
//                        buttonHide.append(contentsOf: page.constantButton2of9)
//                        buttonHide.append(contentsOf: page.constantButton3of9)
//                        buttonHide.append(contentsOf: page.constantButton4of9)
//                        buttonHide.append(contentsOf: page.constantButton5of9)
//                        buttonShow.append(contentsOf: page.constantButton6of9)
//                        buttonHide.append(contentsOf: page.constantButton7of9)
//                        buttonHide.append(contentsOf: page.constantButton8of9)
//                        buttonHide.append(contentsOf: page.constantButton9of9)
//                    }
//                default:
//                    break
//                }
//            case 7:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 7, Difficulty 1
//                    ayaStartStack = [55]
//                    ayaEndStack = [55]
//                    if let page = viewController as? Page008ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of9)
//                        ayatHide.append(contentsOf: page.constantAya2of9)
//                        ayatHide.append(contentsOf: page.constantAya3of9)
//                        ayatHide.append(contentsOf: page.constantAya4of9)
//                        ayatHide.append(contentsOf: page.constantAya5of9)
//                        ayatHide.append(contentsOf: page.constantAya6of9)
//                        ayatShow.append(contentsOf: page.constantAya7of9)
//                        ayatHide.append(contentsOf: page.constantAya8of9)
//                        ayatHide.append(contentsOf: page.constantAya9of9)
//                        buttonHide.append(contentsOf: page.constantButton1of9)
//                        buttonHide.append(contentsOf: page.constantButton2of9)
//                        buttonHide.append(contentsOf: page.constantButton3of9)
//                        buttonHide.append(contentsOf: page.constantButton4of9)
//                        buttonHide.append(contentsOf: page.constantButton5of9)
//                        buttonHide.append(contentsOf: page.constantButton6of9)
//                        buttonShow.append(contentsOf: page.constantButton7of9)
//                        buttonHide.append(contentsOf: page.constantButton8of9)
//                        buttonHide.append(contentsOf: page.constantButton9of9)
//                    }
//                default:
//                    break
//                }
//            case 8:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 8, Difficulty 1
//                    ayaStartStack = [56]
//                    ayaEndStack = [56]
//                    if let page = viewController as? Page008ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of9)
//                        ayatHide.append(contentsOf: page.constantAya2of9)
//                        ayatHide.append(contentsOf: page.constantAya3of9)
//                        ayatHide.append(contentsOf: page.constantAya4of9)
//                        ayatHide.append(contentsOf: page.constantAya5of9)
//                        ayatHide.append(contentsOf: page.constantAya6of9)
//                        ayatHide.append(contentsOf: page.constantAya7of9)
//                        ayatShow.append(contentsOf: page.constantAya8of9)
//                        ayatHide.append(contentsOf: page.constantAya9of9)
//                        buttonHide.append(contentsOf: page.constantButton1of9)
//                        buttonHide.append(contentsOf: page.constantButton2of9)
//                        buttonHide.append(contentsOf: page.constantButton3of9)
//                        buttonHide.append(contentsOf: page.constantButton4of9)
//                        buttonHide.append(contentsOf: page.constantButton5of9)
//                        buttonHide.append(contentsOf: page.constantButton6of9)
//                        buttonHide.append(contentsOf: page.constantButton7of9)
//                        buttonShow.append(contentsOf: page.constantButton8of9)
//                        buttonHide.append(contentsOf: page.constantButton9of9)
//                    }
//                default:
//                    break
//                }
//            case 9:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 9, Difficulty 1
//                    ayaStartStack = [57]
//                    ayaEndStack = [57]
//                    if let page = viewController as? Page008ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of9)
//                        ayatHide.append(contentsOf: page.constantAya2of9)
//                        ayatHide.append(contentsOf: page.constantAya3of9)
//                        ayatHide.append(contentsOf: page.constantAya4of9)
//                        ayatHide.append(contentsOf: page.constantAya5of9)
//                        ayatHide.append(contentsOf: page.constantAya6of9)
//                        ayatHide.append(contentsOf: page.constantAya7of9)
//                        ayatHide.append(contentsOf: page.constantAya8of9)
//                        ayatShow.append(contentsOf: page.constantAya9of9)
//                        buttonHide.append(contentsOf: page.constantButton1of9)
//                        buttonHide.append(contentsOf: page.constantButton2of9)
//                        buttonHide.append(contentsOf: page.constantButton3of9)
//                        buttonHide.append(contentsOf: page.constantButton4of9)
//                        buttonHide.append(contentsOf: page.constantButton5of9)
//                        buttonHide.append(contentsOf: page.constantButton6of9)
//                        buttonHide.append(contentsOf: page.constantButton7of9)
//                        buttonHide.append(contentsOf: page.constantButton8of9)
//                        buttonShow.append(contentsOf: page.constantButton9of9)
//                    }
//                default:
//                    break
//                }
//            default:
//                break
//            }
//        case 9:
//            // MARK: - Page 9
//            switch dayNumber {
//            case 1:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 1, Difficulty 1
//                    ayaStartStack = [58]
//                    ayaEndStack = [58]
//                    if let page = viewController as? Page009ViewController {
//                        ayatShow.append(contentsOf: page.constantAya1of4)
//                        ayatHide.append(contentsOf: page.constantAya2of4)
//                        ayatHide.append(contentsOf: page.constantAya3of4)
//                        ayatHide.append(contentsOf: page.constantAya4of4)
//                        buttonShow.append(contentsOf: page.constantButton1of4)
//                        buttonHide.append(contentsOf: page.constantButton2of4)
//                        buttonHide.append(contentsOf: page.constantButton3of4)
//                        buttonHide.append(contentsOf: page.constantButton4of4)
//                    }
//                default:
//                    break
//                }
//            case 2:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 2, Difficulty 1
//                    ayaStartStack = [59]
//                    ayaEndStack = [59]
//                    if let page = viewController as? Page009ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of4)
//                        ayatShow.append(contentsOf: page.constantAya2of4)
//                        ayatHide.append(contentsOf: page.constantAya3of4)
//                        ayatHide.append(contentsOf: page.constantAya4of4)
//                        buttonHide.append(contentsOf: page.constantButton1of4)
//                        buttonShow.append(contentsOf: page.constantButton2of4)
//                        buttonHide.append(contentsOf: page.constantButton3of4)
//                        buttonHide.append(contentsOf: page.constantButton4of4)
//                    }
//                default:
//                    break
//                }
//            case 3:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 3, Difficulty 1
//                    ayaStartStack = [60]
//                    ayaEndStack = [60]
//                    if let page = viewController as? Page009ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of4)
//                        ayatHide.append(contentsOf: page.constantAya2of4)
//                        ayatShow.append(contentsOf: page.constantAya3of4)
//                        ayatHide.append(contentsOf: page.constantAya4of4)
//                        buttonHide.append(contentsOf: page.constantButton1of4)
//                        buttonHide.append(contentsOf: page.constantButton2of4)
//                        buttonShow.append(contentsOf: page.constantButton3of4)
//                        buttonHide.append(contentsOf: page.constantButton4of4)
//                    }
//                default:
//                    break
//                }
//            case 4:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 4, Difficulty 1
//                    ayaStartStack = [61]
//                    ayaEndStack = [61]
//                    if let page = viewController as? Page009ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of4)
//                        ayatHide.append(contentsOf: page.constantAya2of4)
//                        ayatHide.append(contentsOf: page.constantAya3of4)
//                        ayatShow.append(contentsOf: page.constantAya4of4)
//                        buttonHide.append(contentsOf: page.constantButton1of4)
//                        buttonHide.append(contentsOf: page.constantButton2of4)
//                        buttonHide.append(contentsOf: page.constantButton3of4)
//                        buttonShow.append(contentsOf: page.constantButton4of4)
//                    }
//                default:
//                    break
//                }
//            default:
//                break
//            }
//        case 10:
//            // MARK: - Page 10
//            switch dayNumber {
//            case 1:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 1, Difficulty 1
//                    ayaStartStack = [62]
//                    ayaEndStack = [62]
//                    if let page = viewController as? Page010ViewController {
//                        ayatShow.append(contentsOf: page.constantAya1of8)
//                        ayatHide.append(contentsOf: page.constantAya2of8)
//                        ayatHide.append(contentsOf: page.constantAya3of8)
//                        ayatHide.append(contentsOf: page.constantAya4of8)
//                        ayatHide.append(contentsOf: page.constantAya5of8)
//                        ayatHide.append(contentsOf: page.constantAya6of8)
//                        ayatHide.append(contentsOf: page.constantAya7of8)
//                        ayatHide.append(contentsOf: page.constantAya8of8)
//                        buttonShow.append(contentsOf: page.constantButton1of8)
//                        buttonHide.append(contentsOf: page.constantButton2of8)
//                        buttonHide.append(contentsOf: page.constantButton3of8)
//                        buttonHide.append(contentsOf: page.constantButton4of8)
//                        buttonHide.append(contentsOf: page.constantButton5of8)
//                        buttonHide.append(contentsOf: page.constantButton6of8)
//                        buttonHide.append(contentsOf: page.constantButton7of8)
//                        buttonHide.append(contentsOf: page.constantButton8of8)
//                    }
//                default:
//                    break
//                }
//            case 2:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 2, Difficulty 1
//                    ayaStartStack = [63]
//                    ayaEndStack = [63]
//                    if let page = viewController as? Page010ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of8)
//                        ayatShow.append(contentsOf: page.constantAya2of8)
//                        ayatHide.append(contentsOf: page.constantAya3of8)
//                        ayatHide.append(contentsOf: page.constantAya4of8)
//                        ayatHide.append(contentsOf: page.constantAya5of8)
//                        ayatHide.append(contentsOf: page.constantAya6of8)
//                        ayatHide.append(contentsOf: page.constantAya7of8)
//                        ayatHide.append(contentsOf: page.constantAya8of8)
//                        buttonHide.append(contentsOf: page.constantButton1of8)
//                        buttonShow.append(contentsOf: page.constantButton2of8)
//                        buttonHide.append(contentsOf: page.constantButton3of8)
//                        buttonHide.append(contentsOf: page.constantButton4of8)
//                        buttonHide.append(contentsOf: page.constantButton5of8)
//                        buttonHide.append(contentsOf: page.constantButton6of8)
//                        buttonHide.append(contentsOf: page.constantButton7of8)
//                        buttonHide.append(contentsOf: page.constantButton8of8)
//                    }
//                default:
//                    break
//                }
//            case 3:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 3, Difficulty 1
//                    ayaStartStack = [64]
//                    ayaEndStack = [64]
//                    if let page = viewController as? Page010ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of8)
//                        ayatHide.append(contentsOf: page.constantAya2of8)
//                        ayatShow.append(contentsOf: page.constantAya3of8)
//                        ayatHide.append(contentsOf: page.constantAya4of8)
//                        ayatHide.append(contentsOf: page.constantAya5of8)
//                        ayatHide.append(contentsOf: page.constantAya6of8)
//                        ayatHide.append(contentsOf: page.constantAya7of8)
//                        ayatHide.append(contentsOf: page.constantAya8of8)
//                        buttonHide.append(contentsOf: page.constantButton1of8)
//                        buttonHide.append(contentsOf: page.constantButton2of8)
//                        buttonShow.append(contentsOf: page.constantButton3of8)
//                        buttonHide.append(contentsOf: page.constantButton4of8)
//                        buttonHide.append(contentsOf: page.constantButton5of8)
//                        buttonHide.append(contentsOf: page.constantButton6of8)
//                        buttonHide.append(contentsOf: page.constantButton7of8)
//                        buttonHide.append(contentsOf: page.constantButton8of8)
//                    }
//                default:
//                    break
//                }
//            case 4:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 4, Difficulty 1
//                    ayaStartStack = [65]
//                    ayaEndStack = [65]
//                    if let page = viewController as? Page010ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of8)
//                        ayatHide.append(contentsOf: page.constantAya2of8)
//                        ayatHide.append(contentsOf: page.constantAya3of8)
//                        ayatShow.append(contentsOf: page.constantAya4of8)
//                        ayatHide.append(contentsOf: page.constantAya5of8)
//                        ayatHide.append(contentsOf: page.constantAya6of8)
//                        ayatHide.append(contentsOf: page.constantAya7of8)
//                        ayatHide.append(contentsOf: page.constantAya8of8)
//                        buttonHide.append(contentsOf: page.constantButton1of8)
//                        buttonHide.append(contentsOf: page.constantButton2of8)
//                        buttonHide.append(contentsOf: page.constantButton3of8)
//                        buttonShow.append(contentsOf: page.constantButton4of8)
//                        buttonHide.append(contentsOf: page.constantButton5of8)
//                        buttonHide.append(contentsOf: page.constantButton6of8)
//                        buttonHide.append(contentsOf: page.constantButton7of8)
//                        buttonHide.append(contentsOf: page.constantButton8of8)
//                    }
//                default:
//                    break
//                }
//            case 5:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 5, Difficulty 1
//                    ayaStartStack = [66]
//                    ayaEndStack = [66]
//                    if let page = viewController as? Page010ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of8)
//                        ayatHide.append(contentsOf: page.constantAya2of8)
//                        ayatHide.append(contentsOf: page.constantAya3of8)
//                        ayatHide.append(contentsOf: page.constantAya4of8)
//                        ayatShow.append(contentsOf: page.constantAya5of8)
//                        ayatHide.append(contentsOf: page.constantAya6of8)
//                        ayatHide.append(contentsOf: page.constantAya7of8)
//                        ayatHide.append(contentsOf: page.constantAya8of8)
//                        buttonHide.append(contentsOf: page.constantButton1of8)
//                        buttonHide.append(contentsOf: page.constantButton2of8)
//                        buttonHide.append(contentsOf: page.constantButton3of8)
//                        buttonHide.append(contentsOf: page.constantButton4of8)
//                        buttonShow.append(contentsOf: page.constantButton5of8)
//                        buttonHide.append(contentsOf: page.constantButton6of8)
//                        buttonHide.append(contentsOf: page.constantButton7of8)
//                        buttonHide.append(contentsOf: page.constantButton8of8)
//                    }
//                default:
//                    break
//                }
//            case 6:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 6, Difficulty 1
//                    ayaStartStack = [67]
//                    ayaEndStack = [67]
//                    if let page = viewController as? Page010ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of8)
//                        ayatHide.append(contentsOf: page.constantAya2of8)
//                        ayatHide.append(contentsOf: page.constantAya3of8)
//                        ayatHide.append(contentsOf: page.constantAya4of8)
//                        ayatHide.append(contentsOf: page.constantAya5of8)
//                        ayatShow.append(contentsOf: page.constantAya6of8)
//                        ayatHide.append(contentsOf: page.constantAya7of8)
//                        ayatHide.append(contentsOf: page.constantAya8of8)
//                        buttonHide.append(contentsOf: page.constantButton1of8)
//                        buttonHide.append(contentsOf: page.constantButton2of8)
//                        buttonHide.append(contentsOf: page.constantButton3of8)
//                        buttonHide.append(contentsOf: page.constantButton4of8)
//                        buttonHide.append(contentsOf: page.constantButton5of8)
//                        buttonShow.append(contentsOf: page.constantButton6of8)
//                        buttonHide.append(contentsOf: page.constantButton7of8)
//                        buttonHide.append(contentsOf: page.constantButton8of8)
//                    }
//                default:
//                    break
//                }
//            case 7:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 7, Difficulty 1
//                    ayaStartStack = [68]
//                    ayaEndStack = [68]
//                    if let page = viewController as? Page010ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of8)
//                        ayatHide.append(contentsOf: page.constantAya2of8)
//                        ayatHide.append(contentsOf: page.constantAya3of8)
//                        ayatHide.append(contentsOf: page.constantAya4of8)
//                        ayatHide.append(contentsOf: page.constantAya5of8)
//                        ayatHide.append(contentsOf: page.constantAya6of8)
//                        ayatShow.append(contentsOf: page.constantAya7of8)
//                        ayatHide.append(contentsOf: page.constantAya8of8)
//                        buttonHide.append(contentsOf: page.constantButton1of8)
//                        buttonHide.append(contentsOf: page.constantButton2of8)
//                        buttonHide.append(contentsOf: page.constantButton3of8)
//                        buttonHide.append(contentsOf: page.constantButton4of8)
//                        buttonHide.append(contentsOf: page.constantButton5of8)
//                        buttonHide.append(contentsOf: page.constantButton6of8)
//                        buttonShow.append(contentsOf: page.constantButton7of8)
//                        buttonHide.append(contentsOf: page.constantButton8of8)
//                    }
//                default:
//                    break
//                }
//            case 8:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 8, Difficulty 1
//                    ayaStartStack = [69]
//                    ayaEndStack = [69]
//                    if let page = viewController as? Page010ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of8)
//                        ayatHide.append(contentsOf: page.constantAya2of8)
//                        ayatHide.append(contentsOf: page.constantAya3of8)
//                        ayatHide.append(contentsOf: page.constantAya4of8)
//                        ayatHide.append(contentsOf: page.constantAya5of8)
//                        ayatHide.append(contentsOf: page.constantAya6of8)
//                        ayatHide.append(contentsOf: page.constantAya7of8)
//                        ayatShow.append(contentsOf: page.constantAya8of8)
//                        buttonHide.append(contentsOf: page.constantButton1of8)
//                        buttonHide.append(contentsOf: page.constantButton2of8)
//                        buttonHide.append(contentsOf: page.constantButton3of8)
//                        buttonHide.append(contentsOf: page.constantButton4of8)
//                        buttonHide.append(contentsOf: page.constantButton5of8)
//                        buttonHide.append(contentsOf: page.constantButton6of8)
//                        buttonHide.append(contentsOf: page.constantButton7of8)
//                        buttonShow.append(contentsOf: page.constantButton8of8)
//                    }
//                default:
//                    break
//                }
//            default:
//                break
//            }
//        case 11:
//            // MARK: - Page 11
//            switch dayNumber {
//            case 1:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 1, Difficulty 1
//                    ayaStartStack = [70]
//                    ayaEndStack = [70]
//                    if let page = viewController as? Page011ViewController {
//                        ayatShow.append(contentsOf: page.constantAya1of7)
//                        ayatHide.append(contentsOf: page.constantAya2of7)
//                        ayatHide.append(contentsOf: page.constantAya3of7)
//                        ayatHide.append(contentsOf: page.constantAya4of7)
//                        ayatHide.append(contentsOf: page.constantAya5of7)
//                        ayatHide.append(contentsOf: page.constantAya6of7)
//                        ayatHide.append(contentsOf: page.constantAya7of7)
//                        buttonShow.append(contentsOf: page.constantButton1of7)
//                        buttonHide.append(contentsOf: page.constantButton2of7)
//                        buttonHide.append(contentsOf: page.constantButton3of7)
//                        buttonHide.append(contentsOf: page.constantButton4of7)
//                        buttonHide.append(contentsOf: page.constantButton5of7)
//                        buttonHide.append(contentsOf: page.constantButton6of7)
//                        buttonHide.append(contentsOf: page.constantButton7of7)
//                    }
//                default:
//                    break
//                }
//            case 2:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 2, Difficulty 1
//                    ayaStartStack = [71]
//                    ayaEndStack = [71]
//                    if let page = viewController as? Page011ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of7)
//                        ayatShow.append(contentsOf: page.constantAya2of7)
//                        ayatHide.append(contentsOf: page.constantAya3of7)
//                        ayatHide.append(contentsOf: page.constantAya4of7)
//                        ayatHide.append(contentsOf: page.constantAya5of7)
//                        ayatHide.append(contentsOf: page.constantAya6of7)
//                        ayatHide.append(contentsOf: page.constantAya7of7)
//                        buttonHide.append(contentsOf: page.constantButton1of7)
//                        buttonShow.append(contentsOf: page.constantButton2of7)
//                        buttonHide.append(contentsOf: page.constantButton3of7)
//                        buttonHide.append(contentsOf: page.constantButton4of7)
//                        buttonHide.append(contentsOf: page.constantButton5of7)
//                        buttonHide.append(contentsOf: page.constantButton6of7)
//                        buttonHide.append(contentsOf: page.constantButton7of7)
//                    }
//                default:
//                    break
//                }
//            case 3:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 3, Difficulty 1
//                    ayaStartStack = [72]
//                    ayaEndStack = [72]
//                    if let page = viewController as? Page011ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of7)
//                        ayatHide.append(contentsOf: page.constantAya2of7)
//                        ayatShow.append(contentsOf: page.constantAya3of7)
//                        ayatHide.append(contentsOf: page.constantAya4of7)
//                        ayatHide.append(contentsOf: page.constantAya5of7)
//                        ayatHide.append(contentsOf: page.constantAya6of7)
//                        ayatHide.append(contentsOf: page.constantAya7of7)
//                        buttonHide.append(contentsOf: page.constantButton1of7)
//                        buttonHide.append(contentsOf: page.constantButton2of7)
//                        buttonShow.append(contentsOf: page.constantButton3of7)
//                        buttonHide.append(contentsOf: page.constantButton4of7)
//                        buttonHide.append(contentsOf: page.constantButton5of7)
//                        buttonHide.append(contentsOf: page.constantButton6of7)
//                        buttonHide.append(contentsOf: page.constantButton7of7)
//                    }
//                default:
//                    break
//                }
//            case 4:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 4, Difficulty 1
//                    ayaStartStack = [73]
//                    ayaEndStack = [73]
//                    if let page = viewController as? Page011ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of7)
//                        ayatHide.append(contentsOf: page.constantAya2of7)
//                        ayatHide.append(contentsOf: page.constantAya3of7)
//                        ayatShow.append(contentsOf: page.constantAya4of7)
//                        ayatHide.append(contentsOf: page.constantAya5of7)
//                        ayatHide.append(contentsOf: page.constantAya6of7)
//                        ayatHide.append(contentsOf: page.constantAya7of7)
//                        buttonHide.append(contentsOf: page.constantButton1of7)
//                        buttonHide.append(contentsOf: page.constantButton2of7)
//                        buttonHide.append(contentsOf: page.constantButton3of7)
//                        buttonShow.append(contentsOf: page.constantButton4of7)
//                        buttonHide.append(contentsOf: page.constantButton5of7)
//                        buttonHide.append(contentsOf: page.constantButton6of7)
//                        buttonHide.append(contentsOf: page.constantButton7of7)                    }
//                default:
//                    break
//                }
//            case 5:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 5, Difficulty 1
//                    ayaStartStack = [74]
//                    ayaEndStack = [74]
//                    if let page = viewController as? Page011ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of7)
//                        ayatHide.append(contentsOf: page.constantAya2of7)
//                        ayatHide.append(contentsOf: page.constantAya3of7)
//                        ayatHide.append(contentsOf: page.constantAya4of7)
//                        ayatShow.append(contentsOf: page.constantAya5of7)
//                        ayatHide.append(contentsOf: page.constantAya6of7)
//                        ayatHide.append(contentsOf: page.constantAya7of7)
//                        buttonHide.append(contentsOf: page.constantButton1of7)
//                        buttonHide.append(contentsOf: page.constantButton2of7)
//                        buttonHide.append(contentsOf: page.constantButton3of7)
//                        buttonHide.append(contentsOf: page.constantButton4of7)
//                        buttonShow.append(contentsOf: page.constantButton5of7)
//                        buttonHide.append(contentsOf: page.constantButton6of7)
//                        buttonHide.append(contentsOf: page.constantButton7of7)
//                    }
//                default:
//                    break
//                }
//            case 6:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 6, Difficulty 1
//                    ayaStartStack = [75]
//                    ayaEndStack = [75]
//                    if let page = viewController as? Page011ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of7)
//                        ayatHide.append(contentsOf: page.constantAya2of7)
//                        ayatHide.append(contentsOf: page.constantAya3of7)
//                        ayatHide.append(contentsOf: page.constantAya4of7)
//                        ayatHide.append(contentsOf: page.constantAya5of7)
//                        ayatShow.append(contentsOf: page.constantAya6of7)
//                        ayatHide.append(contentsOf: page.constantAya7of7)
//                        buttonHide.append(contentsOf: page.constantButton1of7)
//                        buttonHide.append(contentsOf: page.constantButton2of7)
//                        buttonHide.append(contentsOf: page.constantButton3of7)
//                        buttonHide.append(contentsOf: page.constantButton4of7)
//                        buttonHide.append(contentsOf: page.constantButton5of7)
//                        buttonShow.append(contentsOf: page.constantButton6of7)
//                        buttonHide.append(contentsOf: page.constantButton7of7)
//                    }
//                default:
//                    break
//                }
//            case 7:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 7, Difficulty 1
//                    ayaStartStack = [76]
//                    ayaEndStack = [76]
//                    if let page = viewController as? Page011ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of7)
//                        ayatHide.append(contentsOf: page.constantAya2of7)
//                        ayatHide.append(contentsOf: page.constantAya3of7)
//                        ayatHide.append(contentsOf: page.constantAya4of7)
//                        ayatHide.append(contentsOf: page.constantAya5of7)
//                        ayatHide.append(contentsOf: page.constantAya6of7)
//                        ayatShow.append(contentsOf: page.constantAya7of7)
//                        buttonHide.append(contentsOf: page.constantButton1of7)
//                        buttonHide.append(contentsOf: page.constantButton2of7)
//                        buttonHide.append(contentsOf: page.constantButton3of7)
//                        buttonHide.append(contentsOf: page.constantButton4of7)
//                        buttonHide.append(contentsOf: page.constantButton5of7)
//                        buttonHide.append(contentsOf: page.constantButton6of7)
//                        buttonShow.append(contentsOf: page.constantButton7of7)
//                    }
//                default:
//                    break
//                }
//            default:
//                break
//            }
//        case 12:
//            // MARK: - Page 12
//            switch dayNumber {
//            case 1:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 1, Difficulty 1
//                    ayaStartStack = [77]
//                    ayaEndStack = [77]
//                    if let page = viewController as? Page012ViewController {
//                        ayatShow.append(contentsOf: page.constantAya1of7)
//                        ayatHide.append(contentsOf: page.constantAya2of7)
//                        ayatHide.append(contentsOf: page.constantAya3of7)
//                        ayatHide.append(contentsOf: page.constantAya4of7)
//                        ayatHide.append(contentsOf: page.constantAya5of7)
//                        ayatHide.append(contentsOf: page.constantAya6of7)
//                        ayatHide.append(contentsOf: page.constantAya7of7)
//                        buttonShow.append(contentsOf: page.constantButton1of7)
//                        buttonHide.append(contentsOf: page.constantButton2of7)
//                        buttonHide.append(contentsOf: page.constantButton3of7)
//                        buttonHide.append(contentsOf: page.constantButton4of7)
//                        buttonHide.append(contentsOf: page.constantButton5of7)
//                        buttonHide.append(contentsOf: page.constantButton6of7)
//                        buttonHide.append(contentsOf: page.constantButton7of7)
//                    }
//                default:
//                    break
//                }
//            case 2:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 2, Difficulty 1
//                    ayaStartStack = [78]
//                    ayaEndStack = [78]
//                    if let page = viewController as? Page012ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of7)
//                        ayatShow.append(contentsOf: page.constantAya2of7)
//                        ayatHide.append(contentsOf: page.constantAya3of7)
//                        ayatHide.append(contentsOf: page.constantAya4of7)
//                        ayatHide.append(contentsOf: page.constantAya5of7)
//                        ayatHide.append(contentsOf: page.constantAya6of7)
//                        ayatHide.append(contentsOf: page.constantAya7of7)
//                        buttonHide.append(contentsOf: page.constantButton1of7)
//                        buttonShow.append(contentsOf: page.constantButton2of7)
//                        buttonHide.append(contentsOf: page.constantButton3of7)
//                        buttonHide.append(contentsOf: page.constantButton4of7)
//                        buttonHide.append(contentsOf: page.constantButton5of7)
//                        buttonHide.append(contentsOf: page.constantButton6of7)
//                        buttonHide.append(contentsOf: page.constantButton7of7)
//                    }
//                default:
//                    break
//                }
//            case 3:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 3, Difficulty 1
//                    ayaStartStack = [79]
//                    ayaEndStack = [79]
//                    if let page = viewController as? Page012ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of7)
//                        ayatHide.append(contentsOf: page.constantAya2of7)
//                        ayatShow.append(contentsOf: page.constantAya3of7)
//                        ayatHide.append(contentsOf: page.constantAya4of7)
//                        ayatHide.append(contentsOf: page.constantAya5of7)
//                        ayatHide.append(contentsOf: page.constantAya6of7)
//                        ayatHide.append(contentsOf: page.constantAya7of7)
//                        buttonHide.append(contentsOf: page.constantButton1of7)
//                        buttonHide.append(contentsOf: page.constantButton2of7)
//                        buttonShow.append(contentsOf: page.constantButton3of7)
//                        buttonHide.append(contentsOf: page.constantButton4of7)
//                        buttonHide.append(contentsOf: page.constantButton5of7)
//                        buttonHide.append(contentsOf: page.constantButton6of7)
//                        buttonHide.append(contentsOf: page.constantButton7of7)
//                    }
//                default:
//                    break
//                }
//            case 4:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 4, Difficulty 1
//                    ayaStartStack = [80]
//                    ayaEndStack = [80]
//                    if let page = viewController as? Page012ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of7)
//                        ayatHide.append(contentsOf: page.constantAya2of7)
//                        ayatHide.append(contentsOf: page.constantAya3of7)
//                        ayatShow.append(contentsOf: page.constantAya4of7)
//                        ayatHide.append(contentsOf: page.constantAya5of7)
//                        ayatHide.append(contentsOf: page.constantAya6of7)
//                        ayatHide.append(contentsOf: page.constantAya7of7)
//                        buttonHide.append(contentsOf: page.constantButton1of7)
//                        buttonHide.append(contentsOf: page.constantButton2of7)
//                        buttonHide.append(contentsOf: page.constantButton3of7)
//                        buttonShow.append(contentsOf: page.constantButton4of7)
//                        buttonHide.append(contentsOf: page.constantButton5of7)
//                        buttonHide.append(contentsOf: page.constantButton6of7)
//                        buttonHide.append(contentsOf: page.constantButton7of7)                    }
//                default:
//                    break
//                }
//            case 5:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 5, Difficulty 1
//                    ayaStartStack = [81]
//                    ayaEndStack = [81]
//                    if let page = viewController as? Page012ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of7)
//                        ayatHide.append(contentsOf: page.constantAya2of7)
//                        ayatHide.append(contentsOf: page.constantAya3of7)
//                        ayatHide.append(contentsOf: page.constantAya4of7)
//                        ayatShow.append(contentsOf: page.constantAya5of7)
//                        ayatHide.append(contentsOf: page.constantAya6of7)
//                        ayatHide.append(contentsOf: page.constantAya7of7)
//                        buttonHide.append(contentsOf: page.constantButton1of7)
//                        buttonHide.append(contentsOf: page.constantButton2of7)
//                        buttonHide.append(contentsOf: page.constantButton3of7)
//                        buttonHide.append(contentsOf: page.constantButton4of7)
//                        buttonShow.append(contentsOf: page.constantButton5of7)
//                        buttonHide.append(contentsOf: page.constantButton6of7)
//                        buttonHide.append(contentsOf: page.constantButton7of7)
//                    }
//                default:
//                    break
//                }
//            case 6:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 6, Difficulty 1
//                    ayaStartStack = [82]
//                    ayaEndStack = [82]
//                    if let page = viewController as? Page012ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of7)
//                        ayatHide.append(contentsOf: page.constantAya2of7)
//                        ayatHide.append(contentsOf: page.constantAya3of7)
//                        ayatHide.append(contentsOf: page.constantAya4of7)
//                        ayatHide.append(contentsOf: page.constantAya5of7)
//                        ayatShow.append(contentsOf: page.constantAya6of7)
//                        ayatHide.append(contentsOf: page.constantAya7of7)
//                        buttonHide.append(contentsOf: page.constantButton1of7)
//                        buttonHide.append(contentsOf: page.constantButton2of7)
//                        buttonHide.append(contentsOf: page.constantButton3of7)
//                        buttonHide.append(contentsOf: page.constantButton4of7)
//                        buttonHide.append(contentsOf: page.constantButton5of7)
//                        buttonShow.append(contentsOf: page.constantButton6of7)
//                        buttonHide.append(contentsOf: page.constantButton7of7)
//                    }
//                default:
//                    break
//                }
//            case 7:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 7, Difficulty 1
//                    ayaStartStack = [83]
//                    ayaEndStack = [83]
//                    if let page = viewController as? Page012ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of7)
//                        ayatHide.append(contentsOf: page.constantAya2of7)
//                        ayatHide.append(contentsOf: page.constantAya3of7)
//                        ayatHide.append(contentsOf: page.constantAya4of7)
//                        ayatHide.append(contentsOf: page.constantAya5of7)
//                        ayatHide.append(contentsOf: page.constantAya6of7)
//                        ayatShow.append(contentsOf: page.constantAya7of7)
//                        buttonHide.append(contentsOf: page.constantButton1of7)
//                        buttonHide.append(contentsOf: page.constantButton2of7)
//                        buttonHide.append(contentsOf: page.constantButton3of7)
//                        buttonHide.append(contentsOf: page.constantButton4of7)
//                        buttonHide.append(contentsOf: page.constantButton5of7)
//                        buttonHide.append(contentsOf: page.constantButton6of7)
//                        buttonShow.append(contentsOf: page.constantButton7of7)
//                    }
//                default:
//                    break
//                }
//            default:
//                break
//            }
//        case 13:
//            // MARK: - Page 13
//            switch dayNumber {
//            case 1:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 1, Difficulty 1
//                    ayaStartStack = [84]
//                    ayaEndStack = [84]
//                    if let page = viewController as? Page013ViewController {
//                        ayatShow.append(contentsOf: page.constantAya1of5)
//                        ayatHide.append(contentsOf: page.constantAya2of5)
//                        ayatHide.append(contentsOf: page.constantAya3of5)
//                        ayatHide.append(contentsOf: page.constantAya4of5)
//                        ayatHide.append(contentsOf: page.constantAya5of5)
//                        buttonShow.append(contentsOf: page.constantButton1of5)
//                        buttonHide.append(contentsOf: page.constantButton2of5)
//                        buttonHide.append(contentsOf: page.constantButton3of5)
//                        buttonHide.append(contentsOf: page.constantButton4of5)
//                        buttonHide.append(contentsOf: page.constantButton5of5)
//                    }
//                default:
//                    break
//                }
//            case 2:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 2, Difficulty 1
//                    ayaStartStack = [85]
//                    ayaEndStack = [85]
//                    if let page = viewController as? Page013ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of5)
//                        ayatShow.append(contentsOf: page.constantAya2of5)
//                        ayatHide.append(contentsOf: page.constantAya3of5)
//                        ayatHide.append(contentsOf: page.constantAya4of5)
//                        ayatHide.append(contentsOf: page.constantAya5of5)
//                        buttonHide.append(contentsOf: page.constantButton1of5)
//                        buttonShow.append(contentsOf: page.constantButton2of5)
//                        buttonHide.append(contentsOf: page.constantButton3of5)
//                        buttonHide.append(contentsOf: page.constantButton4of5)
//                        buttonHide.append(contentsOf: page.constantButton5of5)
//                    }
//                default:
//                    break
//                }
//            case 3:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 3, Difficulty 1
//                    ayaStartStack = [86]
//                    ayaEndStack = [86]
//                    if let page = viewController as? Page013ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of5)
//                        ayatHide.append(contentsOf: page.constantAya2of5)
//                        ayatShow.append(contentsOf: page.constantAya3of5)
//                        ayatHide.append(contentsOf: page.constantAya4of5)
//                        ayatHide.append(contentsOf: page.constantAya5of5)
//                        buttonHide.append(contentsOf: page.constantButton1of5)
//                        buttonHide.append(contentsOf: page.constantButton2of5)
//                        buttonShow.append(contentsOf: page.constantButton3of5)
//                        buttonHide.append(contentsOf: page.constantButton4of5)
//                        buttonHide.append(contentsOf: page.constantButton5of5)
//                    }
//                default:
//                    break
//                }
//            case 4:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 4, Difficulty 1
//                    ayaStartStack = [87]
//                    ayaEndStack = [87]
//                    if let page = viewController as? Page013ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of5)
//                        ayatHide.append(contentsOf: page.constantAya2of5)
//                        ayatHide.append(contentsOf: page.constantAya3of5)
//                        ayatShow.append(contentsOf: page.constantAya4of5)
//                        ayatHide.append(contentsOf: page.constantAya5of5)
//                        buttonHide.append(contentsOf: page.constantButton1of5)
//                        buttonHide.append(contentsOf: page.constantButton2of5)
//                        buttonHide.append(contentsOf: page.constantButton3of5)
//                        buttonShow.append(contentsOf: page.constantButton4of5)
//                        buttonHide.append(contentsOf: page.constantButton5of5)                   }
//                default:
//                    break
//                }
//            case 5:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 5, Difficulty 1
//                    ayaStartStack = [88]
//                    ayaEndStack = [88]
//                    if let page = viewController as? Page013ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of5)
//                        ayatHide.append(contentsOf: page.constantAya2of5)
//                        ayatHide.append(contentsOf: page.constantAya3of5)
//                        ayatHide.append(contentsOf: page.constantAya4of5)
//                        ayatShow.append(contentsOf: page.constantAya5of5)
//                        buttonHide.append(contentsOf: page.constantButton1of5)
//                        buttonHide.append(contentsOf: page.constantButton2of5)
//                        buttonHide.append(contentsOf: page.constantButton3of5)
//                        buttonHide.append(contentsOf: page.constantButton4of5)
//                        buttonShow.append(contentsOf: page.constantButton5of5)
//                    }
//                default:
//                    break
//                }
//            default:
//                break
//            }
//        case 14:
//            // MARK: - Page 14
//            switch dayNumber {
//            case 1:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 1, Difficulty 1
//                    ayaStartStack = [89]
//                    ayaEndStack = [89]
//                    if let page = viewController as? Page014ViewController {
//                        ayatShow.append(contentsOf: page.constantAya1of5)
//                        ayatHide.append(contentsOf: page.constantAya2of5)
//                        ayatHide.append(contentsOf: page.constantAya3of5)
//                        ayatHide.append(contentsOf: page.constantAya4of5)
//                        ayatHide.append(contentsOf: page.constantAya5of5)
//                        buttonShow.append(contentsOf: page.constantButton1of5)
//                        buttonHide.append(contentsOf: page.constantButton2of5)
//                        buttonHide.append(contentsOf: page.constantButton3of5)
//                        buttonHide.append(contentsOf: page.constantButton4of5)
//                        buttonHide.append(contentsOf: page.constantButton5of5)
//                    }
//                default:
//                    break
//                }
//            case 2:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 2, Difficulty 1
//                    ayaStartStack = [90]
//                    ayaEndStack = [90]
//                    if let page = viewController as? Page014ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of5)
//                        ayatShow.append(contentsOf: page.constantAya2of5)
//                        ayatHide.append(contentsOf: page.constantAya3of5)
//                        ayatHide.append(contentsOf: page.constantAya4of5)
//                        ayatHide.append(contentsOf: page.constantAya5of5)
//                        buttonHide.append(contentsOf: page.constantButton1of5)
//                        buttonShow.append(contentsOf: page.constantButton2of5)
//                        buttonHide.append(contentsOf: page.constantButton3of5)
//                        buttonHide.append(contentsOf: page.constantButton4of5)
//                        buttonHide.append(contentsOf: page.constantButton5of5)
//                    }
//                default:
//                    break
//                }
//            case 3:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 3, Difficulty 1
//                    ayaStartStack = [91]
//                    ayaEndStack = [91]
//                    if let page = viewController as? Page014ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of5)
//                        ayatHide.append(contentsOf: page.constantAya2of5)
//                        ayatShow.append(contentsOf: page.constantAya3of5)
//                        ayatHide.append(contentsOf: page.constantAya4of5)
//                        ayatHide.append(contentsOf: page.constantAya5of5)
//                        buttonHide.append(contentsOf: page.constantButton1of5)
//                        buttonHide.append(contentsOf: page.constantButton2of5)
//                        buttonShow.append(contentsOf: page.constantButton3of5)
//                        buttonHide.append(contentsOf: page.constantButton4of5)
//                        buttonHide.append(contentsOf: page.constantButton5of5)
//                    }
//                default:
//                    break
//                }
//            case 4:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 4, Difficulty 1
//                    ayaStartStack = [92]
//                    ayaEndStack = [92]
//                    if let page = viewController as? Page014ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of5)
//                        ayatHide.append(contentsOf: page.constantAya2of5)
//                        ayatHide.append(contentsOf: page.constantAya3of5)
//                        ayatShow.append(contentsOf: page.constantAya4of5)
//                        ayatHide.append(contentsOf: page.constantAya5of5)
//                        buttonHide.append(contentsOf: page.constantButton1of5)
//                        buttonHide.append(contentsOf: page.constantButton2of5)
//                        buttonHide.append(contentsOf: page.constantButton3of5)
//                        buttonShow.append(contentsOf: page.constantButton4of5)
//                        buttonHide.append(contentsOf: page.constantButton5of5)                   }
//                default:
//                    break
//                }
//            case 5:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 5, Difficulty 1
//                    ayaStartStack = [93]
//                    ayaEndStack = [93]
//                    if let page = viewController as? Page014ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of5)
//                        ayatHide.append(contentsOf: page.constantAya2of5)
//                        ayatHide.append(contentsOf: page.constantAya3of5)
//                        ayatHide.append(contentsOf: page.constantAya4of5)
//                        ayatShow.append(contentsOf: page.constantAya5of5)
//                        buttonHide.append(contentsOf: page.constantButton1of5)
//                        buttonHide.append(contentsOf: page.constantButton2of5)
//                        buttonHide.append(contentsOf: page.constantButton3of5)
//                        buttonHide.append(contentsOf: page.constantButton4of5)
//                        buttonShow.append(contentsOf: page.constantButton5of5)
//                    }
//                default:
//                    break
//                }
//            default:
//                break
//            }        
//        case 15:
//            // MARK: - Page 15
//            switch dayNumber {
//            case 1:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 1, Difficulty 1
//                    ayaStartStack = [94]
//                    ayaEndStack = [94]
//                    if let page = viewController as? Page015ViewController {
//                        ayatShow.append(contentsOf: page.constantAya1of8)
//                        ayatHide.append(contentsOf: page.constantAya2of8)
//                        ayatHide.append(contentsOf: page.constantAya3of8)
//                        ayatHide.append(contentsOf: page.constantAya4of8)
//                        ayatHide.append(contentsOf: page.constantAya5of8)
//                        ayatHide.append(contentsOf: page.constantAya6of8)
//                        ayatHide.append(contentsOf: page.constantAya7of8)
//                        ayatHide.append(contentsOf: page.constantAya8of8)
//                        buttonShow.append(contentsOf: page.constantButton1of8)
//                        buttonHide.append(contentsOf: page.constantButton2of8)
//                        buttonHide.append(contentsOf: page.constantButton3of8)
//                        buttonHide.append(contentsOf: page.constantButton4of8)
//                        buttonHide.append(contentsOf: page.constantButton5of8)
//                        buttonHide.append(contentsOf: page.constantButton6of8)
//                        buttonHide.append(contentsOf: page.constantButton7of8)
//                        buttonHide.append(contentsOf: page.constantButton8of8)
//                    }
//                default:
//                    break
//                }
//            case 2:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 2, Difficulty 1
//                    ayaStartStack = [95]
//                    ayaEndStack = [95]
//                    if let page = viewController as? Page015ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of8)
//                        ayatShow.append(contentsOf: page.constantAya2of8)
//                        ayatHide.append(contentsOf: page.constantAya3of8)
//                        ayatHide.append(contentsOf: page.constantAya4of8)
//                        ayatHide.append(contentsOf: page.constantAya5of8)
//                        ayatHide.append(contentsOf: page.constantAya6of8)
//                        ayatHide.append(contentsOf: page.constantAya7of8)
//                        ayatHide.append(contentsOf: page.constantAya8of8)
//                        buttonHide.append(contentsOf: page.constantButton1of8)
//                        buttonShow.append(contentsOf: page.constantButton2of8)
//                        buttonHide.append(contentsOf: page.constantButton3of8)
//                        buttonHide.append(contentsOf: page.constantButton4of8)
//                        buttonHide.append(contentsOf: page.constantButton5of8)
//                        buttonHide.append(contentsOf: page.constantButton6of8)
//                        buttonHide.append(contentsOf: page.constantButton7of8)
//                        buttonHide.append(contentsOf: page.constantButton8of8)
//                    }
//                default:
//                    break
//                }
//            case 3:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 3, Difficulty 1
//                    ayaStartStack = [96]
//                    ayaEndStack = [96]
//                    if let page = viewController as? Page015ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of8)
//                        ayatHide.append(contentsOf: page.constantAya2of8)
//                        ayatShow.append(contentsOf: page.constantAya3of8)
//                        ayatHide.append(contentsOf: page.constantAya4of8)
//                        ayatHide.append(contentsOf: page.constantAya5of8)
//                        ayatHide.append(contentsOf: page.constantAya6of8)
//                        ayatHide.append(contentsOf: page.constantAya7of8)
//                        ayatHide.append(contentsOf: page.constantAya8of8)
//                        buttonHide.append(contentsOf: page.constantButton1of8)
//                        buttonHide.append(contentsOf: page.constantButton2of8)
//                        buttonShow.append(contentsOf: page.constantButton3of8)
//                        buttonHide.append(contentsOf: page.constantButton4of8)
//                        buttonHide.append(contentsOf: page.constantButton5of8)
//                        buttonHide.append(contentsOf: page.constantButton6of8)
//                        buttonHide.append(contentsOf: page.constantButton7of8)
//                        buttonHide.append(contentsOf: page.constantButton8of8)
//                    }
//                default:
//                    break
//                }
//            case 4:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 4, Difficulty 1
//                    ayaStartStack = [97]
//                    ayaEndStack = [97]
//                    if let page = viewController as? Page015ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of8)
//                        ayatHide.append(contentsOf: page.constantAya2of8)
//                        ayatHide.append(contentsOf: page.constantAya3of8)
//                        ayatShow.append(contentsOf: page.constantAya4of8)
//                        ayatHide.append(contentsOf: page.constantAya5of8)
//                        ayatHide.append(contentsOf: page.constantAya6of8)
//                        ayatHide.append(contentsOf: page.constantAya7of8)
//                        ayatHide.append(contentsOf: page.constantAya8of8)
//                        buttonHide.append(contentsOf: page.constantButton1of8)
//                        buttonHide.append(contentsOf: page.constantButton2of8)
//                        buttonHide.append(contentsOf: page.constantButton3of8)
//                        buttonShow.append(contentsOf: page.constantButton4of8)
//                        buttonHide.append(contentsOf: page.constantButton5of8)
//                        buttonHide.append(contentsOf: page.constantButton6of8)
//                        buttonHide.append(contentsOf: page.constantButton7of8)
//                        buttonHide.append(contentsOf: page.constantButton8of8)
//                    }
//                default:
//                    break
//                }
//            case 5:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 5, Difficulty 1
//                    ayaStartStack = [98]
//                    ayaEndStack = [98]
//                    if let page = viewController as? Page015ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of8)
//                        ayatHide.append(contentsOf: page.constantAya2of8)
//                        ayatHide.append(contentsOf: page.constantAya3of8)
//                        ayatHide.append(contentsOf: page.constantAya4of8)
//                        ayatShow.append(contentsOf: page.constantAya5of8)
//                        ayatHide.append(contentsOf: page.constantAya6of8)
//                        ayatHide.append(contentsOf: page.constantAya7of8)
//                        ayatHide.append(contentsOf: page.constantAya8of8)
//                        buttonHide.append(contentsOf: page.constantButton1of8)
//                        buttonHide.append(contentsOf: page.constantButton2of8)
//                        buttonHide.append(contentsOf: page.constantButton3of8)
//                        buttonHide.append(contentsOf: page.constantButton4of8)
//                        buttonShow.append(contentsOf: page.constantButton5of8)
//                        buttonHide.append(contentsOf: page.constantButton6of8)
//                        buttonHide.append(contentsOf: page.constantButton7of8)
//                        buttonHide.append(contentsOf: page.constantButton8of8)
//                    }
//                default:
//                    break
//                }
//            case 6:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 6, Difficulty 1
//                    ayaStartStack = [99]
//                    ayaEndStack = [99]
//                    if let page = viewController as? Page015ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of8)
//                        ayatHide.append(contentsOf: page.constantAya2of8)
//                        ayatHide.append(contentsOf: page.constantAya3of8)
//                        ayatHide.append(contentsOf: page.constantAya4of8)
//                        ayatHide.append(contentsOf: page.constantAya5of8)
//                        ayatShow.append(contentsOf: page.constantAya6of8)
//                        ayatHide.append(contentsOf: page.constantAya7of8)
//                        ayatHide.append(contentsOf: page.constantAya8of8)
//                        buttonHide.append(contentsOf: page.constantButton1of8)
//                        buttonHide.append(contentsOf: page.constantButton2of8)
//                        buttonHide.append(contentsOf: page.constantButton3of8)
//                        buttonHide.append(contentsOf: page.constantButton4of8)
//                        buttonHide.append(contentsOf: page.constantButton5of8)
//                        buttonShow.append(contentsOf: page.constantButton6of8)
//                        buttonHide.append(contentsOf: page.constantButton7of8)
//                        buttonHide.append(contentsOf: page.constantButton8of8)
//                    }
//                default:
//                    break
//                }
//            case 7:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 7, Difficulty 1
//                    ayaStartStack = [100]
//                    ayaEndStack = [100]
//                    if let page = viewController as? Page015ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of8)
//                        ayatHide.append(contentsOf: page.constantAya2of8)
//                        ayatHide.append(contentsOf: page.constantAya3of8)
//                        ayatHide.append(contentsOf: page.constantAya4of8)
//                        ayatHide.append(contentsOf: page.constantAya5of8)
//                        ayatHide.append(contentsOf: page.constantAya6of8)
//                        ayatShow.append(contentsOf: page.constantAya7of8)
//                        ayatHide.append(contentsOf: page.constantAya8of8)
//                        buttonHide.append(contentsOf: page.constantButton1of8)
//                        buttonHide.append(contentsOf: page.constantButton2of8)
//                        buttonHide.append(contentsOf: page.constantButton3of8)
//                        buttonHide.append(contentsOf: page.constantButton4of8)
//                        buttonHide.append(contentsOf: page.constantButton5of8)
//                        buttonHide.append(contentsOf: page.constantButton6of8)
//                        buttonShow.append(contentsOf: page.constantButton7of8)
//                        buttonHide.append(contentsOf: page.constantButton8of8)
//                    }
//                default:
//                    break
//                }
//            case 8:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 8, Difficulty 1
//                    ayaStartStack = [101]
//                    ayaEndStack = [101]
//                    if let page = viewController as? Page015ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of8)
//                        ayatHide.append(contentsOf: page.constantAya2of8)
//                        ayatHide.append(contentsOf: page.constantAya3of8)
//                        ayatHide.append(contentsOf: page.constantAya4of8)
//                        ayatHide.append(contentsOf: page.constantAya5of8)
//                        ayatHide.append(contentsOf: page.constantAya6of8)
//                        ayatHide.append(contentsOf: page.constantAya7of8)
//                        ayatShow.append(contentsOf: page.constantAya8of8)
//                        buttonHide.append(contentsOf: page.constantButton1of8)
//                        buttonHide.append(contentsOf: page.constantButton2of8)
//                        buttonHide.append(contentsOf: page.constantButton3of8)
//                        buttonHide.append(contentsOf: page.constantButton4of8)
//                        buttonHide.append(contentsOf: page.constantButton5of8)
//                        buttonHide.append(contentsOf: page.constantButton6of8)
//                        buttonHide.append(contentsOf: page.constantButton7of8)
//                        buttonShow.append(contentsOf: page.constantButton8of8)
//                    }
//                default:
//                    break
//                }
//            default:
//                break
//            }
//        case 16:
//            // MARK: - Page 16
//            switch dayNumber {
//            case 1:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 1, Difficulty 1
//                    ayaStartStack = [102]
//                    ayaEndStack = [102]
//                    if let page = viewController as? Page016ViewController {
//                        ayatShow.append(contentsOf: page.constantAya1of4)
//                        ayatHide.append(contentsOf: page.constantAya2of4)
//                        ayatHide.append(contentsOf: page.constantAya3of4)
//                        ayatHide.append(contentsOf: page.constantAya4of4)
//                        buttonShow.append(contentsOf: page.constantButton1of4)
//                        buttonHide.append(contentsOf: page.constantButton2of4)
//                        buttonHide.append(contentsOf: page.constantButton3of4)
//                        buttonHide.append(contentsOf: page.constantButton4of4)
//                    }
//                default:
//                    break
//                }
//            case 2:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 2, Difficulty 1
//                    ayaStartStack = [103]
//                    ayaEndStack = [103]
//                    if let page = viewController as? Page016ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of4)
//                        ayatShow.append(contentsOf: page.constantAya2of4)
//                        ayatHide.append(contentsOf: page.constantAya3of4)
//                        ayatHide.append(contentsOf: page.constantAya4of4)
//                        buttonHide.append(contentsOf: page.constantButton1of4)
//                        buttonShow.append(contentsOf: page.constantButton2of4)
//                        buttonHide.append(contentsOf: page.constantButton3of4)
//                        buttonHide.append(contentsOf: page.constantButton4of4)
//                    }
//                default:
//                    break
//                }
//            case 3:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 3, Difficulty 1
//                    ayaStartStack = [104]
//                    ayaEndStack = [104]
//                    if let page = viewController as? Page016ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of4)
//                        ayatHide.append(contentsOf: page.constantAya2of4)
//                        ayatShow.append(contentsOf: page.constantAya3of4)
//                        ayatHide.append(contentsOf: page.constantAya4of4)
//                        buttonHide.append(contentsOf: page.constantButton1of4)
//                        buttonHide.append(contentsOf: page.constantButton2of4)
//                        buttonShow.append(contentsOf: page.constantButton3of4)
//                        buttonHide.append(contentsOf: page.constantButton4of4)
//                    }
//                default:
//                    break
//                }
//            case 4:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 4, Difficulty 1
//                    ayaStartStack = [105]
//                    ayaEndStack = [105]
//                    if let page = viewController as? Page016ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of4)
//                        ayatHide.append(contentsOf: page.constantAya2of4)
//                        ayatHide.append(contentsOf: page.constantAya3of4)
//                        ayatShow.append(contentsOf: page.constantAya4of4)
//                        buttonHide.append(contentsOf: page.constantButton1of4)
//                        buttonHide.append(contentsOf: page.constantButton2of4)
//                        buttonHide.append(contentsOf: page.constantButton3of4)
//                        buttonShow.append(contentsOf: page.constantButton4of4)
//                    }
//                default:
//                    break
//                }
//            default:
//                break
//            }
//        case 17:
//            // MARK: - Page 17
//            switch dayNumber {
//            case 1:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 1, Difficulty 1
//                    ayaStartStack = [106]
//                    ayaEndStack = [106]
//                    if let page = viewController as? Page017ViewController {
//                        ayatShow.append(contentsOf: page.constantAya1of7)
//                        ayatHide.append(contentsOf: page.constantAya2of7)
//                        ayatHide.append(contentsOf: page.constantAya3of7)
//                        ayatHide.append(contentsOf: page.constantAya4of7)
//                        ayatHide.append(contentsOf: page.constantAya5of7)
//                        ayatHide.append(contentsOf: page.constantAya6of7)
//                        ayatHide.append(contentsOf: page.constantAya7of7)
//                        buttonShow.append(contentsOf: page.constantButton1of7)
//                        buttonHide.append(contentsOf: page.constantButton2of7)
//                        buttonHide.append(contentsOf: page.constantButton3of7)
//                        buttonHide.append(contentsOf: page.constantButton4of7)
//                        buttonHide.append(contentsOf: page.constantButton5of7)
//                        buttonHide.append(contentsOf: page.constantButton6of7)
//                        buttonHide.append(contentsOf: page.constantButton7of7)
//                    }
//                default:
//                    break
//                }
//            case 2:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 2, Difficulty 1
//                    ayaStartStack = [107]
//                    ayaEndStack = [107]
//                    if let page = viewController as? Page017ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of7)
//                        ayatShow.append(contentsOf: page.constantAya2of7)
//                        ayatHide.append(contentsOf: page.constantAya3of7)
//                        ayatHide.append(contentsOf: page.constantAya4of7)
//                        ayatHide.append(contentsOf: page.constantAya5of7)
//                        ayatHide.append(contentsOf: page.constantAya6of7)
//                        ayatHide.append(contentsOf: page.constantAya7of7)
//                        buttonHide.append(contentsOf: page.constantButton1of7)
//                        buttonShow.append(contentsOf: page.constantButton2of7)
//                        buttonHide.append(contentsOf: page.constantButton3of7)
//                        buttonHide.append(contentsOf: page.constantButton4of7)
//                        buttonHide.append(contentsOf: page.constantButton5of7)
//                        buttonHide.append(contentsOf: page.constantButton6of7)
//                        buttonHide.append(contentsOf: page.constantButton7of7)
//                    }
//                default:
//                    break
//                }
//            case 3:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 3, Difficulty 1
//                    ayaStartStack = [108]
//                    ayaEndStack = [108]
//                    if let page = viewController as? Page017ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of7)
//                        ayatHide.append(contentsOf: page.constantAya2of7)
//                        ayatShow.append(contentsOf: page.constantAya3of7)
//                        ayatHide.append(contentsOf: page.constantAya4of7)
//                        ayatHide.append(contentsOf: page.constantAya5of7)
//                        ayatHide.append(contentsOf: page.constantAya6of7)
//                        ayatHide.append(contentsOf: page.constantAya7of7)
//                        buttonHide.append(contentsOf: page.constantButton1of7)
//                        buttonHide.append(contentsOf: page.constantButton2of7)
//                        buttonShow.append(contentsOf: page.constantButton3of7)
//                        buttonHide.append(contentsOf: page.constantButton4of7)
//                        buttonHide.append(contentsOf: page.constantButton5of7)
//                        buttonHide.append(contentsOf: page.constantButton6of7)
//                        buttonHide.append(contentsOf: page.constantButton7of7)
//                    }
//                default:
//                    break
//                }
//            case 4:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 4, Difficulty 1
//                    ayaStartStack = [109]
//                    ayaEndStack = [109]
//                    if let page = viewController as? Page017ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of7)
//                        ayatHide.append(contentsOf: page.constantAya2of7)
//                        ayatHide.append(contentsOf: page.constantAya3of7)
//                        ayatShow.append(contentsOf: page.constantAya4of7)
//                        ayatHide.append(contentsOf: page.constantAya5of7)
//                        ayatHide.append(contentsOf: page.constantAya6of7)
//                        ayatHide.append(contentsOf: page.constantAya7of7)
//                        buttonHide.append(contentsOf: page.constantButton1of7)
//                        buttonHide.append(contentsOf: page.constantButton2of7)
//                        buttonHide.append(contentsOf: page.constantButton3of7)
//                        buttonShow.append(contentsOf: page.constantButton4of7)
//                        buttonHide.append(contentsOf: page.constantButton5of7)
//                        buttonHide.append(contentsOf: page.constantButton6of7)
//                        buttonHide.append(contentsOf: page.constantButton7of7)
//                    }
//                default:
//                    break
//                }
//            case 5:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 5, Difficulty 1
//                    ayaStartStack = [110]
//                    ayaEndStack = [110]
//                    if let page = viewController as? Page017ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of7)
//                        ayatHide.append(contentsOf: page.constantAya2of7)
//                        ayatHide.append(contentsOf: page.constantAya3of7)
//                        ayatHide.append(contentsOf: page.constantAya4of7)
//                        ayatShow.append(contentsOf: page.constantAya5of7)
//                        ayatHide.append(contentsOf: page.constantAya6of7)
//                        ayatHide.append(contentsOf: page.constantAya7of7)
//                        buttonHide.append(contentsOf: page.constantButton1of7)
//                        buttonHide.append(contentsOf: page.constantButton2of7)
//                        buttonHide.append(contentsOf: page.constantButton3of7)
//                        buttonHide.append(contentsOf: page.constantButton4of7)
//                        buttonShow.append(contentsOf: page.constantButton5of7)
//                        buttonHide.append(contentsOf: page.constantButton6of7)
//                        buttonHide.append(contentsOf: page.constantButton7of7)
//                    }
//                default:
//                    break
//                }
//            case 6:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 6, Difficulty 1
//                    ayaStartStack = [111]
//                    ayaEndStack = [111]
//                    if let page = viewController as? Page017ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of7)
//                        ayatHide.append(contentsOf: page.constantAya2of7)
//                        ayatHide.append(contentsOf: page.constantAya3of7)
//                        ayatHide.append(contentsOf: page.constantAya4of7)
//                        ayatHide.append(contentsOf: page.constantAya5of7)
//                        ayatShow.append(contentsOf: page.constantAya6of7)
//                        ayatHide.append(contentsOf: page.constantAya7of7)
//                        buttonHide.append(contentsOf: page.constantButton1of7)
//                        buttonHide.append(contentsOf: page.constantButton2of7)
//                        buttonHide.append(contentsOf: page.constantButton3of7)
//                        buttonHide.append(contentsOf: page.constantButton4of7)
//                        buttonHide.append(contentsOf: page.constantButton5of7)
//                        buttonShow.append(contentsOf: page.constantButton6of7)
//                        buttonHide.append(contentsOf: page.constantButton7of7)
//                    }
//                default:
//                    break
//                }
//            case 7:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 7, Difficulty 1
//                    ayaStartStack = [112]
//                    ayaEndStack = [112]
//                    if let page = viewController as? Page017ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of7)
//                        ayatHide.append(contentsOf: page.constantAya2of7)
//                        ayatHide.append(contentsOf: page.constantAya3of7)
//                        ayatHide.append(contentsOf: page.constantAya4of7)
//                        ayatHide.append(contentsOf: page.constantAya5of7)
//                        ayatHide.append(contentsOf: page.constantAya6of7)
//                        ayatShow.append(contentsOf: page.constantAya7of7)
//                        buttonHide.append(contentsOf: page.constantButton1of7)
//                        buttonHide.append(contentsOf: page.constantButton2of7)
//                        buttonHide.append(contentsOf: page.constantButton3of7)
//                        buttonHide.append(contentsOf: page.constantButton4of7)
//                        buttonHide.append(contentsOf: page.constantButton5of7)
//                        buttonHide.append(contentsOf: page.constantButton6of7)
//                        buttonShow.append(contentsOf: page.constantButton7of7)
//                    }
//                default:
//                    break
//                }
//            default:
//                break
//            }
//        case 18:
//            // MARK: - Page 18
//            switch dayNumber {
//            case 1:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 1, Difficulty 1
//                    ayaStartStack = [113]
//                    ayaEndStack = [113]
//                    if let page = viewController as? Page018ViewController {
//                        ayatShow.append(contentsOf: page.constantAya1of7)
//                        ayatHide.append(contentsOf: page.constantAya2of7)
//                        ayatHide.append(contentsOf: page.constantAya3of7)
//                        ayatHide.append(contentsOf: page.constantAya4of7)
//                        ayatHide.append(contentsOf: page.constantAya5of7)
//                        ayatHide.append(contentsOf: page.constantAya6of7)
//                        ayatHide.append(contentsOf: page.constantAya7of7)
//                        buttonShow.append(contentsOf: page.constantButton1of7)
//                        buttonHide.append(contentsOf: page.constantButton2of7)
//                        buttonHide.append(contentsOf: page.constantButton3of7)
//                        buttonHide.append(contentsOf: page.constantButton4of7)
//                        buttonHide.append(contentsOf: page.constantButton5of7)
//                        buttonHide.append(contentsOf: page.constantButton6of7)
//                        buttonHide.append(contentsOf: page.constantButton7of7)
//                    }
//                default:
//                    break
//                }
//            case 2:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 2, Difficulty 1
//                    ayaStartStack = [114]
//                    ayaEndStack = [114]
//                    if let page = viewController as? Page018ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of7)
//                        ayatShow.append(contentsOf: page.constantAya2of7)
//                        ayatHide.append(contentsOf: page.constantAya3of7)
//                        ayatHide.append(contentsOf: page.constantAya4of7)
//                        ayatHide.append(contentsOf: page.constantAya5of7)
//                        ayatHide.append(contentsOf: page.constantAya6of7)
//                        ayatHide.append(contentsOf: page.constantAya7of7)
//                        buttonHide.append(contentsOf: page.constantButton1of7)
//                        buttonShow.append(contentsOf: page.constantButton2of7)
//                        buttonHide.append(contentsOf: page.constantButton3of7)
//                        buttonHide.append(contentsOf: page.constantButton4of7)
//                        buttonHide.append(contentsOf: page.constantButton5of7)
//                        buttonHide.append(contentsOf: page.constantButton6of7)
//                        buttonHide.append(contentsOf: page.constantButton7of7)
//                    }
//                default:
//                    break
//                }
//            case 3:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 3, Difficulty 1
//                    ayaStartStack = [115]
//                    ayaEndStack = [115]
//                    if let page = viewController as? Page018ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of7)
//                        ayatHide.append(contentsOf: page.constantAya2of7)
//                        ayatShow.append(contentsOf: page.constantAya3of7)
//                        ayatHide.append(contentsOf: page.constantAya4of7)
//                        ayatHide.append(contentsOf: page.constantAya5of7)
//                        ayatHide.append(contentsOf: page.constantAya6of7)
//                        ayatHide.append(contentsOf: page.constantAya7of7)
//                        buttonHide.append(contentsOf: page.constantButton1of7)
//                        buttonHide.append(contentsOf: page.constantButton2of7)
//                        buttonShow.append(contentsOf: page.constantButton3of7)
//                        buttonHide.append(contentsOf: page.constantButton4of7)
//                        buttonHide.append(contentsOf: page.constantButton5of7)
//                        buttonHide.append(contentsOf: page.constantButton6of7)
//                        buttonHide.append(contentsOf: page.constantButton7of7)
//                    }
//                default:
//                    break
//                }
//            case 4:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 4, Difficulty 1
//                    ayaStartStack = [116]
//                    ayaEndStack = [116]
//                    if let page = viewController as? Page018ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of7)
//                        ayatHide.append(contentsOf: page.constantAya2of7)
//                        ayatHide.append(contentsOf: page.constantAya3of7)
//                        ayatShow.append(contentsOf: page.constantAya4of7)
//                        ayatHide.append(contentsOf: page.constantAya5of7)
//                        ayatHide.append(contentsOf: page.constantAya6of7)
//                        ayatHide.append(contentsOf: page.constantAya7of7)
//                        buttonHide.append(contentsOf: page.constantButton1of7)
//                        buttonHide.append(contentsOf: page.constantButton2of7)
//                        buttonHide.append(contentsOf: page.constantButton3of7)
//                        buttonShow.append(contentsOf: page.constantButton4of7)
//                        buttonHide.append(contentsOf: page.constantButton5of7)
//                        buttonHide.append(contentsOf: page.constantButton6of7)
//                        buttonHide.append(contentsOf: page.constantButton7of7)                    }
//                default:
//                    break
//                }
//            case 5:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 5, Difficulty 1
//                    ayaStartStack = [117]
//                    ayaEndStack = [117]
//                    if let page = viewController as? Page018ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of7)
//                        ayatHide.append(contentsOf: page.constantAya2of7)
//                        ayatHide.append(contentsOf: page.constantAya3of7)
//                        ayatHide.append(contentsOf: page.constantAya4of7)
//                        ayatShow.append(contentsOf: page.constantAya5of7)
//                        ayatHide.append(contentsOf: page.constantAya6of7)
//                        ayatHide.append(contentsOf: page.constantAya7of7)
//                        buttonHide.append(contentsOf: page.constantButton1of7)
//                        buttonHide.append(contentsOf: page.constantButton2of7)
//                        buttonHide.append(contentsOf: page.constantButton3of7)
//                        buttonHide.append(contentsOf: page.constantButton4of7)
//                        buttonShow.append(contentsOf: page.constantButton5of7)
//                        buttonHide.append(contentsOf: page.constantButton6of7)
//                        buttonHide.append(contentsOf: page.constantButton7of7)
//                    }
//                default:
//                    break
//                }
//            case 6:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 6, Difficulty 1
//                    ayaStartStack = [118]
//                    ayaEndStack = [118]
//                    if let page = viewController as? Page018ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of7)
//                        ayatHide.append(contentsOf: page.constantAya2of7)
//                        ayatHide.append(contentsOf: page.constantAya3of7)
//                        ayatHide.append(contentsOf: page.constantAya4of7)
//                        ayatHide.append(contentsOf: page.constantAya5of7)
//                        ayatShow.append(contentsOf: page.constantAya6of7)
//                        ayatHide.append(contentsOf: page.constantAya7of7)
//                        buttonHide.append(contentsOf: page.constantButton1of7)
//                        buttonHide.append(contentsOf: page.constantButton2of7)
//                        buttonHide.append(contentsOf: page.constantButton3of7)
//                        buttonHide.append(contentsOf: page.constantButton4of7)
//                        buttonHide.append(contentsOf: page.constantButton5of7)
//                        buttonShow.append(contentsOf: page.constantButton6of7)
//                        buttonHide.append(contentsOf: page.constantButton7of7)
//                    }
//                default:
//                    break
//                }
//            case 7:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 7, Difficulty 1
//                    ayaStartStack = [119]
//                    ayaEndStack = [119]
//                    if let page = viewController as? Page018ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of7)
//                        ayatHide.append(contentsOf: page.constantAya2of7)
//                        ayatHide.append(contentsOf: page.constantAya3of7)
//                        ayatHide.append(contentsOf: page.constantAya4of7)
//                        ayatHide.append(contentsOf: page.constantAya5of7)
//                        ayatHide.append(contentsOf: page.constantAya6of7)
//                        ayatShow.append(contentsOf: page.constantAya7of7)
//                        buttonHide.append(contentsOf: page.constantButton1of7)
//                        buttonHide.append(contentsOf: page.constantButton2of7)
//                        buttonHide.append(contentsOf: page.constantButton3of7)
//                        buttonHide.append(contentsOf: page.constantButton4of7)
//                        buttonHide.append(contentsOf: page.constantButton5of7)
//                        buttonHide.append(contentsOf: page.constantButton6of7)
//                        buttonShow.append(contentsOf: page.constantButton7of7)
//                    }
//                default:
//                    break
//                }
//            default:
//                break
//            }
//        case 19:
//            // MARK: - Page 19
//            switch dayNumber {
//            case 1:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 1, Difficulty 1
//                    ayaStartStack = [120]
//                    ayaEndStack = [120]
//                    if let page = viewController as? Page019ViewController {
//                        ayatShow.append(contentsOf: page.constantAya1of7)
//                        ayatHide.append(contentsOf: page.constantAya2of7)
//                        ayatHide.append(contentsOf: page.constantAya3of7)
//                        ayatHide.append(contentsOf: page.constantAya4of7)
//                        ayatHide.append(contentsOf: page.constantAya5of7)
//                        ayatHide.append(contentsOf: page.constantAya6of7)
//                        ayatHide.append(contentsOf: page.constantAya7of7)
//                        buttonShow.append(contentsOf: page.constantButton1of7)
//                        buttonHide.append(contentsOf: page.constantButton2of7)
//                        buttonHide.append(contentsOf: page.constantButton3of7)
//                        buttonHide.append(contentsOf: page.constantButton4of7)
//                        buttonHide.append(contentsOf: page.constantButton5of7)
//                        buttonHide.append(contentsOf: page.constantButton6of7)
//                        buttonHide.append(contentsOf: page.constantButton7of7)
//                    }
//                default:
//                    break
//                }
//            case 2:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 2, Difficulty 1
//                    ayaStartStack = [121]
//                    ayaEndStack = [121]
//                    if let page = viewController as? Page019ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of7)
//                        ayatShow.append(contentsOf: page.constantAya2of7)
//                        ayatHide.append(contentsOf: page.constantAya3of7)
//                        ayatHide.append(contentsOf: page.constantAya4of7)
//                        ayatHide.append(contentsOf: page.constantAya5of7)
//                        ayatHide.append(contentsOf: page.constantAya6of7)
//                        ayatHide.append(contentsOf: page.constantAya7of7)
//                        buttonHide.append(contentsOf: page.constantButton1of7)
//                        buttonShow.append(contentsOf: page.constantButton2of7)
//                        buttonHide.append(contentsOf: page.constantButton3of7)
//                        buttonHide.append(contentsOf: page.constantButton4of7)
//                        buttonHide.append(contentsOf: page.constantButton5of7)
//                        buttonHide.append(contentsOf: page.constantButton6of7)
//                        buttonHide.append(contentsOf: page.constantButton7of7)
//                    }
//                default:
//                    break
//                }
//            case 3:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 3, Difficulty 1
//                    ayaStartStack = [122]
//                    ayaEndStack = [122]
//                    if let page = viewController as? Page019ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of7)
//                        ayatHide.append(contentsOf: page.constantAya2of7)
//                        ayatShow.append(contentsOf: page.constantAya3of7)
//                        ayatHide.append(contentsOf: page.constantAya4of7)
//                        ayatHide.append(contentsOf: page.constantAya5of7)
//                        ayatHide.append(contentsOf: page.constantAya6of7)
//                        ayatHide.append(contentsOf: page.constantAya7of7)
//                        buttonHide.append(contentsOf: page.constantButton1of7)
//                        buttonHide.append(contentsOf: page.constantButton2of7)
//                        buttonShow.append(contentsOf: page.constantButton3of7)
//                        buttonHide.append(contentsOf: page.constantButton4of7)
//                        buttonHide.append(contentsOf: page.constantButton5of7)
//                        buttonHide.append(contentsOf: page.constantButton6of7)
//                        buttonHide.append(contentsOf: page.constantButton7of7)
//                    }
//                default:
//                    break
//                }
//            case 4:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 4, Difficulty 1
//                    ayaStartStack = [123]
//                    ayaEndStack = [123]
//                    if let page = viewController as? Page019ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of7)
//                        ayatHide.append(contentsOf: page.constantAya2of7)
//                        ayatHide.append(contentsOf: page.constantAya3of7)
//                        ayatShow.append(contentsOf: page.constantAya4of7)
//                        ayatHide.append(contentsOf: page.constantAya5of7)
//                        ayatHide.append(contentsOf: page.constantAya6of7)
//                        ayatHide.append(contentsOf: page.constantAya7of7)
//                        buttonHide.append(contentsOf: page.constantButton1of7)
//                        buttonHide.append(contentsOf: page.constantButton2of7)
//                        buttonHide.append(contentsOf: page.constantButton3of7)
//                        buttonShow.append(contentsOf: page.constantButton4of7)
//                        buttonHide.append(contentsOf: page.constantButton5of7)
//                        buttonHide.append(contentsOf: page.constantButton6of7)
//                        buttonHide.append(contentsOf: page.constantButton7of7)                    }
//                default:
//                    break
//                }
//            case 5:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 5, Difficulty 1
//                    ayaStartStack = [124]
//                    ayaEndStack = [124]
//                    if let page = viewController as? Page019ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of7)
//                        ayatHide.append(contentsOf: page.constantAya2of7)
//                        ayatHide.append(contentsOf: page.constantAya3of7)
//                        ayatHide.append(contentsOf: page.constantAya4of7)
//                        ayatShow.append(contentsOf: page.constantAya5of7)
//                        ayatHide.append(contentsOf: page.constantAya6of7)
//                        ayatHide.append(contentsOf: page.constantAya7of7)
//                        buttonHide.append(contentsOf: page.constantButton1of7)
//                        buttonHide.append(contentsOf: page.constantButton2of7)
//                        buttonHide.append(contentsOf: page.constantButton3of7)
//                        buttonHide.append(contentsOf: page.constantButton4of7)
//                        buttonShow.append(contentsOf: page.constantButton5of7)
//                        buttonHide.append(contentsOf: page.constantButton6of7)
//                        buttonHide.append(contentsOf: page.constantButton7of7)
//                    }
//                default:
//                    break
//                }
//            case 6:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 6, Difficulty 1
//                    ayaStartStack = [125]
//                    ayaEndStack = [125]
//                    if let page = viewController as? Page019ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of7)
//                        ayatHide.append(contentsOf: page.constantAya2of7)
//                        ayatHide.append(contentsOf: page.constantAya3of7)
//                        ayatHide.append(contentsOf: page.constantAya4of7)
//                        ayatHide.append(contentsOf: page.constantAya5of7)
//                        ayatShow.append(contentsOf: page.constantAya6of7)
//                        ayatHide.append(contentsOf: page.constantAya7of7)
//                        buttonHide.append(contentsOf: page.constantButton1of7)
//                        buttonHide.append(contentsOf: page.constantButton2of7)
//                        buttonHide.append(contentsOf: page.constantButton3of7)
//                        buttonHide.append(contentsOf: page.constantButton4of7)
//                        buttonHide.append(contentsOf: page.constantButton5of7)
//                        buttonShow.append(contentsOf: page.constantButton6of7)
//                        buttonHide.append(contentsOf: page.constantButton7of7)
//                    }
//                default:
//                    break
//                }
//            case 7:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 7, Difficulty 1
//                    ayaStartStack = [126]
//                    ayaEndStack = [126]
//                    if let page = viewController as? Page019ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of7)
//                        ayatHide.append(contentsOf: page.constantAya2of7)
//                        ayatHide.append(contentsOf: page.constantAya3of7)
//                        ayatHide.append(contentsOf: page.constantAya4of7)
//                        ayatHide.append(contentsOf: page.constantAya5of7)
//                        ayatHide.append(contentsOf: page.constantAya6of7)
//                        ayatShow.append(contentsOf: page.constantAya7of7)
//                        buttonHide.append(contentsOf: page.constantButton1of7)
//                        buttonHide.append(contentsOf: page.constantButton2of7)
//                        buttonHide.append(contentsOf: page.constantButton3of7)
//                        buttonHide.append(contentsOf: page.constantButton4of7)
//                        buttonHide.append(contentsOf: page.constantButton5of7)
//                        buttonHide.append(contentsOf: page.constantButton6of7)
//                        buttonShow.append(contentsOf: page.constantButton7of7)
//                    }
//                default:
//                    break
//                }
//            default:
//                break
//            }
//        case 20:
//            // MARK: - Page 20
//            switch dayNumber {
//            case 1:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 1, Difficulty 1
//                    ayaStartStack = [127]
//                    ayaEndStack = [127]
//                    if let page = viewController as? Page020ViewController {
//                        ayatShow.append(contentsOf: page.constantAya1of8)
//                        ayatHide.append(contentsOf: page.constantAya2of8)
//                        ayatHide.append(contentsOf: page.constantAya3of8)
//                        ayatHide.append(contentsOf: page.constantAya4of8)
//                        ayatHide.append(contentsOf: page.constantAya5of8)
//                        ayatHide.append(contentsOf: page.constantAya6of8)
//                        ayatHide.append(contentsOf: page.constantAya7of8)
//                        ayatHide.append(contentsOf: page.constantAya8of8)
//                        buttonShow.append(contentsOf: page.constantButton1of8)
//                        buttonHide.append(contentsOf: page.constantButton2of8)
//                        buttonHide.append(contentsOf: page.constantButton3of8)
//                        buttonHide.append(contentsOf: page.constantButton4of8)
//                        buttonHide.append(contentsOf: page.constantButton5of8)
//                        buttonHide.append(contentsOf: page.constantButton6of8)
//                        buttonHide.append(contentsOf: page.constantButton7of8)
//                        buttonHide.append(contentsOf: page.constantButton8of8)
//                    }
//                default:
//                    break
//                }
//            case 2:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 2, Difficulty 1
//                    ayaStartStack = [128]
//                    ayaEndStack = [128]
//                    if let page = viewController as? Page020ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of8)
//                        ayatShow.append(contentsOf: page.constantAya2of8)
//                        ayatHide.append(contentsOf: page.constantAya3of8)
//                        ayatHide.append(contentsOf: page.constantAya4of8)
//                        ayatHide.append(contentsOf: page.constantAya5of8)
//                        ayatHide.append(contentsOf: page.constantAya6of8)
//                        ayatHide.append(contentsOf: page.constantAya7of8)
//                        ayatHide.append(contentsOf: page.constantAya8of8)
//                        buttonHide.append(contentsOf: page.constantButton1of8)
//                        buttonShow.append(contentsOf: page.constantButton2of8)
//                        buttonHide.append(contentsOf: page.constantButton3of8)
//                        buttonHide.append(contentsOf: page.constantButton4of8)
//                        buttonHide.append(contentsOf: page.constantButton5of8)
//                        buttonHide.append(contentsOf: page.constantButton6of8)
//                        buttonHide.append(contentsOf: page.constantButton7of8)
//                        buttonHide.append(contentsOf: page.constantButton8of8)
//                    }
//                default:
//                    break
//                }
//            case 3:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 3, Difficulty 1
//                    ayaStartStack = [129]
//                    ayaEndStack = [129]
//                    if let page = viewController as? Page020ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of8)
//                        ayatHide.append(contentsOf: page.constantAya2of8)
//                        ayatShow.append(contentsOf: page.constantAya3of8)
//                        ayatHide.append(contentsOf: page.constantAya4of8)
//                        ayatHide.append(contentsOf: page.constantAya5of8)
//                        ayatHide.append(contentsOf: page.constantAya6of8)
//                        ayatHide.append(contentsOf: page.constantAya7of8)
//                        ayatHide.append(contentsOf: page.constantAya8of8)
//                        buttonHide.append(contentsOf: page.constantButton1of8)
//                        buttonHide.append(contentsOf: page.constantButton2of8)
//                        buttonShow.append(contentsOf: page.constantButton3of8)
//                        buttonHide.append(contentsOf: page.constantButton4of8)
//                        buttonHide.append(contentsOf: page.constantButton5of8)
//                        buttonHide.append(contentsOf: page.constantButton6of8)
//                        buttonHide.append(contentsOf: page.constantButton7of8)
//                        buttonHide.append(contentsOf: page.constantButton8of8)
//                    }
//                default:
//                    break
//                }
//            case 4:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 4, Difficulty 1
//                    ayaStartStack = [130]
//                    ayaEndStack = [130]
//                    if let page = viewController as? Page020ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of8)
//                        ayatHide.append(contentsOf: page.constantAya2of8)
//                        ayatHide.append(contentsOf: page.constantAya3of8)
//                        ayatShow.append(contentsOf: page.constantAya4of8)
//                        ayatHide.append(contentsOf: page.constantAya5of8)
//                        ayatHide.append(contentsOf: page.constantAya6of8)
//                        ayatHide.append(contentsOf: page.constantAya7of8)
//                        ayatHide.append(contentsOf: page.constantAya8of8)
//                        buttonHide.append(contentsOf: page.constantButton1of8)
//                        buttonHide.append(contentsOf: page.constantButton2of8)
//                        buttonHide.append(contentsOf: page.constantButton3of8)
//                        buttonShow.append(contentsOf: page.constantButton4of8)
//                        buttonHide.append(contentsOf: page.constantButton5of8)
//                        buttonHide.append(contentsOf: page.constantButton6of8)
//                        buttonHide.append(contentsOf: page.constantButton7of8)
//                        buttonHide.append(contentsOf: page.constantButton8of8)
//                    }
//                default:
//                    break
//                }
//            case 5:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 5, Difficulty 1
//                    ayaStartStack = [131]
//                    ayaEndStack = [131]
//                    if let page = viewController as? Page020ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of8)
//                        ayatHide.append(contentsOf: page.constantAya2of8)
//                        ayatHide.append(contentsOf: page.constantAya3of8)
//                        ayatHide.append(contentsOf: page.constantAya4of8)
//                        ayatShow.append(contentsOf: page.constantAya5of8)
//                        ayatHide.append(contentsOf: page.constantAya6of8)
//                        ayatHide.append(contentsOf: page.constantAya7of8)
//                        ayatHide.append(contentsOf: page.constantAya8of8)
//                        buttonHide.append(contentsOf: page.constantButton1of8)
//                        buttonHide.append(contentsOf: page.constantButton2of8)
//                        buttonHide.append(contentsOf: page.constantButton3of8)
//                        buttonHide.append(contentsOf: page.constantButton4of8)
//                        buttonShow.append(contentsOf: page.constantButton5of8)
//                        buttonHide.append(contentsOf: page.constantButton6of8)
//                        buttonHide.append(contentsOf: page.constantButton7of8)
//                        buttonHide.append(contentsOf: page.constantButton8of8)
//                    }
//                default:
//                    break
//                }
//            case 6:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 6, Difficulty 1
//                    ayaStartStack = [132]
//                    ayaEndStack = [132]
//                    if let page = viewController as? Page020ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of8)
//                        ayatHide.append(contentsOf: page.constantAya2of8)
//                        ayatHide.append(contentsOf: page.constantAya3of8)
//                        ayatHide.append(contentsOf: page.constantAya4of8)
//                        ayatHide.append(contentsOf: page.constantAya5of8)
//                        ayatShow.append(contentsOf: page.constantAya6of8)
//                        ayatHide.append(contentsOf: page.constantAya7of8)
//                        ayatHide.append(contentsOf: page.constantAya8of8)
//                        buttonHide.append(contentsOf: page.constantButton1of8)
//                        buttonHide.append(contentsOf: page.constantButton2of8)
//                        buttonHide.append(contentsOf: page.constantButton3of8)
//                        buttonHide.append(contentsOf: page.constantButton4of8)
//                        buttonHide.append(contentsOf: page.constantButton5of8)
//                        buttonShow.append(contentsOf: page.constantButton6of8)
//                        buttonHide.append(contentsOf: page.constantButton7of8)
//                        buttonHide.append(contentsOf: page.constantButton8of8)
//                    }
//                default:
//                    break
//                }
//            case 7:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 7, Difficulty 1
//                    ayaStartStack = [133]
//                    ayaEndStack = [133]
//                    if let page = viewController as? Page020ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of8)
//                        ayatHide.append(contentsOf: page.constantAya2of8)
//                        ayatHide.append(contentsOf: page.constantAya3of8)
//                        ayatHide.append(contentsOf: page.constantAya4of8)
//                        ayatHide.append(contentsOf: page.constantAya5of8)
//                        ayatHide.append(contentsOf: page.constantAya6of8)
//                        ayatShow.append(contentsOf: page.constantAya7of8)
//                        ayatHide.append(contentsOf: page.constantAya8of8)
//                        buttonHide.append(contentsOf: page.constantButton1of8)
//                        buttonHide.append(contentsOf: page.constantButton2of8)
//                        buttonHide.append(contentsOf: page.constantButton3of8)
//                        buttonHide.append(contentsOf: page.constantButton4of8)
//                        buttonHide.append(contentsOf: page.constantButton5of8)
//                        buttonHide.append(contentsOf: page.constantButton6of8)
//                        buttonShow.append(contentsOf: page.constantButton7of8)
//                        buttonHide.append(contentsOf: page.constantButton8of8)
//                    }
//                default:
//                    break
//                }
//            case 8:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 8, Difficulty 1
//                    ayaStartStack = [134]
//                    ayaEndStack = [134]
//                    if let page = viewController as? Page020ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of8)
//                        ayatHide.append(contentsOf: page.constantAya2of8)
//                        ayatHide.append(contentsOf: page.constantAya3of8)
//                        ayatHide.append(contentsOf: page.constantAya4of8)
//                        ayatHide.append(contentsOf: page.constantAya5of8)
//                        ayatHide.append(contentsOf: page.constantAya6of8)
//                        ayatHide.append(contentsOf: page.constantAya7of8)
//                        ayatShow.append(contentsOf: page.constantAya8of8)
//                        buttonHide.append(contentsOf: page.constantButton1of8)
//                        buttonHide.append(contentsOf: page.constantButton2of8)
//                        buttonHide.append(contentsOf: page.constantButton3of8)
//                        buttonHide.append(contentsOf: page.constantButton4of8)
//                        buttonHide.append(contentsOf: page.constantButton5of8)
//                        buttonHide.append(contentsOf: page.constantButton6of8)
//                        buttonHide.append(contentsOf: page.constantButton7of8)
//                        buttonShow.append(contentsOf: page.constantButton8of8)
//                    }
//                default:
//                    break
//                }
//            default:
//                break
//            }
//        case 21:
//            // MARK: - Page 21
//            switch dayNumber {
//            case 1:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 1, Difficulty 1
//                    ayaStartStack = [135]
//                    ayaEndStack = [135]
//                    if let page = viewController as? Page021ViewController {
//                        ayatShow.append(contentsOf: page.constantAya1of7)
//                        ayatHide.append(contentsOf: page.constantAya2of7)
//                        ayatHide.append(contentsOf: page.constantAya3of7)
//                        ayatHide.append(contentsOf: page.constantAya4of7)
//                        ayatHide.append(contentsOf: page.constantAya5of7)
//                        ayatHide.append(contentsOf: page.constantAya6of7)
//                        ayatHide.append(contentsOf: page.constantAya7of7)
//                        buttonShow.append(contentsOf: page.constantButton1of7)
//                        buttonHide.append(contentsOf: page.constantButton2of7)
//                        buttonHide.append(contentsOf: page.constantButton3of7)
//                        buttonHide.append(contentsOf: page.constantButton4of7)
//                        buttonHide.append(contentsOf: page.constantButton5of7)
//                        buttonHide.append(contentsOf: page.constantButton6of7)
//                        buttonHide.append(contentsOf: page.constantButton7of7)
//                    }
//                default:
//                    break
//                }
//            case 2:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 2, Difficulty 1
//                    ayaStartStack = [136]
//                    ayaEndStack = [136]
//                    if let page = viewController as? Page021ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of7)
//                        ayatShow.append(contentsOf: page.constantAya2of7)
//                        ayatHide.append(contentsOf: page.constantAya3of7)
//                        ayatHide.append(contentsOf: page.constantAya4of7)
//                        ayatHide.append(contentsOf: page.constantAya5of7)
//                        ayatHide.append(contentsOf: page.constantAya6of7)
//                        ayatHide.append(contentsOf: page.constantAya7of7)
//                        buttonHide.append(contentsOf: page.constantButton1of7)
//                        buttonShow.append(contentsOf: page.constantButton2of7)
//                        buttonHide.append(contentsOf: page.constantButton3of7)
//                        buttonHide.append(contentsOf: page.constantButton4of7)
//                        buttonHide.append(contentsOf: page.constantButton5of7)
//                        buttonHide.append(contentsOf: page.constantButton6of7)
//                        buttonHide.append(contentsOf: page.constantButton7of7)
//                    }
//                default:
//                    break
//                }
//            case 3:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 3, Difficulty 1
//                    ayaStartStack = [137]
//                    ayaEndStack = [137]
//                    if let page = viewController as? Page021ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of7)
//                        ayatHide.append(contentsOf: page.constantAya2of7)
//                        ayatShow.append(contentsOf: page.constantAya3of7)
//                        ayatHide.append(contentsOf: page.constantAya4of7)
//                        ayatHide.append(contentsOf: page.constantAya5of7)
//                        ayatHide.append(contentsOf: page.constantAya6of7)
//                        ayatHide.append(contentsOf: page.constantAya7of7)
//                        buttonHide.append(contentsOf: page.constantButton1of7)
//                        buttonHide.append(contentsOf: page.constantButton2of7)
//                        buttonShow.append(contentsOf: page.constantButton3of7)
//                        buttonHide.append(contentsOf: page.constantButton4of7)
//                        buttonHide.append(contentsOf: page.constantButton5of7)
//                        buttonHide.append(contentsOf: page.constantButton6of7)
//                        buttonHide.append(contentsOf: page.constantButton7of7)
//                    }
//                default:
//                    break
//                }
//            case 4:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 4, Difficulty 1
//                    ayaStartStack = [138]
//                    ayaEndStack = [138]
//                    if let page = viewController as? Page021ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of7)
//                        ayatHide.append(contentsOf: page.constantAya2of7)
//                        ayatHide.append(contentsOf: page.constantAya3of7)
//                        ayatShow.append(contentsOf: page.constantAya4of7)
//                        ayatHide.append(contentsOf: page.constantAya5of7)
//                        ayatHide.append(contentsOf: page.constantAya6of7)
//                        ayatHide.append(contentsOf: page.constantAya7of7)
//                        buttonHide.append(contentsOf: page.constantButton1of7)
//                        buttonHide.append(contentsOf: page.constantButton2of7)
//                        buttonHide.append(contentsOf: page.constantButton3of7)
//                        buttonShow.append(contentsOf: page.constantButton4of7)
//                        buttonHide.append(contentsOf: page.constantButton5of7)
//                        buttonHide.append(contentsOf: page.constantButton6of7)
//                        buttonHide.append(contentsOf: page.constantButton7of7)                    }
//                default:
//                    break
//                }
//            case 5:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 5, Difficulty 1
//                    ayaStartStack = [139]
//                    ayaEndStack = [139]
//                    if let page = viewController as? Page021ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of7)
//                        ayatHide.append(contentsOf: page.constantAya2of7)
//                        ayatHide.append(contentsOf: page.constantAya3of7)
//                        ayatHide.append(contentsOf: page.constantAya4of7)
//                        ayatShow.append(contentsOf: page.constantAya5of7)
//                        ayatHide.append(contentsOf: page.constantAya6of7)
//                        ayatHide.append(contentsOf: page.constantAya7of7)
//                        buttonHide.append(contentsOf: page.constantButton1of7)
//                        buttonHide.append(contentsOf: page.constantButton2of7)
//                        buttonHide.append(contentsOf: page.constantButton3of7)
//                        buttonHide.append(contentsOf: page.constantButton4of7)
//                        buttonShow.append(contentsOf: page.constantButton5of7)
//                        buttonHide.append(contentsOf: page.constantButton6of7)
//                        buttonHide.append(contentsOf: page.constantButton7of7)
//                    }
//                default:
//                    break
//                }
//            case 6:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 6, Difficulty 1
//                    ayaStartStack = [140]
//                    ayaEndStack = [140]
//                    if let page = viewController as? Page021ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of7)
//                        ayatHide.append(contentsOf: page.constantAya2of7)
//                        ayatHide.append(contentsOf: page.constantAya3of7)
//                        ayatHide.append(contentsOf: page.constantAya4of7)
//                        ayatHide.append(contentsOf: page.constantAya5of7)
//                        ayatShow.append(contentsOf: page.constantAya6of7)
//                        ayatHide.append(contentsOf: page.constantAya7of7)
//                        buttonHide.append(contentsOf: page.constantButton1of7)
//                        buttonHide.append(contentsOf: page.constantButton2of7)
//                        buttonHide.append(contentsOf: page.constantButton3of7)
//                        buttonHide.append(contentsOf: page.constantButton4of7)
//                        buttonHide.append(contentsOf: page.constantButton5of7)
//                        buttonShow.append(contentsOf: page.constantButton6of7)
//                        buttonHide.append(contentsOf: page.constantButton7of7)
//                    }
//                default:
//                    break
//                }
//            case 7:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 7, Difficulty 1
//                    ayaStartStack = [141]
//                    ayaEndStack = [141]
//                    if let page = viewController as? Page021ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of7)
//                        ayatHide.append(contentsOf: page.constantAya2of7)
//                        ayatHide.append(contentsOf: page.constantAya3of7)
//                        ayatHide.append(contentsOf: page.constantAya4of7)
//                        ayatHide.append(contentsOf: page.constantAya5of7)
//                        ayatHide.append(contentsOf: page.constantAya6of7)
//                        ayatShow.append(contentsOf: page.constantAya7of7)
//                        buttonHide.append(contentsOf: page.constantButton1of7)
//                        buttonHide.append(contentsOf: page.constantButton2of7)
//                        buttonHide.append(contentsOf: page.constantButton3of7)
//                        buttonHide.append(contentsOf: page.constantButton4of7)
//                        buttonHide.append(contentsOf: page.constantButton5of7)
//                        buttonHide.append(contentsOf: page.constantButton6of7)
//                        buttonShow.append(contentsOf: page.constantButton7of7)
//                    }
//                default:
//                    break
//                }
//            default:
//                break
//            }
//        case 22:
//            // MARK: - Page 22
//            switch dayNumber {
//            case 1:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 1, Difficulty 1
//                    ayaStartStack = [142]
//                    ayaEndStack = [142]
//                    if let page = viewController as? Page022ViewController {
//                        ayatShow.append(contentsOf: page.constantAya1of4)
//                        ayatHide.append(contentsOf: page.constantAya2of4)
//                        ayatHide.append(contentsOf: page.constantAya3of4)
//                        ayatHide.append(contentsOf: page.constantAya4of4)
//                        buttonShow.append(contentsOf: page.constantButton1of4)
//                        buttonHide.append(contentsOf: page.constantButton2of4)
//                        buttonHide.append(contentsOf: page.constantButton3of4)
//                        buttonHide.append(contentsOf: page.constantButton4of4)
//                    }
//                default:
//                    break
//                }
//            case 2:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 2, Difficulty 1
//                    ayaStartStack = [143]
//                    ayaEndStack = [143]
//                    if let page = viewController as? Page022ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of4)
//                        ayatShow.append(contentsOf: page.constantAya2of4)
//                        ayatHide.append(contentsOf: page.constantAya3of4)
//                        ayatHide.append(contentsOf: page.constantAya4of4)
//                        buttonHide.append(contentsOf: page.constantButton1of4)
//                        buttonShow.append(contentsOf: page.constantButton2of4)
//                        buttonHide.append(contentsOf: page.constantButton3of4)
//                        buttonHide.append(contentsOf: page.constantButton4of4)
//                    }
//                default:
//                    break
//                }
//            case 3:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 3, Difficulty 1
//                    ayaStartStack = [144]
//                    ayaEndStack = [144]
//                    if let page = viewController as? Page022ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of4)
//                        ayatHide.append(contentsOf: page.constantAya2of4)
//                        ayatShow.append(contentsOf: page.constantAya3of4)
//                        ayatHide.append(contentsOf: page.constantAya4of4)
//                        buttonHide.append(contentsOf: page.constantButton1of4)
//                        buttonHide.append(contentsOf: page.constantButton2of4)
//                        buttonShow.append(contentsOf: page.constantButton3of4)
//                        buttonHide.append(contentsOf: page.constantButton4of4)
//                    }
//                default:
//                    break
//                }
//            case 4:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 4, Difficulty 1
//                    ayaStartStack = [145]
//                    ayaEndStack = [145]
//                    if let page = viewController as? Page022ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of4)
//                        ayatHide.append(contentsOf: page.constantAya2of4)
//                        ayatHide.append(contentsOf: page.constantAya3of4)
//                        ayatShow.append(contentsOf: page.constantAya4of4)
//                        buttonHide.append(contentsOf: page.constantButton1of4)
//                        buttonHide.append(contentsOf: page.constantButton2of4)
//                        buttonHide.append(contentsOf: page.constantButton3of4)
//                        buttonShow.append(contentsOf: page.constantButton4of4)
//                    }
//                default:
//                    break
//                }
//            default:
//                break
//            }
//        case 23:
//            // MARK: - Page 23
//            switch dayNumber {
//            case 1:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 1, Difficulty 1
//                    ayaStartStack = [146]
//                    ayaEndStack = [146]
//                    if let page = viewController as? Page023ViewController {
//                        ayatShow.append(contentsOf: page.constantAya1of8)
//                        ayatHide.append(contentsOf: page.constantAya2of8)
//                        ayatHide.append(contentsOf: page.constantAya3of8)
//                        ayatHide.append(contentsOf: page.constantAya4of8)
//                        ayatHide.append(contentsOf: page.constantAya5of8)
//                        ayatHide.append(contentsOf: page.constantAya6of8)
//                        ayatHide.append(contentsOf: page.constantAya7of8)
//                        ayatHide.append(contentsOf: page.constantAya8of8)
//                        buttonShow.append(contentsOf: page.constantButton1of8)
//                        buttonHide.append(contentsOf: page.constantButton2of8)
//                        buttonHide.append(contentsOf: page.constantButton3of8)
//                        buttonHide.append(contentsOf: page.constantButton4of8)
//                        buttonHide.append(contentsOf: page.constantButton5of8)
//                        buttonHide.append(contentsOf: page.constantButton6of8)
//                        buttonHide.append(contentsOf: page.constantButton7of8)
//                        buttonHide.append(contentsOf: page.constantButton8of8)
//                    }
//                default:
//                    break
//                }
//            case 2:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 2, Difficulty 1
//                    ayaStartStack = [147]
//                    ayaEndStack = [147]
//                    if let page = viewController as? Page023ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of8)
//                        ayatShow.append(contentsOf: page.constantAya2of8)
//                        ayatHide.append(contentsOf: page.constantAya3of8)
//                        ayatHide.append(contentsOf: page.constantAya4of8)
//                        ayatHide.append(contentsOf: page.constantAya5of8)
//                        ayatHide.append(contentsOf: page.constantAya6of8)
//                        ayatHide.append(contentsOf: page.constantAya7of8)
//                        ayatHide.append(contentsOf: page.constantAya8of8)
//                        buttonHide.append(contentsOf: page.constantButton1of8)
//                        buttonShow.append(contentsOf: page.constantButton2of8)
//                        buttonHide.append(contentsOf: page.constantButton3of8)
//                        buttonHide.append(contentsOf: page.constantButton4of8)
//                        buttonHide.append(contentsOf: page.constantButton5of8)
//                        buttonHide.append(contentsOf: page.constantButton6of8)
//                        buttonHide.append(contentsOf: page.constantButton7of8)
//                        buttonHide.append(contentsOf: page.constantButton8of8)
//                    }
//                default:
//                    break
//                }
//            case 3:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 3, Difficulty 1
//                    ayaStartStack = [148]
//                    ayaEndStack = [148]
//                    if let page = viewController as? Page023ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of8)
//                        ayatHide.append(contentsOf: page.constantAya2of8)
//                        ayatShow.append(contentsOf: page.constantAya3of8)
//                        ayatHide.append(contentsOf: page.constantAya4of8)
//                        ayatHide.append(contentsOf: page.constantAya5of8)
//                        ayatHide.append(contentsOf: page.constantAya6of8)
//                        ayatHide.append(contentsOf: page.constantAya7of8)
//                        ayatHide.append(contentsOf: page.constantAya8of8)
//                        buttonHide.append(contentsOf: page.constantButton1of8)
//                        buttonHide.append(contentsOf: page.constantButton2of8)
//                        buttonShow.append(contentsOf: page.constantButton3of8)
//                        buttonHide.append(contentsOf: page.constantButton4of8)
//                        buttonHide.append(contentsOf: page.constantButton5of8)
//                        buttonHide.append(contentsOf: page.constantButton6of8)
//                        buttonHide.append(contentsOf: page.constantButton7of8)
//                        buttonHide.append(contentsOf: page.constantButton8of8)
//                    }
//                default:
//                    break
//                }
//            case 4:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 4, Difficulty 1
//                    ayaStartStack = [149]
//                    ayaEndStack = [149]
//                    if let page = viewController as? Page023ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of8)
//                        ayatHide.append(contentsOf: page.constantAya2of8)
//                        ayatHide.append(contentsOf: page.constantAya3of8)
//                        ayatShow.append(contentsOf: page.constantAya4of8)
//                        ayatHide.append(contentsOf: page.constantAya5of8)
//                        ayatHide.append(contentsOf: page.constantAya6of8)
//                        ayatHide.append(contentsOf: page.constantAya7of8)
//                        ayatHide.append(contentsOf: page.constantAya8of8)
//                        buttonHide.append(contentsOf: page.constantButton1of8)
//                        buttonHide.append(contentsOf: page.constantButton2of8)
//                        buttonHide.append(contentsOf: page.constantButton3of8)
//                        buttonShow.append(contentsOf: page.constantButton4of8)
//                        buttonHide.append(contentsOf: page.constantButton5of8)
//                        buttonHide.append(contentsOf: page.constantButton6of8)
//                        buttonHide.append(contentsOf: page.constantButton7of8)
//                        buttonHide.append(contentsOf: page.constantButton8of8)
//                    }
//                default:
//                    break
//                }
//            case 5:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 5, Difficulty 1
//                    ayaStartStack = [150]
//                    ayaEndStack = [150]
//                    if let page = viewController as? Page023ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of8)
//                        ayatHide.append(contentsOf: page.constantAya2of8)
//                        ayatHide.append(contentsOf: page.constantAya3of8)
//                        ayatHide.append(contentsOf: page.constantAya4of8)
//                        ayatShow.append(contentsOf: page.constantAya5of8)
//                        ayatHide.append(contentsOf: page.constantAya6of8)
//                        ayatHide.append(contentsOf: page.constantAya7of8)
//                        ayatHide.append(contentsOf: page.constantAya8of8)
//                        buttonHide.append(contentsOf: page.constantButton1of8)
//                        buttonHide.append(contentsOf: page.constantButton2of8)
//                        buttonHide.append(contentsOf: page.constantButton3of8)
//                        buttonHide.append(contentsOf: page.constantButton4of8)
//                        buttonShow.append(contentsOf: page.constantButton5of8)
//                        buttonHide.append(contentsOf: page.constantButton6of8)
//                        buttonHide.append(contentsOf: page.constantButton7of8)
//                        buttonHide.append(contentsOf: page.constantButton8of8)
//                    }
//                default:
//                    break
//                }
//            case 6:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 6, Difficulty 1
//                    ayaStartStack = [151]
//                    ayaEndStack = [151]
//                    if let page = viewController as? Page023ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of8)
//                        ayatHide.append(contentsOf: page.constantAya2of8)
//                        ayatHide.append(contentsOf: page.constantAya3of8)
//                        ayatHide.append(contentsOf: page.constantAya4of8)
//                        ayatHide.append(contentsOf: page.constantAya5of8)
//                        ayatShow.append(contentsOf: page.constantAya6of8)
//                        ayatHide.append(contentsOf: page.constantAya7of8)
//                        ayatHide.append(contentsOf: page.constantAya8of8)
//                        buttonHide.append(contentsOf: page.constantButton1of8)
//                        buttonHide.append(contentsOf: page.constantButton2of8)
//                        buttonHide.append(contentsOf: page.constantButton3of8)
//                        buttonHide.append(contentsOf: page.constantButton4of8)
//                        buttonHide.append(contentsOf: page.constantButton5of8)
//                        buttonShow.append(contentsOf: page.constantButton6of8)
//                        buttonHide.append(contentsOf: page.constantButton7of8)
//                        buttonHide.append(contentsOf: page.constantButton8of8)
//                    }
//                default:
//                    break
//                }
//            case 7:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 7, Difficulty 1
//                    ayaStartStack = [152]
//                    ayaEndStack = [152]
//                    if let page = viewController as? Page023ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of8)
//                        ayatHide.append(contentsOf: page.constantAya2of8)
//                        ayatHide.append(contentsOf: page.constantAya3of8)
//                        ayatHide.append(contentsOf: page.constantAya4of8)
//                        ayatHide.append(contentsOf: page.constantAya5of8)
//                        ayatHide.append(contentsOf: page.constantAya6of8)
//                        ayatShow.append(contentsOf: page.constantAya7of8)
//                        ayatHide.append(contentsOf: page.constantAya8of8)
//                        buttonHide.append(contentsOf: page.constantButton1of8)
//                        buttonHide.append(contentsOf: page.constantButton2of8)
//                        buttonHide.append(contentsOf: page.constantButton3of8)
//                        buttonHide.append(contentsOf: page.constantButton4of8)
//                        buttonHide.append(contentsOf: page.constantButton5of8)
//                        buttonHide.append(contentsOf: page.constantButton6of8)
//                        buttonShow.append(contentsOf: page.constantButton7of8)
//                        buttonHide.append(contentsOf: page.constantButton8of8)
//                    }
//                default:
//                    break
//                }
//            case 8:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 8, Difficulty 1
//                    ayaStartStack = [153]
//                    ayaEndStack = [153]
//                    if let page = viewController as? Page023ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of8)
//                        ayatHide.append(contentsOf: page.constantAya2of8)
//                        ayatHide.append(contentsOf: page.constantAya3of8)
//                        ayatHide.append(contentsOf: page.constantAya4of8)
//                        ayatHide.append(contentsOf: page.constantAya5of8)
//                        ayatHide.append(contentsOf: page.constantAya6of8)
//                        ayatHide.append(contentsOf: page.constantAya7of8)
//                        ayatShow.append(contentsOf: page.constantAya8of8)
//                        buttonHide.append(contentsOf: page.constantButton1of8)
//                        buttonHide.append(contentsOf: page.constantButton2of8)
//                        buttonHide.append(contentsOf: page.constantButton3of8)
//                        buttonHide.append(contentsOf: page.constantButton4of8)
//                        buttonHide.append(contentsOf: page.constantButton5of8)
//                        buttonHide.append(contentsOf: page.constantButton6of8)
//                        buttonHide.append(contentsOf: page.constantButton7of8)
//                        buttonShow.append(contentsOf: page.constantButton8of8)
//                    }
//                default:
//                    break
//                }
//            default:
//                break
//            }
//        case 24:
//            // MARK: - Page 24
//            switch dayNumber {
//            case 1:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 1, Difficulty 1
//                    ayaStartStack = [154]
//                    ayaEndStack = [154]
//                    if let page = viewController as? Page024ViewController {
//                        ayatShow.append(contentsOf: page.constantAya1of10)
//                        ayatHide.append(contentsOf: page.constantAya2of10)
//                        ayatHide.append(contentsOf: page.constantAya3of10)
//                        ayatHide.append(contentsOf: page.constantAya4of10)
//                        ayatHide.append(contentsOf: page.constantAya5of10)
//                        ayatHide.append(contentsOf: page.constantAya6of10)
//                        ayatHide.append(contentsOf: page.constantAya7of10)
//                        ayatHide.append(contentsOf: page.constantAya8of10)
//                        ayatHide.append(contentsOf: page.constantAya9of10)
//                        ayatHide.append(contentsOf: page.constantAya10of10)
//                        buttonShow.append(contentsOf: page.constantButton1of10)
//                        buttonHide.append(contentsOf: page.constantButton2of10)
//                        buttonHide.append(contentsOf: page.constantButton3of10)
//                        buttonHide.append(contentsOf: page.constantButton4of10)
//                        buttonHide.append(contentsOf: page.constantButton5of10)
//                        buttonHide.append(contentsOf: page.constantButton6of10)
//                        buttonHide.append(contentsOf: page.constantButton7of10)
//                        buttonHide.append(contentsOf: page.constantButton8of10)
//                        buttonHide.append(contentsOf: page.constantButton9of10)
//                        buttonHide.append(contentsOf: page.constantButton10of10)
//
//                    }
//                default:
//                    break
//                }
//            case 2:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 2, Difficulty 1
//                    ayaStartStack = [155]
//                    ayaEndStack = [155]
//                    if let page = viewController as? Page024ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of10)
//                        ayatShow.append(contentsOf: page.constantAya2of10)
//                        ayatHide.append(contentsOf: page.constantAya3of10)
//                        ayatHide.append(contentsOf: page.constantAya4of10)
//                        ayatHide.append(contentsOf: page.constantAya5of10)
//                        ayatHide.append(contentsOf: page.constantAya6of10)
//                        ayatHide.append(contentsOf: page.constantAya7of10)
//                        ayatHide.append(contentsOf: page.constantAya8of10)
//                        ayatHide.append(contentsOf: page.constantAya9of10)
//                        ayatHide.append(contentsOf: page.constantAya10of10)
//                        buttonHide.append(contentsOf: page.constantButton1of10)
//                        buttonShow.append(contentsOf: page.constantButton2of10)
//                        buttonHide.append(contentsOf: page.constantButton3of10)
//                        buttonHide.append(contentsOf: page.constantButton4of10)
//                        buttonHide.append(contentsOf: page.constantButton5of10)
//                        buttonHide.append(contentsOf: page.constantButton6of10)
//                        buttonHide.append(contentsOf: page.constantButton7of10)
//                        buttonHide.append(contentsOf: page.constantButton8of10)
//                        buttonHide.append(contentsOf: page.constantButton9of10)
//                        buttonHide.append(contentsOf: page.constantButton10of10)
//
//                    }
//                default:
//                    break
//                }
//            case 3:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 3, Difficulty 1
//                    ayaStartStack = [156]
//                    ayaEndStack = [156]
//                    if let page = viewController as? Page024ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of10)
//                        ayatHide.append(contentsOf: page.constantAya2of10)
//                        ayatShow.append(contentsOf: page.constantAya3of10)
//                        ayatHide.append(contentsOf: page.constantAya4of10)
//                        ayatHide.append(contentsOf: page.constantAya5of10)
//                        ayatHide.append(contentsOf: page.constantAya6of10)
//                        ayatHide.append(contentsOf: page.constantAya7of10)
//                        ayatHide.append(contentsOf: page.constantAya8of10)
//                        ayatHide.append(contentsOf: page.constantAya9of10)
//                        ayatHide.append(contentsOf: page.constantAya10of10)
//                        buttonHide.append(contentsOf: page.constantButton1of10)
//                        buttonHide.append(contentsOf: page.constantButton2of10)
//                        buttonShow.append(contentsOf: page.constantButton3of10)
//                        buttonHide.append(contentsOf: page.constantButton4of10)
//                        buttonHide.append(contentsOf: page.constantButton5of10)
//                        buttonHide.append(contentsOf: page.constantButton6of10)
//                        buttonHide.append(contentsOf: page.constantButton7of10)
//                        buttonHide.append(contentsOf: page.constantButton8of10)
//                        buttonHide.append(contentsOf: page.constantButton9of10)
//                        buttonHide.append(contentsOf: page.constantButton10of10)
//
//                    }
//                default:
//                    break
//                }
//            case 4:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 4, Difficulty 1
//                    ayaStartStack = [157]
//                    ayaEndStack = [157]
//                    if let page = viewController as? Page024ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of10)
//                        ayatHide.append(contentsOf: page.constantAya2of10)
//                        ayatHide.append(contentsOf: page.constantAya3of10)
//                        ayatShow.append(contentsOf: page.constantAya4of10)
//                        ayatHide.append(contentsOf: page.constantAya5of10)
//                        ayatHide.append(contentsOf: page.constantAya6of10)
//                        ayatHide.append(contentsOf: page.constantAya7of10)
//                        ayatHide.append(contentsOf: page.constantAya8of10)
//                        ayatHide.append(contentsOf: page.constantAya9of10)
//                        ayatHide.append(contentsOf: page.constantAya10of10)
//                        buttonHide.append(contentsOf: page.constantButton1of10)
//                        buttonHide.append(contentsOf: page.constantButton2of10)
//                        buttonHide.append(contentsOf: page.constantButton3of10)
//                        buttonShow.append(contentsOf: page.constantButton4of10)
//                        buttonHide.append(contentsOf: page.constantButton5of10)
//                        buttonHide.append(contentsOf: page.constantButton6of10)
//                        buttonHide.append(contentsOf: page.constantButton7of10)
//                        buttonHide.append(contentsOf: page.constantButton8of10)
//                        buttonHide.append(contentsOf: page.constantButton9of10)
//                        buttonHide.append(contentsOf: page.constantButton10of10)
//
//                    }
//                default:
//                    break
//                }
//            case 5:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 5, Difficulty 1
//                    ayaStartStack = [158]
//                    ayaEndStack = [158]
//                    if let page = viewController as? Page024ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of10)
//                        ayatHide.append(contentsOf: page.constantAya2of10)
//                        ayatHide.append(contentsOf: page.constantAya3of10)
//                        ayatHide.append(contentsOf: page.constantAya4of10)
//                        ayatShow.append(contentsOf: page.constantAya5of10)
//                        ayatHide.append(contentsOf: page.constantAya6of10)
//                        ayatHide.append(contentsOf: page.constantAya7of10)
//                        ayatHide.append(contentsOf: page.constantAya8of10)
//                        ayatHide.append(contentsOf: page.constantAya9of10)
//                        ayatHide.append(contentsOf: page.constantAya10of10)
//                        buttonHide.append(contentsOf: page.constantButton1of10)
//                        buttonHide.append(contentsOf: page.constantButton2of10)
//                        buttonHide.append(contentsOf: page.constantButton3of10)
//                        buttonHide.append(contentsOf: page.constantButton4of10)
//                        buttonShow.append(contentsOf: page.constantButton5of10)
//                        buttonHide.append(contentsOf: page.constantButton6of10)
//                        buttonHide.append(contentsOf: page.constantButton7of10)
//                        buttonHide.append(contentsOf: page.constantButton8of10)
//                        buttonHide.append(contentsOf: page.constantButton9of10)
//                        buttonHide.append(contentsOf: page.constantButton10of10)
//                    }
//                default:
//                    break
//                }
//            case 6:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 6, Difficulty 1
//                    ayaStartStack = [159]
//                    ayaEndStack = [159]
//                    if let page = viewController as? Page024ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of10)
//                        ayatHide.append(contentsOf: page.constantAya2of10)
//                        ayatHide.append(contentsOf: page.constantAya3of10)
//                        ayatHide.append(contentsOf: page.constantAya4of10)
//                        ayatHide.append(contentsOf: page.constantAya5of10)
//                        ayatShow.append(contentsOf: page.constantAya6of10)
//                        ayatHide.append(contentsOf: page.constantAya7of10)
//                        ayatHide.append(contentsOf: page.constantAya8of10)
//                        ayatHide.append(contentsOf: page.constantAya9of10)
//                        ayatHide.append(contentsOf: page.constantAya10of10)
//                        buttonHide.append(contentsOf: page.constantButton1of10)
//                        buttonHide.append(contentsOf: page.constantButton2of10)
//                        buttonHide.append(contentsOf: page.constantButton3of10)
//                        buttonHide.append(contentsOf: page.constantButton4of10)
//                        buttonHide.append(contentsOf: page.constantButton5of10)
//                        buttonShow.append(contentsOf: page.constantButton6of10)
//                        buttonHide.append(contentsOf: page.constantButton7of10)
//                        buttonHide.append(contentsOf: page.constantButton8of10)
//                        buttonHide.append(contentsOf: page.constantButton9of10)
//                        buttonHide.append(contentsOf: page.constantButton10of10)
//
//                    }
//                default:
//                    break
//                }
//            case 7:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 7, Difficulty 1
//                    ayaStartStack = [160]
//                    ayaEndStack = [160]
//                    if let page = viewController as? Page024ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of10)
//                        ayatHide.append(contentsOf: page.constantAya2of10)
//                        ayatHide.append(contentsOf: page.constantAya3of10)
//                        ayatHide.append(contentsOf: page.constantAya4of10)
//                        ayatHide.append(contentsOf: page.constantAya5of10)
//                        ayatHide.append(contentsOf: page.constantAya6of10)
//                        ayatShow.append(contentsOf: page.constantAya7of10)
//                        ayatHide.append(contentsOf: page.constantAya8of10)
//                        ayatHide.append(contentsOf: page.constantAya9of10)
//                        ayatHide.append(contentsOf: page.constantAya10of10)
//                        buttonHide.append(contentsOf: page.constantButton1of10)
//                        buttonHide.append(contentsOf: page.constantButton2of10)
//                        buttonHide.append(contentsOf: page.constantButton3of10)
//                        buttonHide.append(contentsOf: page.constantButton4of10)
//                        buttonHide.append(contentsOf: page.constantButton5of10)
//                        buttonHide.append(contentsOf: page.constantButton6of10)
//                        buttonShow.append(contentsOf: page.constantButton7of10)
//                        buttonHide.append(contentsOf: page.constantButton8of10)
//                        buttonHide.append(contentsOf: page.constantButton9of10)
//                        buttonHide.append(contentsOf: page.constantButton10of10)
//                    }
//                default:
//                    break
//                }
//            case 8:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 8, Difficulty 1
//                    ayaStartStack = [161]
//                    ayaEndStack = [161]
//                    if let page = viewController as? Page024ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of10)
//                        ayatHide.append(contentsOf: page.constantAya2of10)
//                        ayatHide.append(contentsOf: page.constantAya3of10)
//                        ayatHide.append(contentsOf: page.constantAya4of10)
//                        ayatHide.append(contentsOf: page.constantAya5of10)
//                        ayatHide.append(contentsOf: page.constantAya6of10)
//                        ayatHide.append(contentsOf: page.constantAya7of10)
//                        ayatShow.append(contentsOf: page.constantAya8of10)
//                        ayatHide.append(contentsOf: page.constantAya9of10)
//                        ayatHide.append(contentsOf: page.constantAya10of10)
//                        buttonHide.append(contentsOf: page.constantButton1of10)
//                        buttonHide.append(contentsOf: page.constantButton2of10)
//                        buttonHide.append(contentsOf: page.constantButton3of10)
//                        buttonHide.append(contentsOf: page.constantButton4of10)
//                        buttonHide.append(contentsOf: page.constantButton5of10)
//                        buttonHide.append(contentsOf: page.constantButton6of10)
//                        buttonHide.append(contentsOf: page.constantButton7of10)
//                        buttonShow.append(contentsOf: page.constantButton8of10)
//                        buttonHide.append(contentsOf: page.constantButton9of10)
//                        buttonHide.append(contentsOf: page.constantButton10of10)
//                    }
//                default:
//                    break
//                }
//            case 9:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 9, Difficulty 1
//                    ayaStartStack = [162]
//                    ayaEndStack = [162]
//                    if let page = viewController as? Page024ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of10)
//                        ayatHide.append(contentsOf: page.constantAya2of10)
//                        ayatHide.append(contentsOf: page.constantAya3of10)
//                        ayatHide.append(contentsOf: page.constantAya4of10)
//                        ayatHide.append(contentsOf: page.constantAya5of10)
//                        ayatHide.append(contentsOf: page.constantAya6of10)
//                        ayatHide.append(contentsOf: page.constantAya7of10)
//                        ayatHide.append(contentsOf: page.constantAya8of10)
//                        ayatShow.append(contentsOf: page.constantAya9of10)
//                        ayatHide.append(contentsOf: page.constantAya10of10)
//                        buttonHide.append(contentsOf: page.constantButton1of10)
//                        buttonHide.append(contentsOf: page.constantButton2of10)
//                        buttonHide.append(contentsOf: page.constantButton3of10)
//                        buttonHide.append(contentsOf: page.constantButton4of10)
//                        buttonHide.append(contentsOf: page.constantButton5of10)
//                        buttonHide.append(contentsOf: page.constantButton6of10)
//                        buttonHide.append(contentsOf: page.constantButton7of10)
//                        buttonHide.append(contentsOf: page.constantButton8of10)
//                        buttonShow.append(contentsOf: page.constantButton9of10)
//                        buttonHide.append(contentsOf: page.constantButton10of10)
//
//                    }
//                default:
//                    break
//                }
//            case 10:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 10, Difficulty 1
//                    ayaStartStack = [163]
//                    ayaEndStack = [163]
//                    if let page = viewController as? Page024ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of10)
//                        ayatHide.append(contentsOf: page.constantAya2of10)
//                        ayatHide.append(contentsOf: page.constantAya3of10)
//                        ayatHide.append(contentsOf: page.constantAya4of10)
//                        ayatHide.append(contentsOf: page.constantAya5of10)
//                        ayatHide.append(contentsOf: page.constantAya6of10)
//                        ayatHide.append(contentsOf: page.constantAya7of10)
//                        ayatHide.append(contentsOf: page.constantAya8of10)
//                        ayatHide.append(contentsOf: page.constantAya9of10)
//                        ayatShow.append(contentsOf: page.constantAya10of10)
//                        buttonHide.append(contentsOf: page.constantButton1of10)
//                        buttonHide.append(contentsOf: page.constantButton2of10)
//                        buttonHide.append(contentsOf: page.constantButton3of10)
//                        buttonHide.append(contentsOf: page.constantButton4of10)
//                        buttonHide.append(contentsOf: page.constantButton5of10)
//                        buttonHide.append(contentsOf: page.constantButton6of10)
//                        buttonHide.append(contentsOf: page.constantButton7of10)
//                        buttonHide.append(contentsOf: page.constantButton8of10)
//                        buttonHide.append(contentsOf: page.constantButton9of10)
//                        buttonShow.append(contentsOf: page.constantButton10of10)
//                    }
//                default:
//                    break
//                }
//            default:
//                break
//            }
//        case 25:
//            // MARK: - Page 25
//            switch dayNumber {
//            case 1:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 1, Difficulty 1
//                    ayaStartStack = [164]
//                    ayaEndStack = [164]
//                    if let page = viewController as? Page025ViewController {
//                        ayatShow.append(contentsOf: page.constantAya1of6)
//                        ayatHide.append(contentsOf: page.constantAya2of6)
//                        ayatHide.append(contentsOf: page.constantAya3of6)
//                        ayatHide.append(contentsOf: page.constantAya4of6)
//                        ayatHide.append(contentsOf: page.constantAya5of6)
//                        ayatHide.append(contentsOf: page.constantAya6of6)
//                        buttonShow.append(contentsOf: page.constantButton1of6)
//                        buttonHide.append(contentsOf: page.constantButton2of6)
//                        buttonHide.append(contentsOf: page.constantButton3of6)
//                        buttonHide.append(contentsOf: page.constantButton4of6)
//                        buttonHide.append(contentsOf: page.constantButton5of6)
//                        buttonHide.append(contentsOf: page.constantButton6of6)
//                    }
//                default:
//                    break
//                }
//            case 2:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 2, Difficulty 1
//                    ayaStartStack = [165]
//                    ayaEndStack = [165]
//                    if let page = viewController as? Page025ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of6)
//                        ayatShow.append(contentsOf: page.constantAya2of6)
//                        ayatHide.append(contentsOf: page.constantAya3of6)
//                        ayatHide.append(contentsOf: page.constantAya4of6)
//                        ayatHide.append(contentsOf: page.constantAya5of6)
//                        ayatHide.append(contentsOf: page.constantAya6of6)
//                        buttonHide.append(contentsOf: page.constantButton1of6)
//                        buttonShow.append(contentsOf: page.constantButton2of6)
//                        buttonHide.append(contentsOf: page.constantButton3of6)
//                        buttonHide.append(contentsOf: page.constantButton4of6)
//                        buttonHide.append(contentsOf: page.constantButton5of6)
//                        buttonHide.append(contentsOf: page.constantButton6of6)
//                    }
//                default:
//                    break
//                }
//            case 3:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 3, Difficulty 1
//                    ayaStartStack = [166]
//                    ayaEndStack = [166]
//                    if let page = viewController as? Page025ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of6)
//                        ayatHide.append(contentsOf: page.constantAya2of6)
//                        ayatShow.append(contentsOf: page.constantAya3of6)
//                        ayatHide.append(contentsOf: page.constantAya4of6)
//                        ayatHide.append(contentsOf: page.constantAya5of6)
//                        ayatHide.append(contentsOf: page.constantAya6of6)
//                        buttonHide.append(contentsOf: page.constantButton1of6)
//                        buttonHide.append(contentsOf: page.constantButton2of6)
//                        buttonShow.append(contentsOf: page.constantButton3of6)
//                        buttonHide.append(contentsOf: page.constantButton4of6)
//                        buttonHide.append(contentsOf: page.constantButton5of6)
//                        buttonHide.append(contentsOf: page.constantButton6of6)
//                    }
//                default:
//                    break
//                }
//            case 4:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 4, Difficulty 1
//                    ayaStartStack = [167]
//                    ayaEndStack = [167]
//                    if let page = viewController as? Page025ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of6)
//                        ayatHide.append(contentsOf: page.constantAya2of6)
//                        ayatHide.append(contentsOf: page.constantAya3of6)
//                        ayatShow.append(contentsOf: page.constantAya4of6)
//                        ayatHide.append(contentsOf: page.constantAya5of6)
//                        ayatHide.append(contentsOf: page.constantAya6of6)
//                        buttonHide.append(contentsOf: page.constantButton1of6)
//                        buttonHide.append(contentsOf: page.constantButton2of6)
//                        buttonHide.append(contentsOf: page.constantButton3of6)
//                        buttonShow.append(contentsOf: page.constantButton4of6)
//                        buttonHide.append(contentsOf: page.constantButton5of6)
//                        buttonHide.append(contentsOf: page.constantButton6of6)
//                    }
//                default:
//                    break
//                }
//            case 5:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 5, Difficulty 1
//                    ayaStartStack = [168]
//                    ayaEndStack = [168]
//                    if let page = viewController as? Page025ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of6)
//                        ayatHide.append(contentsOf: page.constantAya2of6)
//                        ayatHide.append(contentsOf: page.constantAya3of6)
//                        ayatHide.append(contentsOf: page.constantAya4of6)
//                        ayatShow.append(contentsOf: page.constantAya5of6)
//                        ayatHide.append(contentsOf: page.constantAya6of6)
//                        buttonHide.append(contentsOf: page.constantButton1of6)
//                        buttonHide.append(contentsOf: page.constantButton2of6)
//                        buttonHide.append(contentsOf: page.constantButton3of6)
//                        buttonHide.append(contentsOf: page.constantButton4of6)
//                        buttonShow.append(contentsOf: page.constantButton5of6)
//                        buttonHide.append(contentsOf: page.constantButton6of6)
//                    }
//                default:
//                    break
//                }
//            case 6:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 6, Difficulty 1
//                    ayaStartStack = [169]
//                    ayaEndStack = [169]
//                    if let page = viewController as? Page025ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of6)
//                        ayatHide.append(contentsOf: page.constantAya2of6)
//                        ayatHide.append(contentsOf: page.constantAya3of6)
//                        ayatHide.append(contentsOf: page.constantAya4of6)
//                        ayatHide.append(contentsOf: page.constantAya5of6)
//                        ayatShow.append(contentsOf: page.constantAya6of6)
//                        buttonHide.append(contentsOf: page.constantButton1of6)
//                        buttonHide.append(contentsOf: page.constantButton2of6)
//                        buttonHide.append(contentsOf: page.constantButton3of6)
//                        buttonHide.append(contentsOf: page.constantButton4of6)
//                        buttonHide.append(contentsOf: page.constantButton5of6)
//                        buttonShow.append(contentsOf: page.constantButton6of6)
//                    }
//                default:
//                    break
//                }
//            default:
//                break
//            }
//        case 26:
//            // MARK: - Page 26
//            switch dayNumber {
//            case 1:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 1, Difficulty 1
//                    ayaStartStack = [170]
//                    ayaEndStack = [170]
//                    if let page = viewController as? Page026ViewController {
//                        ayatShow.append(contentsOf: page.constantAya1of7)
//                        ayatHide.append(contentsOf: page.constantAya2of7)
//                        ayatHide.append(contentsOf: page.constantAya3of7)
//                        ayatHide.append(contentsOf: page.constantAya4of7)
//                        ayatHide.append(contentsOf: page.constantAya5of7)
//                        ayatHide.append(contentsOf: page.constantAya6of7)
//                        ayatHide.append(contentsOf: page.constantAya7of7)
//                        buttonShow.append(contentsOf: page.constantButton1of7)
//                        buttonHide.append(contentsOf: page.constantButton2of7)
//                        buttonHide.append(contentsOf: page.constantButton3of7)
//                        buttonHide.append(contentsOf: page.constantButton4of7)
//                        buttonHide.append(contentsOf: page.constantButton5of7)
//                        buttonHide.append(contentsOf: page.constantButton6of7)
//                        buttonHide.append(contentsOf: page.constantButton7of7)
//                    }
//                default:
//                    break
//                }
//            case 2:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 2, Difficulty 1
//                    ayaStartStack = [171]
//                    ayaEndStack = [171]
//                    if let page = viewController as? Page026ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of7)
//                        ayatShow.append(contentsOf: page.constantAya2of7)
//                        ayatHide.append(contentsOf: page.constantAya3of7)
//                        ayatHide.append(contentsOf: page.constantAya4of7)
//                        ayatHide.append(contentsOf: page.constantAya5of7)
//                        ayatHide.append(contentsOf: page.constantAya6of7)
//                        ayatHide.append(contentsOf: page.constantAya7of7)
//                        buttonHide.append(contentsOf: page.constantButton1of7)
//                        buttonShow.append(contentsOf: page.constantButton2of7)
//                        buttonHide.append(contentsOf: page.constantButton3of7)
//                        buttonHide.append(contentsOf: page.constantButton4of7)
//                        buttonHide.append(contentsOf: page.constantButton5of7)
//                        buttonHide.append(contentsOf: page.constantButton6of7)
//                        buttonHide.append(contentsOf: page.constantButton7of7)
//                    }
//                default:
//                    break
//                }
//            case 3:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 3, Difficulty 1
//                    ayaStartStack = [172]
//                    ayaEndStack = [172]
//                    if let page = viewController as? Page026ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of7)
//                        ayatHide.append(contentsOf: page.constantAya2of7)
//                        ayatShow.append(contentsOf: page.constantAya3of7)
//                        ayatHide.append(contentsOf: page.constantAya4of7)
//                        ayatHide.append(contentsOf: page.constantAya5of7)
//                        ayatHide.append(contentsOf: page.constantAya6of7)
//                        ayatHide.append(contentsOf: page.constantAya7of7)
//                        buttonHide.append(contentsOf: page.constantButton1of7)
//                        buttonHide.append(contentsOf: page.constantButton2of7)
//                        buttonShow.append(contentsOf: page.constantButton3of7)
//                        buttonHide.append(contentsOf: page.constantButton4of7)
//                        buttonHide.append(contentsOf: page.constantButton5of7)
//                        buttonHide.append(contentsOf: page.constantButton6of7)
//                        buttonHide.append(contentsOf: page.constantButton7of7)
//                    }
//                default:
//                    break
//                }
//            case 4:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 4, Difficulty 1
//                    ayaStartStack = [173]
//                    ayaEndStack = [173]
//                    if let page = viewController as? Page026ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of7)
//                        ayatHide.append(contentsOf: page.constantAya2of7)
//                        ayatHide.append(contentsOf: page.constantAya3of7)
//                        ayatShow.append(contentsOf: page.constantAya4of7)
//                        ayatHide.append(contentsOf: page.constantAya5of7)
//                        ayatHide.append(contentsOf: page.constantAya6of7)
//                        ayatHide.append(contentsOf: page.constantAya7of7)
//                        buttonHide.append(contentsOf: page.constantButton1of7)
//                        buttonHide.append(contentsOf: page.constantButton2of7)
//                        buttonHide.append(contentsOf: page.constantButton3of7)
//                        buttonShow.append(contentsOf: page.constantButton4of7)
//                        buttonHide.append(contentsOf: page.constantButton5of7)
//                        buttonHide.append(contentsOf: page.constantButton6of7)
//                        buttonHide.append(contentsOf: page.constantButton7of7)                    }
//                default:
//                    break
//                }
//            case 5:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 5, Difficulty 1
//                    ayaStartStack = [174]
//                    ayaEndStack = [174]
//                    if let page = viewController as? Page026ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of7)
//                        ayatHide.append(contentsOf: page.constantAya2of7)
//                        ayatHide.append(contentsOf: page.constantAya3of7)
//                        ayatHide.append(contentsOf: page.constantAya4of7)
//                        ayatShow.append(contentsOf: page.constantAya5of7)
//                        ayatHide.append(contentsOf: page.constantAya6of7)
//                        ayatHide.append(contentsOf: page.constantAya7of7)
//                        buttonHide.append(contentsOf: page.constantButton1of7)
//                        buttonHide.append(contentsOf: page.constantButton2of7)
//                        buttonHide.append(contentsOf: page.constantButton3of7)
//                        buttonHide.append(contentsOf: page.constantButton4of7)
//                        buttonShow.append(contentsOf: page.constantButton5of7)
//                        buttonHide.append(contentsOf: page.constantButton6of7)
//                        buttonHide.append(contentsOf: page.constantButton7of7)
//                    }
//                default:
//                    break
//                }
//            case 6:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 6, Difficulty 1
//                    ayaStartStack = [175]
//                    ayaEndStack = [175]
//                    if let page = viewController as? Page026ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of7)
//                        ayatHide.append(contentsOf: page.constantAya2of7)
//                        ayatHide.append(contentsOf: page.constantAya3of7)
//                        ayatHide.append(contentsOf: page.constantAya4of7)
//                        ayatHide.append(contentsOf: page.constantAya5of7)
//                        ayatShow.append(contentsOf: page.constantAya6of7)
//                        ayatHide.append(contentsOf: page.constantAya7of7)
//                        buttonHide.append(contentsOf: page.constantButton1of7)
//                        buttonHide.append(contentsOf: page.constantButton2of7)
//                        buttonHide.append(contentsOf: page.constantButton3of7)
//                        buttonHide.append(contentsOf: page.constantButton4of7)
//                        buttonHide.append(contentsOf: page.constantButton5of7)
//                        buttonShow.append(contentsOf: page.constantButton6of7)
//                        buttonHide.append(contentsOf: page.constantButton7of7)
//                    }
//                default:
//                    break
//                }
//            case 7:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 7, Difficulty 1
//                    ayaStartStack = [176]
//                    ayaEndStack = [176]
//                    if let page = viewController as? Page026ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of7)
//                        ayatHide.append(contentsOf: page.constantAya2of7)
//                        ayatHide.append(contentsOf: page.constantAya3of7)
//                        ayatHide.append(contentsOf: page.constantAya4of7)
//                        ayatHide.append(contentsOf: page.constantAya5of7)
//                        ayatHide.append(contentsOf: page.constantAya6of7)
//                        ayatShow.append(contentsOf: page.constantAya7of7)
//                        buttonHide.append(contentsOf: page.constantButton1of7)
//                        buttonHide.append(contentsOf: page.constantButton2of7)
//                        buttonHide.append(contentsOf: page.constantButton3of7)
//                        buttonHide.append(contentsOf: page.constantButton4of7)
//                        buttonHide.append(contentsOf: page.constantButton5of7)
//                        buttonHide.append(contentsOf: page.constantButton6of7)
//                        buttonShow.append(contentsOf: page.constantButton7of7)
//                    }
//                default:
//                    break
//                }
//            default:
//                break
//            }
//        case 27:
//            // MARK: - Page 27
//            switch dayNumber {
//            case 1:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 1, Difficulty 1
//                    ayaStartStack = [177]
//                    ayaEndStack = [177]
//                    if let page = viewController as? Page027ViewController {
//                        ayatShow.append(contentsOf: page.constantAya1of5)
//                        ayatHide.append(contentsOf: page.constantAya2of5)
//                        ayatHide.append(contentsOf: page.constantAya3of5)
//                        ayatHide.append(contentsOf: page.constantAya4of5)
//                        ayatHide.append(contentsOf: page.constantAya5of5)
//                        buttonShow.append(contentsOf: page.constantButton1of5)
//                        buttonHide.append(contentsOf: page.constantButton2of5)
//                        buttonHide.append(contentsOf: page.constantButton3of5)
//                        buttonHide.append(contentsOf: page.constantButton4of5)
//                        buttonHide.append(contentsOf: page.constantButton5of5)
//                    }
//                default:
//                    break
//                }
//            case 2:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 2, Difficulty 1
//                    ayaStartStack = [178]
//                    ayaEndStack = [178]
//                    if let page = viewController as? Page027ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of5)
//                        ayatShow.append(contentsOf: page.constantAya2of5)
//                        ayatHide.append(contentsOf: page.constantAya3of5)
//                        ayatHide.append(contentsOf: page.constantAya4of5)
//                        ayatHide.append(contentsOf: page.constantAya5of5)
//                        buttonHide.append(contentsOf: page.constantButton1of5)
//                        buttonShow.append(contentsOf: page.constantButton2of5)
//                        buttonHide.append(contentsOf: page.constantButton3of5)
//                        buttonHide.append(contentsOf: page.constantButton4of5)
//                        buttonHide.append(contentsOf: page.constantButton5of5)
//                    }
//                default:
//                    break
//                }
//            case 3:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 3, Difficulty 1
//                    ayaStartStack = [179]
//                    ayaEndStack = [179]
//                    if let page = viewController as? Page027ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of5)
//                        ayatHide.append(contentsOf: page.constantAya2of5)
//                        ayatShow.append(contentsOf: page.constantAya3of5)
//                        ayatHide.append(contentsOf: page.constantAya4of5)
//                        ayatHide.append(contentsOf: page.constantAya5of5)
//                        buttonHide.append(contentsOf: page.constantButton1of5)
//                        buttonHide.append(contentsOf: page.constantButton2of5)
//                        buttonShow.append(contentsOf: page.constantButton3of5)
//                        buttonHide.append(contentsOf: page.constantButton4of5)
//                        buttonHide.append(contentsOf: page.constantButton5of5)
//                    }
//                default:
//                    break
//                }
//            case 4:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 4, Difficulty 1
//                    ayaStartStack = [180]
//                    ayaEndStack = [180]
//                    if let page = viewController as? Page027ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of5)
//                        ayatHide.append(contentsOf: page.constantAya2of5)
//                        ayatHide.append(contentsOf: page.constantAya3of5)
//                        ayatShow.append(contentsOf: page.constantAya4of5)
//                        ayatHide.append(contentsOf: page.constantAya5of5)
//                        buttonHide.append(contentsOf: page.constantButton1of5)
//                        buttonHide.append(contentsOf: page.constantButton2of5)
//                        buttonHide.append(contentsOf: page.constantButton3of5)
//                        buttonShow.append(contentsOf: page.constantButton4of5)
//                        buttonHide.append(contentsOf: page.constantButton5of5)                   }
//                default:
//                    break
//                }
//            case 5:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 5, Difficulty 1
//                    ayaStartStack = [181]
//                    ayaEndStack = [181]
//                    if let page = viewController as? Page027ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of5)
//                        ayatHide.append(contentsOf: page.constantAya2of5)
//                        ayatHide.append(contentsOf: page.constantAya3of5)
//                        ayatHide.append(contentsOf: page.constantAya4of5)
//                        ayatShow.append(contentsOf: page.constantAya5of5)
//                        buttonHide.append(contentsOf: page.constantButton1of5)
//                        buttonHide.append(contentsOf: page.constantButton2of5)
//                        buttonHide.append(contentsOf: page.constantButton3of5)
//                        buttonHide.append(contentsOf: page.constantButton4of5)
//                        buttonShow.append(contentsOf: page.constantButton5of5)
//                    }
//                default:
//                    break
//                }
//            default:
//                break
//            }
//        case 28:
//            // MARK: - Page 28
//            switch dayNumber {
//            case 1:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 1, Difficulty 1
//                    ayaStartStack = [182]
//                    ayaEndStack = [182]
//                    if let page = viewController as? Page028ViewController {
//                        ayatShow.append(contentsOf: page.constantAya1of5)
//                        ayatHide.append(contentsOf: page.constantAya2of5)
//                        ayatHide.append(contentsOf: page.constantAya3of5)
//                        ayatHide.append(contentsOf: page.constantAya4of5)
//                        ayatHide.append(contentsOf: page.constantAya5of5)
//                        buttonShow.append(contentsOf: page.constantButton1of5)
//                        buttonHide.append(contentsOf: page.constantButton2of5)
//                        buttonHide.append(contentsOf: page.constantButton3of5)
//                        buttonHide.append(contentsOf: page.constantButton4of5)
//                        buttonHide.append(contentsOf: page.constantButton5of5)
//                    }
//                default:
//                    break
//                }
//            case 2:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 2, Difficulty 1
//                    ayaStartStack = [183]
//                    ayaEndStack = [183]
//                    if let page = viewController as? Page028ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of5)
//                        ayatShow.append(contentsOf: page.constantAya2of5)
//                        ayatHide.append(contentsOf: page.constantAya3of5)
//                        ayatHide.append(contentsOf: page.constantAya4of5)
//                        ayatHide.append(contentsOf: page.constantAya5of5)
//                        buttonHide.append(contentsOf: page.constantButton1of5)
//                        buttonShow.append(contentsOf: page.constantButton2of5)
//                        buttonHide.append(contentsOf: page.constantButton3of5)
//                        buttonHide.append(contentsOf: page.constantButton4of5)
//                        buttonHide.append(contentsOf: page.constantButton5of5)
//                    }
//                default:
//                    break
//                }
//            case 3:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 3, Difficulty 1
//                    ayaStartStack = [184]
//                    ayaEndStack = [184]
//                    if let page = viewController as? Page028ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of5)
//                        ayatHide.append(contentsOf: page.constantAya2of5)
//                        ayatShow.append(contentsOf: page.constantAya3of5)
//                        ayatHide.append(contentsOf: page.constantAya4of5)
//                        ayatHide.append(contentsOf: page.constantAya5of5)
//                        buttonHide.append(contentsOf: page.constantButton1of5)
//                        buttonHide.append(contentsOf: page.constantButton2of5)
//                        buttonShow.append(contentsOf: page.constantButton3of5)
//                        buttonHide.append(contentsOf: page.constantButton4of5)
//                        buttonHide.append(contentsOf: page.constantButton5of5)
//                    }
//                default:
//                    break
//                }
//            case 4:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 4, Difficulty 1
//                    ayaStartStack = [185]
//                    ayaEndStack = [185]
//                    if let page = viewController as? Page028ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of5)
//                        ayatHide.append(contentsOf: page.constantAya2of5)
//                        ayatHide.append(contentsOf: page.constantAya3of5)
//                        ayatShow.append(contentsOf: page.constantAya4of5)
//                        ayatHide.append(contentsOf: page.constantAya5of5)
//                        buttonHide.append(contentsOf: page.constantButton1of5)
//                        buttonHide.append(contentsOf: page.constantButton2of5)
//                        buttonHide.append(contentsOf: page.constantButton3of5)
//                        buttonShow.append(contentsOf: page.constantButton4of5)
//                        buttonHide.append(contentsOf: page.constantButton5of5)                   }
//                default:
//                    break
//                }
//            case 5:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 5, Difficulty 1
//                    ayaStartStack = [186]
//                    ayaEndStack = [186]
//                    if let page = viewController as? Page028ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of5)
//                        ayatHide.append(contentsOf: page.constantAya2of5)
//                        ayatHide.append(contentsOf: page.constantAya3of5)
//                        ayatHide.append(contentsOf: page.constantAya4of5)
//                        ayatShow.append(contentsOf: page.constantAya5of5)
//                        buttonHide.append(contentsOf: page.constantButton1of5)
//                        buttonHide.append(contentsOf: page.constantButton2of5)
//                        buttonHide.append(contentsOf: page.constantButton3of5)
//                        buttonHide.append(contentsOf: page.constantButton4of5)
//                        buttonShow.append(contentsOf: page.constantButton5of5)
//                    }
//                default:
//                    break
//                }
//            default:
//                break
//            }
//        case 29:
//            // MARK: - Page 29
//            switch dayNumber {
//            case 1:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 1, Difficulty 1
//                    ayaStartStack = [187]
//                    ayaEndStack = [187]
//                    if let page = viewController as? Page029ViewController {
//                        ayatShow.append(contentsOf: page.constantAya1of4)
//                        ayatHide.append(contentsOf: page.constantAya2of4)
//                        ayatHide.append(contentsOf: page.constantAya3of4)
//                        ayatHide.append(contentsOf: page.constantAya4of4)
//                        buttonShow.append(contentsOf: page.constantButton1of4)
//                        buttonHide.append(contentsOf: page.constantButton2of4)
//                        buttonHide.append(contentsOf: page.constantButton3of4)
//                        buttonHide.append(contentsOf: page.constantButton4of4)
//                    }
//                default:
//                    break
//                }
//            case 2:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 2, Difficulty 1
//                    ayaStartStack = [188]
//                    ayaEndStack = [188]
//                    if let page = viewController as? Page029ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of4)
//                        ayatShow.append(contentsOf: page.constantAya2of4)
//                        ayatHide.append(contentsOf: page.constantAya3of4)
//                        ayatHide.append(contentsOf: page.constantAya4of4)
//                        buttonHide.append(contentsOf: page.constantButton1of4)
//                        buttonShow.append(contentsOf: page.constantButton2of4)
//                        buttonHide.append(contentsOf: page.constantButton3of4)
//                        buttonHide.append(contentsOf: page.constantButton4of4)
//                    }
//                default:
//                    break
//                }
//            case 3:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 3, Difficulty 1
//                    ayaStartStack = [189]
//                    ayaEndStack = [189]
//                    if let page = viewController as? Page029ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of4)
//                        ayatHide.append(contentsOf: page.constantAya2of4)
//                        ayatShow.append(contentsOf: page.constantAya3of4)
//                        ayatHide.append(contentsOf: page.constantAya4of4)
//                        buttonHide.append(contentsOf: page.constantButton1of4)
//                        buttonHide.append(contentsOf: page.constantButton2of4)
//                        buttonShow.append(contentsOf: page.constantButton3of4)
//                        buttonHide.append(contentsOf: page.constantButton4of4)
//                    }
//                default:
//                    break
//                }
//            case 4:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 4, Difficulty 1
//                    ayaStartStack = [190]
//                    ayaEndStack = [190]
//                    if let page = viewController as? Page029ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of4)
//                        ayatHide.append(contentsOf: page.constantAya2of4)
//                        ayatHide.append(contentsOf: page.constantAya3of4)
//                        ayatShow.append(contentsOf: page.constantAya4of4)
//                        buttonHide.append(contentsOf: page.constantButton1of4)
//                        buttonHide.append(contentsOf: page.constantButton2of4)
//                        buttonHide.append(contentsOf: page.constantButton3of4)
//                        buttonShow.append(contentsOf: page.constantButton4of4)
//                    }
//                default:
//                    break
//                }
//            default:
//                break
//            }
//        case 30:
//            // MARK: - Page 30
//            switch dayNumber {
//            case 1:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 1, Difficulty 1
//                    ayaStartStack = [191]
//                    ayaEndStack = [191]
//                    if let page = viewController as? Page030ViewController {
//                        ayatShow.append(contentsOf: page.constantAya1of6)
//                        ayatHide.append(contentsOf: page.constantAya2of6)
//                        ayatHide.append(contentsOf: page.constantAya3of6)
//                        ayatHide.append(contentsOf: page.constantAya4of6)
//                        ayatHide.append(contentsOf: page.constantAya5of6)
//                        ayatHide.append(contentsOf: page.constantAya6of6)
//                        buttonShow.append(contentsOf: page.constantButton1of6)
//                        buttonHide.append(contentsOf: page.constantButton2of6)
//                        buttonHide.append(contentsOf: page.constantButton3of6)
//                        buttonHide.append(contentsOf: page.constantButton4of6)
//                        buttonHide.append(contentsOf: page.constantButton5of6)
//                        buttonHide.append(contentsOf: page.constantButton6of6)
//                    }
//                default:
//                    break
//                }
//            case 2:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 2, Difficulty 1
//                    ayaStartStack = [192]
//                    ayaEndStack = [192]
//                    if let page = viewController as? Page030ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of6)
//                        ayatShow.append(contentsOf: page.constantAya2of6)
//                        ayatHide.append(contentsOf: page.constantAya3of6)
//                        ayatHide.append(contentsOf: page.constantAya4of6)
//                        ayatHide.append(contentsOf: page.constantAya5of6)
//                        ayatHide.append(contentsOf: page.constantAya6of6)
//                        buttonHide.append(contentsOf: page.constantButton1of6)
//                        buttonShow.append(contentsOf: page.constantButton2of6)
//                        buttonHide.append(contentsOf: page.constantButton3of6)
//                        buttonHide.append(contentsOf: page.constantButton4of6)
//                        buttonHide.append(contentsOf: page.constantButton5of6)
//                        buttonHide.append(contentsOf: page.constantButton6of6)
//                    }
//                default:
//                    break
//                }
//            case 3:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 3, Difficulty 1
//                    ayaStartStack = [193]
//                    ayaEndStack = [193]
//                    if let page = viewController as? Page030ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of6)
//                        ayatHide.append(contentsOf: page.constantAya2of6)
//                        ayatShow.append(contentsOf: page.constantAya3of6)
//                        ayatHide.append(contentsOf: page.constantAya4of6)
//                        ayatHide.append(contentsOf: page.constantAya5of6)
//                        ayatHide.append(contentsOf: page.constantAya6of6)
//                        buttonHide.append(contentsOf: page.constantButton1of6)
//                        buttonHide.append(contentsOf: page.constantButton2of6)
//                        buttonShow.append(contentsOf: page.constantButton3of6)
//                        buttonHide.append(contentsOf: page.constantButton4of6)
//                        buttonHide.append(contentsOf: page.constantButton5of6)
//                        buttonHide.append(contentsOf: page.constantButton6of6)
//                    }
//                default:
//                    break
//                }
//            case 4:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 4, Difficulty 1
//                    ayaStartStack = [194]
//                    ayaEndStack = [194]
//                    if let page = viewController as? Page030ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of6)
//                        ayatHide.append(contentsOf: page.constantAya2of6)
//                        ayatHide.append(contentsOf: page.constantAya3of6)
//                        ayatShow.append(contentsOf: page.constantAya4of6)
//                        ayatHide.append(contentsOf: page.constantAya5of6)
//                        ayatHide.append(contentsOf: page.constantAya6of6)
//                        buttonHide.append(contentsOf: page.constantButton1of6)
//                        buttonHide.append(contentsOf: page.constantButton2of6)
//                        buttonHide.append(contentsOf: page.constantButton3of6)
//                        buttonShow.append(contentsOf: page.constantButton4of6)
//                        buttonHide.append(contentsOf: page.constantButton5of6)
//                        buttonHide.append(contentsOf: page.constantButton6of6)
//                    }
//                default:
//                    break
//                }
//            case 5:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 5, Difficulty 1
//                    ayaStartStack = [195]
//                    ayaEndStack = [195]
//                    if let page = viewController as? Page030ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of6)
//                        ayatHide.append(contentsOf: page.constantAya2of6)
//                        ayatHide.append(contentsOf: page.constantAya3of6)
//                        ayatHide.append(contentsOf: page.constantAya4of6)
//                        ayatShow.append(contentsOf: page.constantAya5of6)
//                        ayatHide.append(contentsOf: page.constantAya6of6)
//                        buttonHide.append(contentsOf: page.constantButton1of6)
//                        buttonHide.append(contentsOf: page.constantButton2of6)
//                        buttonHide.append(contentsOf: page.constantButton3of6)
//                        buttonHide.append(contentsOf: page.constantButton4of6)
//                        buttonShow.append(contentsOf: page.constantButton5of6)
//                        buttonHide.append(contentsOf: page.constantButton6of6)
//                    }
//                default:
//                    break
//                }
//            case 6:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 6, Difficulty 1
//                    ayaStartStack = [196]
//                    ayaEndStack = [196]
//                    if let page = viewController as? Page030ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of6)
//                        ayatHide.append(contentsOf: page.constantAya2of6)
//                        ayatHide.append(contentsOf: page.constantAya3of6)
//                        ayatHide.append(contentsOf: page.constantAya4of6)
//                        ayatHide.append(contentsOf: page.constantAya5of6)
//                        ayatShow.append(contentsOf: page.constantAya6of6)
//                        buttonHide.append(contentsOf: page.constantButton1of6)
//                        buttonHide.append(contentsOf: page.constantButton2of6)
//                        buttonHide.append(contentsOf: page.constantButton3of6)
//                        buttonHide.append(contentsOf: page.constantButton4of6)
//                        buttonHide.append(contentsOf: page.constantButton5of6)
//                        buttonShow.append(contentsOf: page.constantButton6of6)
//                    }
//                default:
//                    break
//                }
//            default:
//                break
//            }
//        case 31:
//            // MARK: - Page 31
//            switch dayNumber {
//            case 1:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 1, Difficulty 1
//                    ayaStartStack = [197]
//                    ayaEndStack = [197]
//                    if let page = viewController as? Page031ViewController {
//                        ayatShow.append(contentsOf: page.constantAya1of6)
//                        ayatHide.append(contentsOf: page.constantAya2of6)
//                        ayatHide.append(contentsOf: page.constantAya3of6)
//                        ayatHide.append(contentsOf: page.constantAya4of6)
//                        ayatHide.append(contentsOf: page.constantAya5of6)
//                        ayatHide.append(contentsOf: page.constantAya6of6)
//                        buttonShow.append(contentsOf: page.constantButton1of6)
//                        buttonHide.append(contentsOf: page.constantButton2of6)
//                        buttonHide.append(contentsOf: page.constantButton3of6)
//                        buttonHide.append(contentsOf: page.constantButton4of6)
//                        buttonHide.append(contentsOf: page.constantButton5of6)
//                        buttonHide.append(contentsOf: page.constantButton6of6)
//                    }
//                default:
//                    break
//                }
//            case 2:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 2, Difficulty 1
//                    ayaStartStack = [198]
//                    ayaEndStack = [198]
//                    if let page = viewController as? Page031ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of6)
//                        ayatShow.append(contentsOf: page.constantAya2of6)
//                        ayatHide.append(contentsOf: page.constantAya3of6)
//                        ayatHide.append(contentsOf: page.constantAya4of6)
//                        ayatHide.append(contentsOf: page.constantAya5of6)
//                        ayatHide.append(contentsOf: page.constantAya6of6)
//                        buttonHide.append(contentsOf: page.constantButton1of6)
//                        buttonShow.append(contentsOf: page.constantButton2of6)
//                        buttonHide.append(contentsOf: page.constantButton3of6)
//                        buttonHide.append(contentsOf: page.constantButton4of6)
//                        buttonHide.append(contentsOf: page.constantButton5of6)
//                        buttonHide.append(contentsOf: page.constantButton6of6)
//                    }
//                default:
//                    break
//                }
//            case 3:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 3, Difficulty 1
//                    ayaStartStack = [199]
//                    ayaEndStack = [199]
//                    if let page = viewController as? Page031ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of6)
//                        ayatHide.append(contentsOf: page.constantAya2of6)
//                        ayatShow.append(contentsOf: page.constantAya3of6)
//                        ayatHide.append(contentsOf: page.constantAya4of6)
//                        ayatHide.append(contentsOf: page.constantAya5of6)
//                        ayatHide.append(contentsOf: page.constantAya6of6)
//                        buttonHide.append(contentsOf: page.constantButton1of6)
//                        buttonHide.append(contentsOf: page.constantButton2of6)
//                        buttonShow.append(contentsOf: page.constantButton3of6)
//                        buttonHide.append(contentsOf: page.constantButton4of6)
//                        buttonHide.append(contentsOf: page.constantButton5of6)
//                        buttonHide.append(contentsOf: page.constantButton6of6)
//                    }
//                default:
//                    break
//                }
//            case 4:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 4, Difficulty 1
//                    ayaStartStack = [200]
//                    ayaEndStack = [200]
//                    if let page = viewController as? Page031ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of6)
//                        ayatHide.append(contentsOf: page.constantAya2of6)
//                        ayatHide.append(contentsOf: page.constantAya3of6)
//                        ayatShow.append(contentsOf: page.constantAya4of6)
//                        ayatHide.append(contentsOf: page.constantAya5of6)
//                        ayatHide.append(contentsOf: page.constantAya6of6)
//                        buttonHide.append(contentsOf: page.constantButton1of6)
//                        buttonHide.append(contentsOf: page.constantButton2of6)
//                        buttonHide.append(contentsOf: page.constantButton3of6)
//                        buttonShow.append(contentsOf: page.constantButton4of6)
//                        buttonHide.append(contentsOf: page.constantButton5of6)
//                        buttonHide.append(contentsOf: page.constantButton6of6)
//                    }
//                default:
//                    break
//                }
//            case 5:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 5, Difficulty 1
//                    ayaStartStack = [201]
//                    ayaEndStack = [201]
//                    if let page = viewController as? Page031ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of6)
//                        ayatHide.append(contentsOf: page.constantAya2of6)
//                        ayatHide.append(contentsOf: page.constantAya3of6)
//                        ayatHide.append(contentsOf: page.constantAya4of6)
//                        ayatShow.append(contentsOf: page.constantAya5of6)
//                        ayatHide.append(contentsOf: page.constantAya6of6)
//                        buttonHide.append(contentsOf: page.constantButton1of6)
//                        buttonHide.append(contentsOf: page.constantButton2of6)
//                        buttonHide.append(contentsOf: page.constantButton3of6)
//                        buttonHide.append(contentsOf: page.constantButton4of6)
//                        buttonShow.append(contentsOf: page.constantButton5of6)
//                        buttonHide.append(contentsOf: page.constantButton6of6)
//                    }
//                default:
//                    break
//                }
//            case 6:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 6, Difficulty 1
//                    ayaStartStack = [202]
//                    ayaEndStack = [202]
//                    if let page = viewController as? Page031ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of6)
//                        ayatHide.append(contentsOf: page.constantAya2of6)
//                        ayatHide.append(contentsOf: page.constantAya3of6)
//                        ayatHide.append(contentsOf: page.constantAya4of6)
//                        ayatHide.append(contentsOf: page.constantAya5of6)
//                        ayatShow.append(contentsOf: page.constantAya6of6)
//                        buttonHide.append(contentsOf: page.constantButton1of6)
//                        buttonHide.append(contentsOf: page.constantButton2of6)
//                        buttonHide.append(contentsOf: page.constantButton3of6)
//                        buttonHide.append(contentsOf: page.constantButton4of6)
//                        buttonHide.append(contentsOf: page.constantButton5of6)
//                        buttonShow.append(contentsOf: page.constantButton6of6)
//                    }
//                default:
//                    break
//                }
//            default:
//                break
//            }
//        case 32:
//            // MARK: - Page 32
//            switch dayNumber {
//            case 1:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 1, Difficulty 1
//                    ayaStartStack = [203]
//                    ayaEndStack = [203]
//                    if let page = viewController as? Page032ViewController {
//                        ayatShow.append(contentsOf: page.constantAya1of8)
//                        ayatHide.append(contentsOf: page.constantAya2of8)
//                        ayatHide.append(contentsOf: page.constantAya3of8)
//                        ayatHide.append(contentsOf: page.constantAya4of8)
//                        ayatHide.append(contentsOf: page.constantAya5of8)
//                        ayatHide.append(contentsOf: page.constantAya6of8)
//                        ayatHide.append(contentsOf: page.constantAya7of8)
//                        ayatHide.append(contentsOf: page.constantAya8of8)
//                        buttonShow.append(contentsOf: page.constantButton1of8)
//                        buttonHide.append(contentsOf: page.constantButton2of8)
//                        buttonHide.append(contentsOf: page.constantButton3of8)
//                        buttonHide.append(contentsOf: page.constantButton4of8)
//                        buttonHide.append(contentsOf: page.constantButton5of8)
//                        buttonHide.append(contentsOf: page.constantButton6of8)
//                        buttonHide.append(contentsOf: page.constantButton7of8)
//                        buttonHide.append(contentsOf: page.constantButton8of8)
//                    }
//                default:
//                    break
//                }
//            case 2:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 2, Difficulty 1
//                    ayaStartStack = [204]
//                    ayaEndStack = [204]
//                    if let page = viewController as? Page032ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of8)
//                        ayatShow.append(contentsOf: page.constantAya2of8)
//                        ayatHide.append(contentsOf: page.constantAya3of8)
//                        ayatHide.append(contentsOf: page.constantAya4of8)
//                        ayatHide.append(contentsOf: page.constantAya5of8)
//                        ayatHide.append(contentsOf: page.constantAya6of8)
//                        ayatHide.append(contentsOf: page.constantAya7of8)
//                        ayatHide.append(contentsOf: page.constantAya8of8)
//                        buttonHide.append(contentsOf: page.constantButton1of8)
//                        buttonShow.append(contentsOf: page.constantButton2of8)
//                        buttonHide.append(contentsOf: page.constantButton3of8)
//                        buttonHide.append(contentsOf: page.constantButton4of8)
//                        buttonHide.append(contentsOf: page.constantButton5of8)
//                        buttonHide.append(contentsOf: page.constantButton6of8)
//                        buttonHide.append(contentsOf: page.constantButton7of8)
//                        buttonHide.append(contentsOf: page.constantButton8of8)
//                    }
//                default:
//                    break
//                }
//            case 3:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 3, Difficulty 1
//                    ayaStartStack = [205]
//                    ayaEndStack = [205]
//                    if let page = viewController as? Page032ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of8)
//                        ayatHide.append(contentsOf: page.constantAya2of8)
//                        ayatShow.append(contentsOf: page.constantAya3of8)
//                        ayatHide.append(contentsOf: page.constantAya4of8)
//                        ayatHide.append(contentsOf: page.constantAya5of8)
//                        ayatHide.append(contentsOf: page.constantAya6of8)
//                        ayatHide.append(contentsOf: page.constantAya7of8)
//                        ayatHide.append(contentsOf: page.constantAya8of8)
//                        buttonHide.append(contentsOf: page.constantButton1of8)
//                        buttonHide.append(contentsOf: page.constantButton2of8)
//                        buttonShow.append(contentsOf: page.constantButton3of8)
//                        buttonHide.append(contentsOf: page.constantButton4of8)
//                        buttonHide.append(contentsOf: page.constantButton5of8)
//                        buttonHide.append(contentsOf: page.constantButton6of8)
//                        buttonHide.append(contentsOf: page.constantButton7of8)
//                        buttonHide.append(contentsOf: page.constantButton8of8)
//                    }
//                default:
//                    break
//                }
//            case 4:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 4, Difficulty 1
//                    ayaStartStack = [206]
//                    ayaEndStack = [206]
//                    if let page = viewController as? Page032ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of8)
//                        ayatHide.append(contentsOf: page.constantAya2of8)
//                        ayatHide.append(contentsOf: page.constantAya3of8)
//                        ayatShow.append(contentsOf: page.constantAya4of8)
//                        ayatHide.append(contentsOf: page.constantAya5of8)
//                        ayatHide.append(contentsOf: page.constantAya6of8)
//                        ayatHide.append(contentsOf: page.constantAya7of8)
//                        ayatHide.append(contentsOf: page.constantAya8of8)
//                        buttonHide.append(contentsOf: page.constantButton1of8)
//                        buttonHide.append(contentsOf: page.constantButton2of8)
//                        buttonHide.append(contentsOf: page.constantButton3of8)
//                        buttonShow.append(contentsOf: page.constantButton4of8)
//                        buttonHide.append(contentsOf: page.constantButton5of8)
//                        buttonHide.append(contentsOf: page.constantButton6of8)
//                        buttonHide.append(contentsOf: page.constantButton7of8)
//                        buttonHide.append(contentsOf: page.constantButton8of8)
//                    }
//                default:
//                    break
//                }
//            case 5:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 5, Difficulty 1
//                    ayaStartStack = [207]
//                    ayaEndStack = [207]
//                    if let page = viewController as? Page032ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of8)
//                        ayatHide.append(contentsOf: page.constantAya2of8)
//                        ayatHide.append(contentsOf: page.constantAya3of8)
//                        ayatHide.append(contentsOf: page.constantAya4of8)
//                        ayatShow.append(contentsOf: page.constantAya5of8)
//                        ayatHide.append(contentsOf: page.constantAya6of8)
//                        ayatHide.append(contentsOf: page.constantAya7of8)
//                        ayatHide.append(contentsOf: page.constantAya8of8)
//                        buttonHide.append(contentsOf: page.constantButton1of8)
//                        buttonHide.append(contentsOf: page.constantButton2of8)
//                        buttonHide.append(contentsOf: page.constantButton3of8)
//                        buttonHide.append(contentsOf: page.constantButton4of8)
//                        buttonShow.append(contentsOf: page.constantButton5of8)
//                        buttonHide.append(contentsOf: page.constantButton6of8)
//                        buttonHide.append(contentsOf: page.constantButton7of8)
//                        buttonHide.append(contentsOf: page.constantButton8of8)
//                    }
//                default:
//                    break
//                }
//            case 6:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 6, Difficulty 1
//                    ayaStartStack = [208]
//                    ayaEndStack = [208]
//                    if let page = viewController as? Page032ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of8)
//                        ayatHide.append(contentsOf: page.constantAya2of8)
//                        ayatHide.append(contentsOf: page.constantAya3of8)
//                        ayatHide.append(contentsOf: page.constantAya4of8)
//                        ayatHide.append(contentsOf: page.constantAya5of8)
//                        ayatShow.append(contentsOf: page.constantAya6of8)
//                        ayatHide.append(contentsOf: page.constantAya7of8)
//                        ayatHide.append(contentsOf: page.constantAya8of8)
//                        buttonHide.append(contentsOf: page.constantButton1of8)
//                        buttonHide.append(contentsOf: page.constantButton2of8)
//                        buttonHide.append(contentsOf: page.constantButton3of8)
//                        buttonHide.append(contentsOf: page.constantButton4of8)
//                        buttonHide.append(contentsOf: page.constantButton5of8)
//                        buttonShow.append(contentsOf: page.constantButton6of8)
//                        buttonHide.append(contentsOf: page.constantButton7of8)
//                        buttonHide.append(contentsOf: page.constantButton8of8)
//                    }
//                default:
//                    break
//                }
//            case 7:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 7, Difficulty 1
//                    ayaStartStack = [209]
//                    ayaEndStack = [209]
//                    if let page = viewController as? Page032ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of8)
//                        ayatHide.append(contentsOf: page.constantAya2of8)
//                        ayatHide.append(contentsOf: page.constantAya3of8)
//                        ayatHide.append(contentsOf: page.constantAya4of8)
//                        ayatHide.append(contentsOf: page.constantAya5of8)
//                        ayatHide.append(contentsOf: page.constantAya6of8)
//                        ayatShow.append(contentsOf: page.constantAya7of8)
//                        ayatHide.append(contentsOf: page.constantAya8of8)
//                        buttonHide.append(contentsOf: page.constantButton1of8)
//                        buttonHide.append(contentsOf: page.constantButton2of8)
//                        buttonHide.append(contentsOf: page.constantButton3of8)
//                        buttonHide.append(contentsOf: page.constantButton4of8)
//                        buttonHide.append(contentsOf: page.constantButton5of8)
//                        buttonHide.append(contentsOf: page.constantButton6of8)
//                        buttonShow.append(contentsOf: page.constantButton7of8)
//                        buttonHide.append(contentsOf: page.constantButton8of8)
//                    }
//                default:
//                    break
//                }
//            case 8:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 8, Difficulty 1
//                    ayaStartStack = [210]
//                    ayaEndStack = [210]
//                    if let page = viewController as? Page032ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of8)
//                        ayatHide.append(contentsOf: page.constantAya2of8)
//                        ayatHide.append(contentsOf: page.constantAya3of8)
//                        ayatHide.append(contentsOf: page.constantAya4of8)
//                        ayatHide.append(contentsOf: page.constantAya5of8)
//                        ayatHide.append(contentsOf: page.constantAya6of8)
//                        ayatHide.append(contentsOf: page.constantAya7of8)
//                        ayatShow.append(contentsOf: page.constantAya8of8)
//                        buttonHide.append(contentsOf: page.constantButton1of8)
//                        buttonHide.append(contentsOf: page.constantButton2of8)
//                        buttonHide.append(contentsOf: page.constantButton3of8)
//                        buttonHide.append(contentsOf: page.constantButton4of8)
//                        buttonHide.append(contentsOf: page.constantButton5of8)
//                        buttonHide.append(contentsOf: page.constantButton6of8)
//                        buttonHide.append(contentsOf: page.constantButton7of8)
//                        buttonShow.append(contentsOf: page.constantButton8of8)
//                    }
//                default:
//                    break
//                }
//            default:
//                break
//            }
//        case 33:
//            // MARK: - Page 33
//            switch dayNumber {
//            case 1:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 1, Difficulty 1
//                    ayaStartStack = [211]
//                    ayaEndStack = [211]
//                    if let page = viewController as? Page033ViewController {
//                        ayatShow.append(contentsOf: page.constantAya1of5)
//                        ayatHide.append(contentsOf: page.constantAya2of5)
//                        ayatHide.append(contentsOf: page.constantAya3of5)
//                        ayatHide.append(contentsOf: page.constantAya4of5)
//                        ayatHide.append(contentsOf: page.constantAya5of5)
//                        buttonShow.append(contentsOf: page.constantButton1of5)
//                        buttonHide.append(contentsOf: page.constantButton2of5)
//                        buttonHide.append(contentsOf: page.constantButton3of5)
//                        buttonHide.append(contentsOf: page.constantButton4of5)
//                        buttonHide.append(contentsOf: page.constantButton5of5)
//                    }
//                default:
//                    break
//                }
//            case 2:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 2, Difficulty 1
//                    ayaStartStack = [212]
//                    ayaEndStack = [212]
//                    if let page = viewController as? Page033ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of5)
//                        ayatShow.append(contentsOf: page.constantAya2of5)
//                        ayatHide.append(contentsOf: page.constantAya3of5)
//                        ayatHide.append(contentsOf: page.constantAya4of5)
//                        ayatHide.append(contentsOf: page.constantAya5of5)
//                        buttonHide.append(contentsOf: page.constantButton1of5)
//                        buttonShow.append(contentsOf: page.constantButton2of5)
//                        buttonHide.append(contentsOf: page.constantButton3of5)
//                        buttonHide.append(contentsOf: page.constantButton4of5)
//                        buttonHide.append(contentsOf: page.constantButton5of5)
//                    }
//                default:
//                    break
//                }
//            case 3:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 3, Difficulty 1
//                    ayaStartStack = [213]
//                    ayaEndStack = [213]
//                    if let page = viewController as? Page033ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of5)
//                        ayatHide.append(contentsOf: page.constantAya2of5)
//                        ayatShow.append(contentsOf: page.constantAya3of5)
//                        ayatHide.append(contentsOf: page.constantAya4of5)
//                        ayatHide.append(contentsOf: page.constantAya5of5)
//                        buttonHide.append(contentsOf: page.constantButton1of5)
//                        buttonHide.append(contentsOf: page.constantButton2of5)
//                        buttonShow.append(contentsOf: page.constantButton3of5)
//                        buttonHide.append(contentsOf: page.constantButton4of5)
//                        buttonHide.append(contentsOf: page.constantButton5of5)
//                    }
//                default:
//                    break
//                }
//            case 4:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 4, Difficulty 1
//                    ayaStartStack = [214]
//                    ayaEndStack = [214]
//                    if let page = viewController as? Page033ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of5)
//                        ayatHide.append(contentsOf: page.constantAya2of5)
//                        ayatHide.append(contentsOf: page.constantAya3of5)
//                        ayatShow.append(contentsOf: page.constantAya4of5)
//                        ayatHide.append(contentsOf: page.constantAya5of5)
//                        buttonHide.append(contentsOf: page.constantButton1of5)
//                        buttonHide.append(contentsOf: page.constantButton2of5)
//                        buttonHide.append(contentsOf: page.constantButton3of5)
//                        buttonShow.append(contentsOf: page.constantButton4of5)
//                        buttonHide.append(contentsOf: page.constantButton5of5)
//                    }
//                default:
//                    break
//                }
//            case 5:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 5, Difficulty 1
//                    ayaStartStack = [215]
//                    ayaEndStack = [215]
//                    if let page = viewController as? Page033ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of5)
//                        ayatHide.append(contentsOf: page.constantAya2of5)
//                        ayatHide.append(contentsOf: page.constantAya3of5)
//                        ayatHide.append(contentsOf: page.constantAya4of5)
//                        ayatShow.append(contentsOf: page.constantAya5of5)
//                        buttonHide.append(contentsOf: page.constantButton1of5)
//                        buttonHide.append(contentsOf: page.constantButton2of5)
//                        buttonHide.append(contentsOf: page.constantButton3of5)
//                        buttonHide.append(contentsOf: page.constantButton4of5)
//                        buttonShow.append(contentsOf: page.constantButton5of5)
//                    }
//                default:
//                    break
//                }
//            default:
//                break
//            }
//        case 34:
//            // MARK: - Page 34
//            switch dayNumber {
//            case 1:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 1, Difficulty 1
//                    ayaStartStack = [216]
//                    ayaEndStack = [216]
//                    if let page = viewController as? Page034ViewController {
//                        ayatShow.append(contentsOf: page.constantAya1of4)
//                        ayatHide.append(contentsOf: page.constantAya2of4)
//                        ayatHide.append(contentsOf: page.constantAya3of4)
//                        ayatHide.append(contentsOf: page.constantAya4of4)
//                        buttonShow.append(contentsOf: page.constantButton1of4)
//                        buttonHide.append(contentsOf: page.constantButton2of4)
//                        buttonHide.append(contentsOf: page.constantButton3of4)
//                        buttonHide.append(contentsOf: page.constantButton4of4)
//                    }
//                default:
//                    break
//                }
//            case 2:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 2, Difficulty 1
//                    ayaStartStack = [217]
//                    ayaEndStack = [217]
//                    if let page = viewController as? Page034ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of4)
//                        ayatShow.append(contentsOf: page.constantAya2of4)
//                        ayatHide.append(contentsOf: page.constantAya3of4)
//                        ayatHide.append(contentsOf: page.constantAya4of4)
//                        buttonHide.append(contentsOf: page.constantButton1of4)
//                        buttonShow.append(contentsOf: page.constantButton2of4)
//                        buttonHide.append(contentsOf: page.constantButton3of4)
//                        buttonHide.append(contentsOf: page.constantButton4of4)
//                    }
//                default:
//                    break
//                }
//            case 3:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 3, Difficulty 1
//                    ayaStartStack = [218]
//                    ayaEndStack = [218]
//                    if let page = viewController as? Page034ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of4)
//                        ayatHide.append(contentsOf: page.constantAya2of4)
//                        ayatShow.append(contentsOf: page.constantAya3of4)
//                        ayatHide.append(contentsOf: page.constantAya4of4)
//                        buttonHide.append(contentsOf: page.constantButton1of4)
//                        buttonHide.append(contentsOf: page.constantButton2of4)
//                        buttonShow.append(contentsOf: page.constantButton3of4)
//                        buttonHide.append(contentsOf: page.constantButton4of4)
//                    }
//                default:
//                    break
//                }
//            case 4:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 4, Difficulty 1
//                    ayaStartStack = [219]
//                    ayaEndStack = [219]
//                    if let page = viewController as? Page034ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of4)
//                        ayatHide.append(contentsOf: page.constantAya2of4)
//                        ayatHide.append(contentsOf: page.constantAya3of4)
//                        ayatShow.append(contentsOf: page.constantAya4of4)
//                        buttonHide.append(contentsOf: page.constantButton1of4)
//                        buttonHide.append(contentsOf: page.constantButton2of4)
//                        buttonHide.append(contentsOf: page.constantButton3of4)
//                        buttonShow.append(contentsOf: page.constantButton4of4)
//                    }
//                default:
//                    break
//                }
//            default:
//                break
//            }
//        case 35:
//            // MARK: - Page 35
//            switch dayNumber {
//            case 1:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 1, Difficulty 1
//                    ayaStartStack = [220]
//                    ayaEndStack = [220]
//                    if let page = viewController as? Page035ViewController {
//                        ayatShow.append(contentsOf: page.constantAya1of5)
//                        ayatHide.append(contentsOf: page.constantAya2of5)
//                        ayatHide.append(contentsOf: page.constantAya3of5)
//                        ayatHide.append(contentsOf: page.constantAya4of5)
//                        ayatHide.append(contentsOf: page.constantAya5of5)
//                        buttonShow.append(contentsOf: page.constantButton1of5)
//                        buttonHide.append(contentsOf: page.constantButton2of5)
//                        buttonHide.append(contentsOf: page.constantButton3of5)
//                        buttonHide.append(contentsOf: page.constantButton4of5)
//                        buttonHide.append(contentsOf: page.constantButton5of5)
//                    }
//                default:
//                    break
//                }
//            case 2:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 2, Difficulty 1
//                    ayaStartStack = [221]
//                    ayaEndStack = [221]
//                    if let page = viewController as? Page035ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of5)
//                        ayatShow.append(contentsOf: page.constantAya2of5)
//                        ayatHide.append(contentsOf: page.constantAya3of5)
//                        ayatHide.append(contentsOf: page.constantAya4of5)
//                        ayatHide.append(contentsOf: page.constantAya5of5)
//                        buttonHide.append(contentsOf: page.constantButton1of5)
//                        buttonShow.append(contentsOf: page.constantButton2of5)
//                        buttonHide.append(contentsOf: page.constantButton3of5)
//                        buttonHide.append(contentsOf: page.constantButton4of5)
//                        buttonHide.append(contentsOf: page.constantButton5of5)
//                    }
//                default:
//                    break
//                }
//            case 3:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 3, Difficulty 1
//                    ayaStartStack = [222]
//                    ayaEndStack = [222]
//                    if let page = viewController as? Page035ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of5)
//                        ayatHide.append(contentsOf: page.constantAya2of5)
//                        ayatShow.append(contentsOf: page.constantAya3of5)
//                        ayatHide.append(contentsOf: page.constantAya4of5)
//                        ayatHide.append(contentsOf: page.constantAya5of5)
//                        buttonHide.append(contentsOf: page.constantButton1of5)
//                        buttonHide.append(contentsOf: page.constantButton2of5)
//                        buttonShow.append(contentsOf: page.constantButton3of5)
//                        buttonHide.append(contentsOf: page.constantButton4of5)
//                        buttonHide.append(contentsOf: page.constantButton5of5)
//                    }
//                default:
//                    break
//                }
//            case 4:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 4, Difficulty 1
//                    ayaStartStack = [223]
//                    ayaEndStack = [223]
//                    if let page = viewController as? Page035ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of5)
//                        ayatHide.append(contentsOf: page.constantAya2of5)
//                        ayatHide.append(contentsOf: page.constantAya3of5)
//                        ayatShow.append(contentsOf: page.constantAya4of5)
//                        ayatHide.append(contentsOf: page.constantAya5of5)
//                        buttonHide.append(contentsOf: page.constantButton1of5)
//                        buttonHide.append(contentsOf: page.constantButton2of5)
//                        buttonHide.append(contentsOf: page.constantButton3of5)
//                        buttonShow.append(contentsOf: page.constantButton4of5)
//                        buttonHide.append(contentsOf: page.constantButton5of5)
//                    }
//                default:
//                    break
//                }
//            case 5:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 5, Difficulty 1
//                    ayaStartStack = [224]
//                    ayaEndStack = [224]
//                    if let page = viewController as? Page035ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of5)
//                        ayatHide.append(contentsOf: page.constantAya2of5)
//                        ayatHide.append(contentsOf: page.constantAya3of5)
//                        ayatHide.append(contentsOf: page.constantAya4of5)
//                        ayatShow.append(contentsOf: page.constantAya5of5)
//                        buttonHide.append(contentsOf: page.constantButton1of5)
//                        buttonHide.append(contentsOf: page.constantButton2of5)
//                        buttonHide.append(contentsOf: page.constantButton3of5)
//                        buttonHide.append(contentsOf: page.constantButton4of5)
//                        buttonShow.append(contentsOf: page.constantButton5of5)
//                    }
//                default:
//                    break
//                }
//            default:
//                break
//            }
//        case 36:
//            // MARK: - Page 36
//            switch dayNumber {
//            case 1:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 1, Difficulty 1
//                    ayaStartStack = [225]
//                    ayaEndStack = [225]
//                    if let page = viewController as? Page036ViewController {
//                        ayatShow.append(contentsOf: page.constantAya1of6)
//                        ayatHide.append(contentsOf: page.constantAya2of6)
//                        ayatHide.append(contentsOf: page.constantAya3of6)
//                        ayatHide.append(contentsOf: page.constantAya4of6)
//                        ayatHide.append(contentsOf: page.constantAya5of6)
//                        ayatHide.append(contentsOf: page.constantAya6of6)
//                        buttonShow.append(contentsOf: page.constantButton1of6)
//                        buttonHide.append(contentsOf: page.constantButton2of6)
//                        buttonHide.append(contentsOf: page.constantButton3of6)
//                        buttonHide.append(contentsOf: page.constantButton4of6)
//                        buttonHide.append(contentsOf: page.constantButton5of6)
//                        buttonHide.append(contentsOf: page.constantButton6of6)
//                    }
//                default:
//                    break
//                }
//            case 2:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 2, Difficulty 1
//                    ayaStartStack = [226]
//                    ayaEndStack = [226]
//                    if let page = viewController as? Page036ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of6)
//                        ayatShow.append(contentsOf: page.constantAya2of6)
//                        ayatHide.append(contentsOf: page.constantAya3of6)
//                        ayatHide.append(contentsOf: page.constantAya4of6)
//                        ayatHide.append(contentsOf: page.constantAya5of6)
//                        ayatHide.append(contentsOf: page.constantAya6of6)
//                        buttonHide.append(contentsOf: page.constantButton1of6)
//                        buttonShow.append(contentsOf: page.constantButton2of6)
//                        buttonHide.append(contentsOf: page.constantButton3of6)
//                        buttonHide.append(contentsOf: page.constantButton4of6)
//                        buttonHide.append(contentsOf: page.constantButton5of6)
//                        buttonHide.append(contentsOf: page.constantButton6of6)
//                    }
//                default:
//                    break
//                }
//            case 3:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 3, Difficulty 1
//                    ayaStartStack = [227]
//                    ayaEndStack = [227]
//                    if let page = viewController as? Page036ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of6)
//                        ayatHide.append(contentsOf: page.constantAya2of6)
//                        ayatShow.append(contentsOf: page.constantAya3of6)
//                        ayatHide.append(contentsOf: page.constantAya4of6)
//                        ayatHide.append(contentsOf: page.constantAya5of6)
//                        ayatHide.append(contentsOf: page.constantAya6of6)
//                        buttonHide.append(contentsOf: page.constantButton1of6)
//                        buttonHide.append(contentsOf: page.constantButton2of6)
//                        buttonShow.append(contentsOf: page.constantButton3of6)
//                        buttonHide.append(contentsOf: page.constantButton4of6)
//                        buttonHide.append(contentsOf: page.constantButton5of6)
//                        buttonHide.append(contentsOf: page.constantButton6of6)
//                    }
//                default:
//                    break
//                }
//            case 4:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 4, Difficulty 1
//                    ayaStartStack = [228]
//                    ayaEndStack = [228]
//                    if let page = viewController as? Page036ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of6)
//                        ayatHide.append(contentsOf: page.constantAya2of6)
//                        ayatHide.append(contentsOf: page.constantAya3of6)
//                        ayatShow.append(contentsOf: page.constantAya4of6)
//                        ayatHide.append(contentsOf: page.constantAya5of6)
//                        ayatHide.append(contentsOf: page.constantAya6of6)
//                        buttonHide.append(contentsOf: page.constantButton1of6)
//                        buttonHide.append(contentsOf: page.constantButton2of6)
//                        buttonHide.append(contentsOf: page.constantButton3of6)
//                        buttonShow.append(contentsOf: page.constantButton4of6)
//                        buttonHide.append(contentsOf: page.constantButton5of6)
//                        buttonHide.append(contentsOf: page.constantButton6of6)
//                    }
//                default:
//                    break
//                }
//            case 5:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 5, Difficulty 1
//                    ayaStartStack = [229]
//                    ayaEndStack = [229]
//                    if let page = viewController as? Page036ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of6)
//                        ayatHide.append(contentsOf: page.constantAya2of6)
//                        ayatHide.append(contentsOf: page.constantAya3of6)
//                        ayatHide.append(contentsOf: page.constantAya4of6)
//                        ayatShow.append(contentsOf: page.constantAya5of6)
//                        ayatHide.append(contentsOf: page.constantAya6of6)
//                        buttonHide.append(contentsOf: page.constantButton1of6)
//                        buttonHide.append(contentsOf: page.constantButton2of6)
//                        buttonHide.append(contentsOf: page.constantButton3of6)
//                        buttonHide.append(contentsOf: page.constantButton4of6)
//                        buttonShow.append(contentsOf: page.constantButton5of6)
//                        buttonHide.append(contentsOf: page.constantButton6of6)
//                    }
//                default:
//                    break
//                }
//            case 6:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 6, Difficulty 1
//                    ayaStartStack = [230]
//                    ayaEndStack = [230]
//                    if let page = viewController as? Page036ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of6)
//                        ayatHide.append(contentsOf: page.constantAya2of6)
//                        ayatHide.append(contentsOf: page.constantAya3of6)
//                        ayatHide.append(contentsOf: page.constantAya4of6)
//                        ayatHide.append(contentsOf: page.constantAya5of6)
//                        ayatShow.append(contentsOf: page.constantAya6of6)
//                        buttonHide.append(contentsOf: page.constantButton1of6)
//                        buttonHide.append(contentsOf: page.constantButton2of6)
//                        buttonHide.append(contentsOf: page.constantButton3of6)
//                        buttonHide.append(contentsOf: page.constantButton4of6)
//                        buttonHide.append(contentsOf: page.constantButton5of6)
//                        buttonShow.append(contentsOf: page.constantButton6of6)
//                    }
//                default:
//                    break
//                }
//            default:
//                break
//            }
//        case 37:
//            // MARK: - Page 37
//            switch dayNumber {
//            case 1:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 1, Difficulty 1
//                    ayaStartStack = [231]
//                    ayaEndStack = [231]
//                    if let page = viewController as? Page037ViewController {
//                        ayatShow.append(contentsOf: page.constantAya1of3)
//                        ayatHide.append(contentsOf: page.constantAya2of3)
//                        ayatHide.append(contentsOf: page.constantAya3of3)
//                        buttonShow.append(contentsOf: page.constantButton1of3)
//                        buttonHide.append(contentsOf: page.constantButton2of3)
//                        buttonHide.append(contentsOf: page.constantButton3of3)
//                    }
//                default:
//                    break
//                }
//            case 2:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 2, Difficulty 1
//                    ayaStartStack = [232]
//                    ayaEndStack = [232]
//                    if let page = viewController as? Page037ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of3)
//                        ayatShow.append(contentsOf: page.constantAya2of3)
//                        ayatHide.append(contentsOf: page.constantAya3of3)
//                        buttonHide.append(contentsOf: page.constantButton1of3)
//                        buttonShow.append(contentsOf: page.constantButton2of3)
//                        buttonHide.append(contentsOf: page.constantButton3of3)
//                    }
//                default:
//                    break
//                }
//            case 3:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 3, Difficulty 1
//                    ayaStartStack = [233]
//                    ayaEndStack = [233]
//                    if let page = viewController as? Page037ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of3)
//                        ayatHide.append(contentsOf: page.constantAya2of3)
//                        ayatShow.append(contentsOf: page.constantAya3of3)
//                        buttonHide.append(contentsOf: page.constantButton1of3)
//                        buttonHide.append(contentsOf: page.constantButton2of3)
//                        buttonShow.append(contentsOf: page.constantButton3of3)
//                    }
//                default:
//                    break
//                }
//            default:
//                break
//            }
//        case 38:
//            // MARK: - Page 38
//            switch dayNumber {
//            case 1:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 1, Difficulty 1
//                    ayaStartStack = [234]
//                    ayaEndStack = [234]
//                    if let page = viewController as? Page038ViewController {
//                        ayatShow.append(contentsOf: page.constantAya1of4)
//                        ayatHide.append(contentsOf: page.constantAya2of4)
//                        ayatHide.append(contentsOf: page.constantAya3of4)
//                        ayatHide.append(contentsOf: page.constantAya4of4)
//                        buttonShow.append(contentsOf: page.constantButton1of4)
//                        buttonHide.append(contentsOf: page.constantButton2of4)
//                        buttonHide.append(contentsOf: page.constantButton3of4)
//                        buttonHide.append(contentsOf: page.constantButton4of4)
//                    }
//                default:
//                    break
//                }
//            case 2:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 2, Difficulty 1
//                    ayaStartStack = [235]
//                    ayaEndStack = [235]
//                    if let page = viewController as? Page038ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of4)
//                        ayatShow.append(contentsOf: page.constantAya2of4)
//                        ayatHide.append(contentsOf: page.constantAya3of4)
//                        ayatHide.append(contentsOf: page.constantAya4of4)
//                        buttonHide.append(contentsOf: page.constantButton1of4)
//                        buttonShow.append(contentsOf: page.constantButton2of4)
//                        buttonHide.append(contentsOf: page.constantButton3of4)
//                        buttonHide.append(contentsOf: page.constantButton4of4)
//                    }
//                default:
//                    break
//                }
//            case 3:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 3, Difficulty 1
//                    ayaStartStack = [236]
//                    ayaEndStack = [236]
//                    if let page = viewController as? Page038ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of4)
//                        ayatHide.append(contentsOf: page.constantAya2of4)
//                        ayatShow.append(contentsOf: page.constantAya3of4)
//                        ayatHide.append(contentsOf: page.constantAya4of4)
//                        buttonHide.append(contentsOf: page.constantButton1of4)
//                        buttonHide.append(contentsOf: page.constantButton2of4)
//                        buttonShow.append(contentsOf: page.constantButton3of4)
//                        buttonHide.append(contentsOf: page.constantButton4of4)
//                    }
//                default:
//                    break
//                }
//            case 4:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 4, Difficulty 1
//                    ayaStartStack = [237]
//                    ayaEndStack = [237]
//                    if let page = viewController as? Page038ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of4)
//                        ayatHide.append(contentsOf: page.constantAya2of4)
//                        ayatHide.append(contentsOf: page.constantAya3of4)
//                        ayatShow.append(contentsOf: page.constantAya4of4)
//                        buttonHide.append(contentsOf: page.constantButton1of4)
//                        buttonHide.append(contentsOf: page.constantButton2of4)
//                        buttonHide.append(contentsOf: page.constantButton3of4)
//                        buttonShow.append(contentsOf: page.constantButton4of4)
//                    }
//                default:
//                    break
//                }
//            default:
//                break
//            }
//        case 39:
//            // MARK: - Page 39
//            switch dayNumber {
//            case 1:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 1, Difficulty 1
//                    ayaStartStack = [238]
//                    ayaEndStack = [238]
//                    if let page = viewController as? Page039ViewController {
//                        ayatShow.append(contentsOf: page.constantAya1of8)
//                        ayatHide.append(contentsOf: page.constantAya2of8)
//                        ayatHide.append(contentsOf: page.constantAya3of8)
//                        ayatHide.append(contentsOf: page.constantAya4of8)
//                        ayatHide.append(contentsOf: page.constantAya5of8)
//                        ayatHide.append(contentsOf: page.constantAya6of8)
//                        ayatHide.append(contentsOf: page.constantAya7of8)
//                        ayatHide.append(contentsOf: page.constantAya8of8)
//                        buttonShow.append(contentsOf: page.constantButton1of8)
//                        buttonHide.append(contentsOf: page.constantButton2of8)
//                        buttonHide.append(contentsOf: page.constantButton3of8)
//                        buttonHide.append(contentsOf: page.constantButton4of8)
//                        buttonHide.append(contentsOf: page.constantButton5of8)
//                        buttonHide.append(contentsOf: page.constantButton6of8)
//                        buttonHide.append(contentsOf: page.constantButton7of8)
//                        buttonHide.append(contentsOf: page.constantButton8of8)
//                    }
//                default:
//                    break
//                }
//            case 2:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 2, Difficulty 1
//                    ayaStartStack = [239]
//                    ayaEndStack = [239]
//                    if let page = viewController as? Page039ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of8)
//                        ayatShow.append(contentsOf: page.constantAya2of8)
//                        ayatHide.append(contentsOf: page.constantAya3of8)
//                        ayatHide.append(contentsOf: page.constantAya4of8)
//                        ayatHide.append(contentsOf: page.constantAya5of8)
//                        ayatHide.append(contentsOf: page.constantAya6of8)
//                        ayatHide.append(contentsOf: page.constantAya7of8)
//                        ayatHide.append(contentsOf: page.constantAya8of8)
//                        buttonHide.append(contentsOf: page.constantButton1of8)
//                        buttonShow.append(contentsOf: page.constantButton2of8)
//                        buttonHide.append(contentsOf: page.constantButton3of8)
//                        buttonHide.append(contentsOf: page.constantButton4of8)
//                        buttonHide.append(contentsOf: page.constantButton5of8)
//                        buttonHide.append(contentsOf: page.constantButton6of8)
//                        buttonHide.append(contentsOf: page.constantButton7of8)
//                        buttonHide.append(contentsOf: page.constantButton8of8)
//                    }
//                default:
//                    break
//                }
//            case 3:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 3, Difficulty 1
//                    ayaStartStack = [240]
//                    ayaEndStack = [240]
//                    if let page = viewController as? Page039ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of8)
//                        ayatHide.append(contentsOf: page.constantAya2of8)
//                        ayatShow.append(contentsOf: page.constantAya3of8)
//                        ayatHide.append(contentsOf: page.constantAya4of8)
//                        ayatHide.append(contentsOf: page.constantAya5of8)
//                        ayatHide.append(contentsOf: page.constantAya6of8)
//                        ayatHide.append(contentsOf: page.constantAya7of8)
//                        ayatHide.append(contentsOf: page.constantAya8of8)
//                        buttonHide.append(contentsOf: page.constantButton1of8)
//                        buttonHide.append(contentsOf: page.constantButton2of8)
//                        buttonShow.append(contentsOf: page.constantButton3of8)
//                        buttonHide.append(contentsOf: page.constantButton4of8)
//                        buttonHide.append(contentsOf: page.constantButton5of8)
//                        buttonHide.append(contentsOf: page.constantButton6of8)
//                        buttonHide.append(contentsOf: page.constantButton7of8)
//                        buttonHide.append(contentsOf: page.constantButton8of8)
//                    }
//                default:
//                    break
//                }
//            case 4:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 4, Difficulty 1
//                    ayaStartStack = [241]
//                    ayaEndStack = [241]
//                    if let page = viewController as? Page039ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of8)
//                        ayatHide.append(contentsOf: page.constantAya2of8)
//                        ayatHide.append(contentsOf: page.constantAya3of8)
//                        ayatShow.append(contentsOf: page.constantAya4of8)
//                        ayatHide.append(contentsOf: page.constantAya5of8)
//                        ayatHide.append(contentsOf: page.constantAya6of8)
//                        ayatHide.append(contentsOf: page.constantAya7of8)
//                        ayatHide.append(contentsOf: page.constantAya8of8)
//                        buttonHide.append(contentsOf: page.constantButton1of8)
//                        buttonHide.append(contentsOf: page.constantButton2of8)
//                        buttonHide.append(contentsOf: page.constantButton3of8)
//                        buttonShow.append(contentsOf: page.constantButton4of8)
//                        buttonHide.append(contentsOf: page.constantButton5of8)
//                        buttonHide.append(contentsOf: page.constantButton6of8)
//                        buttonHide.append(contentsOf: page.constantButton7of8)
//                        buttonHide.append(contentsOf: page.constantButton8of8)
//                    }
//                default:
//                    break
//                }
//            case 5:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 5, Difficulty 1
//                    ayaStartStack = [242]
//                    ayaEndStack = [242]
//                    if let page = viewController as? Page039ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of8)
//                        ayatHide.append(contentsOf: page.constantAya2of8)
//                        ayatHide.append(contentsOf: page.constantAya3of8)
//                        ayatHide.append(contentsOf: page.constantAya4of8)
//                        ayatShow.append(contentsOf: page.constantAya5of8)
//                        ayatHide.append(contentsOf: page.constantAya6of8)
//                        ayatHide.append(contentsOf: page.constantAya7of8)
//                        ayatHide.append(contentsOf: page.constantAya8of8)
//                        buttonHide.append(contentsOf: page.constantButton1of8)
//                        buttonHide.append(contentsOf: page.constantButton2of8)
//                        buttonHide.append(contentsOf: page.constantButton3of8)
//                        buttonHide.append(contentsOf: page.constantButton4of8)
//                        buttonShow.append(contentsOf: page.constantButton5of8)
//                        buttonHide.append(contentsOf: page.constantButton6of8)
//                        buttonHide.append(contentsOf: page.constantButton7of8)
//                        buttonHide.append(contentsOf: page.constantButton8of8)
//                    }
//                default:
//                    break
//                }
//            case 6:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 6, Difficulty 1
//                    ayaStartStack = [243]
//                    ayaEndStack = [243]
//                    if let page = viewController as? Page039ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of8)
//                        ayatHide.append(contentsOf: page.constantAya2of8)
//                        ayatHide.append(contentsOf: page.constantAya3of8)
//                        ayatHide.append(contentsOf: page.constantAya4of8)
//                        ayatHide.append(contentsOf: page.constantAya5of8)
//                        ayatShow.append(contentsOf: page.constantAya6of8)
//                        ayatHide.append(contentsOf: page.constantAya7of8)
//                        ayatHide.append(contentsOf: page.constantAya8of8)
//                        buttonHide.append(contentsOf: page.constantButton1of8)
//                        buttonHide.append(contentsOf: page.constantButton2of8)
//                        buttonHide.append(contentsOf: page.constantButton3of8)
//                        buttonHide.append(contentsOf: page.constantButton4of8)
//                        buttonHide.append(contentsOf: page.constantButton5of8)
//                        buttonShow.append(contentsOf: page.constantButton6of8)
//                        buttonHide.append(contentsOf: page.constantButton7of8)
//                        buttonHide.append(contentsOf: page.constantButton8of8)
//                    }
//                default:
//                    break
//                }
//            case 7:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 7, Difficulty 1
//                    ayaStartStack = [244]
//                    ayaEndStack = [244]
//                    if let page = viewController as? Page039ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of8)
//                        ayatHide.append(contentsOf: page.constantAya2of8)
//                        ayatHide.append(contentsOf: page.constantAya3of8)
//                        ayatHide.append(contentsOf: page.constantAya4of8)
//                        ayatHide.append(contentsOf: page.constantAya5of8)
//                        ayatHide.append(contentsOf: page.constantAya6of8)
//                        ayatShow.append(contentsOf: page.constantAya7of8)
//                        ayatHide.append(contentsOf: page.constantAya8of8)
//                        buttonHide.append(contentsOf: page.constantButton1of8)
//                        buttonHide.append(contentsOf: page.constantButton2of8)
//                        buttonHide.append(contentsOf: page.constantButton3of8)
//                        buttonHide.append(contentsOf: page.constantButton4of8)
//                        buttonHide.append(contentsOf: page.constantButton5of8)
//                        buttonHide.append(contentsOf: page.constantButton6of8)
//                        buttonShow.append(contentsOf: page.constantButton7of8)
//                        buttonHide.append(contentsOf: page.constantButton8of8)
//                    }
//                default:
//                    break
//                }
//            case 8:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 8, Difficulty 1
//                    ayaStartStack = [245]
//                    ayaEndStack = [245]
//                    if let page = viewController as? Page039ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of8)
//                        ayatHide.append(contentsOf: page.constantAya2of8)
//                        ayatHide.append(contentsOf: page.constantAya3of8)
//                        ayatHide.append(contentsOf: page.constantAya4of8)
//                        ayatHide.append(contentsOf: page.constantAya5of8)
//                        ayatHide.append(contentsOf: page.constantAya6of8)
//                        ayatHide.append(contentsOf: page.constantAya7of8)
//                        ayatShow.append(contentsOf: page.constantAya8of8)
//                        buttonHide.append(contentsOf: page.constantButton1of8)
//                        buttonHide.append(contentsOf: page.constantButton2of8)
//                        buttonHide.append(contentsOf: page.constantButton3of8)
//                        buttonHide.append(contentsOf: page.constantButton4of8)
//                        buttonHide.append(contentsOf: page.constantButton5of8)
//                        buttonHide.append(contentsOf: page.constantButton6of8)
//                        buttonHide.append(contentsOf: page.constantButton7of8)
//                        buttonShow.append(contentsOf: page.constantButton8of8)
//                    }
//                default:
//                    break
//                }
//            default:
//                break
//            }
//        case 40:
//            // MARK: - Page 40
//            switch dayNumber {
//            case 1:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 1, Difficulty 1
//                    ayaStartStack = [246]
//                    ayaEndStack = [246]
//                    if let page = viewController as? Page040ViewController {
//                        ayatShow.append(contentsOf: page.constantAya1of3)
//                        ayatHide.append(contentsOf: page.constantAya2of3)
//                        ayatHide.append(contentsOf: page.constantAya3of3)
//                        buttonShow.append(contentsOf: page.constantButton1of3)
//                        buttonHide.append(contentsOf: page.constantButton2of3)
//                        buttonHide.append(contentsOf: page.constantButton3of3)
//                    }
//                default:
//                    break
//                }
//            case 2:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 2, Difficulty 1
//                    ayaStartStack = [247]
//                    ayaEndStack = [247]
//                    if let page = viewController as? Page040ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of3)
//                        ayatShow.append(contentsOf: page.constantAya2of3)
//                        ayatHide.append(contentsOf: page.constantAya3of3)
//                        buttonHide.append(contentsOf: page.constantButton1of3)
//                        buttonShow.append(contentsOf: page.constantButton2of3)
//                        buttonHide.append(contentsOf: page.constantButton3of3)
//                    }
//                default:
//                    break
//                }
//            case 3:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 3, Difficulty 1
//                    ayaStartStack = [248]
//                    ayaEndStack = [248]
//                    if let page = viewController as? Page040ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of3)
//                        ayatHide.append(contentsOf: page.constantAya2of3)
//                        ayatShow.append(contentsOf: page.constantAya3of3)
//                        buttonHide.append(contentsOf: page.constantButton1of3)
//                        buttonHide.append(contentsOf: page.constantButton2of3)
//                        buttonShow.append(contentsOf: page.constantButton3of3)
//                    }
//                default:
//                    break
//                }
//            default:
//                break
//            }
//        case 41:
//            // MARK: - Page 41
//            switch dayNumber {
//            case 1:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 1, Difficulty 1
//                    ayaStartStack = [249]
//                    ayaEndStack = [249]
//                    if let page = viewController as? Page041ViewController {
//                        ayatShow.append(contentsOf: page.constantAya1of4)
//                        ayatHide.append(contentsOf: page.constantAya2of4)
//                        ayatHide.append(contentsOf: page.constantAya3of4)
//                        ayatHide.append(contentsOf: page.constantAya4of4)
//                        buttonShow.append(contentsOf: page.constantButton1of4)
//                        buttonHide.append(contentsOf: page.constantButton2of4)
//                        buttonHide.append(contentsOf: page.constantButton3of4)
//                        buttonHide.append(contentsOf: page.constantButton4of4)
//                    }
//                default:
//                    break
//                }
//            case 2:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 2, Difficulty 1
//                    ayaStartStack = [250]
//                    ayaEndStack = [250]
//                    if let page = viewController as? Page041ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of4)
//                        ayatShow.append(contentsOf: page.constantAya2of4)
//                        ayatHide.append(contentsOf: page.constantAya3of4)
//                        ayatHide.append(contentsOf: page.constantAya4of4)
//                        buttonHide.append(contentsOf: page.constantButton1of4)
//                        buttonShow.append(contentsOf: page.constantButton2of4)
//                        buttonHide.append(contentsOf: page.constantButton3of4)
//                        buttonHide.append(contentsOf: page.constantButton4of4)
//                    }
//                default:
//                    break
//                }
//            case 3:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 3, Difficulty 1
//                    ayaStartStack = [251]
//                    ayaEndStack = [251]
//                    if let page = viewController as? Page041ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of4)
//                        ayatHide.append(contentsOf: page.constantAya2of4)
//                        ayatShow.append(contentsOf: page.constantAya3of4)
//                        ayatHide.append(contentsOf: page.constantAya4of4)
//                        buttonHide.append(contentsOf: page.constantButton1of4)
//                        buttonHide.append(contentsOf: page.constantButton2of4)
//                        buttonShow.append(contentsOf: page.constantButton3of4)
//                        buttonHide.append(contentsOf: page.constantButton4of4)
//                    }
//                default:
//                    break
//                }
//            case 4:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 4, Difficulty 1
//                    ayaStartStack = [252]
//                    ayaEndStack = [252]
//                    if let page = viewController as? Page041ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of4)
//                        ayatHide.append(contentsOf: page.constantAya2of4)
//                        ayatHide.append(contentsOf: page.constantAya3of4)
//                        ayatShow.append(contentsOf: page.constantAya4of4)
//                        buttonHide.append(contentsOf: page.constantButton1of4)
//                        buttonHide.append(contentsOf: page.constantButton2of4)
//                        buttonHide.append(contentsOf: page.constantButton3of4)
//                        buttonShow.append(contentsOf: page.constantButton4of4)
//                    }
//                default:
//                    break
//                }
//            default:
//                break
//            }
//        case 42:
//            // MARK: - Page 42
//            switch dayNumber {
//            case 1:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 1, Difficulty 1
//                    ayaStartStack = [253]
//                    ayaEndStack = [253]
//                    if let page = viewController as? Page042ViewController {
//                        ayatShow.append(contentsOf: page.constantAya1of4)
//                        ayatHide.append(contentsOf: page.constantAya2of4)
//                        ayatHide.append(contentsOf: page.constantAya3of4)
//                        ayatHide.append(contentsOf: page.constantAya4of4)
//                        buttonShow.append(contentsOf: page.constantButton1of4)
//                        buttonHide.append(contentsOf: page.constantButton2of4)
//                        buttonHide.append(contentsOf: page.constantButton3of4)
//                        buttonHide.append(contentsOf: page.constantButton4of4)
//                    }
//                default:
//                    break
//                }
//            case 2:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 2, Difficulty 1
//                    ayaStartStack = [254]
//                    ayaEndStack = [254]
//                    if let page = viewController as? Page042ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of4)
//                        ayatShow.append(contentsOf: page.constantAya2of4)
//                        ayatHide.append(contentsOf: page.constantAya3of4)
//                        ayatHide.append(contentsOf: page.constantAya4of4)
//                        buttonHide.append(contentsOf: page.constantButton1of4)
//                        buttonShow.append(contentsOf: page.constantButton2of4)
//                        buttonHide.append(contentsOf: page.constantButton3of4)
//                        buttonHide.append(contentsOf: page.constantButton4of4)
//                    }
//                default:
//                    break
//                }
//            case 3:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 3, Difficulty 1
//                    ayaStartStack = [255]
//                    ayaEndStack = [255]
//                    if let page = viewController as? Page042ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of4)
//                        ayatHide.append(contentsOf: page.constantAya2of4)
//                        ayatShow.append(contentsOf: page.constantAya3of4)
//                        ayatHide.append(contentsOf: page.constantAya4of4)
//                        buttonHide.append(contentsOf: page.constantButton1of4)
//                        buttonHide.append(contentsOf: page.constantButton2of4)
//                        buttonShow.append(contentsOf: page.constantButton3of4)
//                        buttonHide.append(contentsOf: page.constantButton4of4)
//                    }
//                default:
//                    break
//                }
//            case 4:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 4, Difficulty 1
//                    ayaStartStack = [256]
//                    ayaEndStack = [256]
//                    if let page = viewController as? Page042ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of4)
//                        ayatHide.append(contentsOf: page.constantAya2of4)
//                        ayatHide.append(contentsOf: page.constantAya3of4)
//                        ayatShow.append(contentsOf: page.constantAya4of4)
//                        buttonHide.append(contentsOf: page.constantButton1of4)
//                        buttonHide.append(contentsOf: page.constantButton2of4)
//                        buttonHide.append(contentsOf: page.constantButton3of4)
//                        buttonShow.append(contentsOf: page.constantButton4of4)
//                    }
//                default:
//                    break
//                }
//            default:
//                break
//            }
//        case 43:
//            // MARK: - Page 43
//            switch dayNumber {
//            case 1:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 1, Difficulty 1
//                    ayaStartStack = [257]
//                    ayaEndStack = [257]
//                    if let page = viewController as? Page043ViewController {
//                        ayatShow.append(contentsOf: page.constantAya1of3)
//                        ayatHide.append(contentsOf: page.constantAya2of3)
//                        ayatHide.append(contentsOf: page.constantAya3of3)
//                        buttonShow.append(contentsOf: page.constantButton1of3)
//                        buttonHide.append(contentsOf: page.constantButton2of3)
//                        buttonHide.append(contentsOf: page.constantButton3of3)
//                    }
//                default:
//                    break
//                }
//            case 2:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 2, Difficulty 1
//                    ayaStartStack = [258]
//                    ayaEndStack = [258]
//                    if let page = viewController as? Page043ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of3)
//                        ayatShow.append(contentsOf: page.constantAya2of3)
//                        ayatHide.append(contentsOf: page.constantAya3of3)
//                        buttonHide.append(contentsOf: page.constantButton1of3)
//                        buttonShow.append(contentsOf: page.constantButton2of3)
//                        buttonHide.append(contentsOf: page.constantButton3of3)
//                    }
//                default:
//                    break
//                }
//            case 3:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 3, Difficulty 1
//                    ayaStartStack = [259]
//                    ayaEndStack = [259]
//                    if let page = viewController as? Page043ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of3)
//                        ayatHide.append(contentsOf: page.constantAya2of3)
//                        ayatShow.append(contentsOf: page.constantAya3of3)
//                        buttonHide.append(contentsOf: page.constantButton1of3)
//                        buttonHide.append(contentsOf: page.constantButton2of3)
//                        buttonShow.append(contentsOf: page.constantButton3of3)
//                    }
//                default:
//                    break
//                }
//            default:
//                break
//            }
//        case 44:
//            // MARK: - Page 44
//            switch dayNumber {
//            case 1:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 1, Difficulty 1
//                    ayaStartStack = [260]
//                    ayaEndStack = [260]
//                    if let page = viewController as? Page044ViewController {
//                        ayatShow.append(contentsOf: page.constantAya1of5)
//                        ayatHide.append(contentsOf: page.constantAya2of5)
//                        ayatHide.append(contentsOf: page.constantAya3of5)
//                        ayatHide.append(contentsOf: page.constantAya4of5)
//                        ayatHide.append(contentsOf: page.constantAya5of5)
//                        buttonShow.append(contentsOf: page.constantButton1of5)
//                        buttonHide.append(contentsOf: page.constantButton2of5)
//                        buttonHide.append(contentsOf: page.constantButton3of5)
//                        buttonHide.append(contentsOf: page.constantButton4of5)
//                        buttonHide.append(contentsOf: page.constantButton5of5)
//                    }
//                default:
//                    break
//                }
//            case 2:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 2, Difficulty 1
//                    ayaStartStack = [261]
//                    ayaEndStack = [261]
//                    if let page = viewController as? Page044ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of5)
//                        ayatShow.append(contentsOf: page.constantAya2of5)
//                        ayatHide.append(contentsOf: page.constantAya3of5)
//                        ayatHide.append(contentsOf: page.constantAya4of5)
//                        ayatHide.append(contentsOf: page.constantAya5of5)
//                        buttonHide.append(contentsOf: page.constantButton1of5)
//                        buttonShow.append(contentsOf: page.constantButton2of5)
//                        buttonHide.append(contentsOf: page.constantButton3of5)
//                        buttonHide.append(contentsOf: page.constantButton4of5)
//                        buttonHide.append(contentsOf: page.constantButton5of5)
//                    }
//                default:
//                    break
//                }
//            case 3:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 3, Difficulty 1
//                    ayaStartStack = [262]
//                    ayaEndStack = [262]
//                    if let page = viewController as? Page044ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of5)
//                        ayatHide.append(contentsOf: page.constantAya2of5)
//                        ayatShow.append(contentsOf: page.constantAya3of5)
//                        ayatHide.append(contentsOf: page.constantAya4of5)
//                        ayatHide.append(contentsOf: page.constantAya5of5)
//                        buttonHide.append(contentsOf: page.constantButton1of5)
//                        buttonHide.append(contentsOf: page.constantButton2of5)
//                        buttonShow.append(contentsOf: page.constantButton3of5)
//                        buttonHide.append(contentsOf: page.constantButton4of5)
//                        buttonHide.append(contentsOf: page.constantButton5of5)
//                    }
//                default:
//                    break
//                }
//            case 4:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 4, Difficulty 1
//                    ayaStartStack = [263]
//                    ayaEndStack = [263]
//                    if let page = viewController as? Page044ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of5)
//                        ayatHide.append(contentsOf: page.constantAya2of5)
//                        ayatHide.append(contentsOf: page.constantAya3of5)
//                        ayatShow.append(contentsOf: page.constantAya4of5)
//                        ayatHide.append(contentsOf: page.constantAya5of5)
//                        buttonHide.append(contentsOf: page.constantButton1of5)
//                        buttonHide.append(contentsOf: page.constantButton2of5)
//                        buttonHide.append(contentsOf: page.constantButton3of5)
//                        buttonShow.append(contentsOf: page.constantButton4of5)
//                        buttonHide.append(contentsOf: page.constantButton5of5)
//                    }
//                default:
//                    break
//                }
//            case 5:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 5, Difficulty 1
//                    ayaStartStack = [264]
//                    ayaEndStack = [264]
//                    if let page = viewController as? Page044ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of5)
//                        ayatHide.append(contentsOf: page.constantAya2of5)
//                        ayatHide.append(contentsOf: page.constantAya3of5)
//                        ayatHide.append(contentsOf: page.constantAya4of5)
//                        ayatShow.append(contentsOf: page.constantAya5of5)
//                        buttonHide.append(contentsOf: page.constantButton1of5)
//                        buttonHide.append(contentsOf: page.constantButton2of5)
//                        buttonHide.append(contentsOf: page.constantButton3of5)
//                        buttonHide.append(contentsOf: page.constantButton4of5)
//                        buttonShow.append(contentsOf: page.constantButton5of5)
//                    }
//                default:
//                    break
//                }
//            default:
//                break
//            }
//        case 45:
//            // MARK: - Page 45
//            switch dayNumber {
//            case 1:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 1, Difficulty 1
//                    ayaStartStack = [265]
//                    ayaEndStack = [265]
//                    if let page = viewController as? Page045ViewController {
//                        ayatShow.append(contentsOf: page.constantAya1of5)
//                        ayatHide.append(contentsOf: page.constantAya2of5)
//                        ayatHide.append(contentsOf: page.constantAya3of5)
//                        ayatHide.append(contentsOf: page.constantAya4of5)
//                        ayatHide.append(contentsOf: page.constantAya5of5)
//                        buttonShow.append(contentsOf: page.constantButton1of5)
//                        buttonHide.append(contentsOf: page.constantButton2of5)
//                        buttonHide.append(contentsOf: page.constantButton3of5)
//                        buttonHide.append(contentsOf: page.constantButton4of5)
//                        buttonHide.append(contentsOf: page.constantButton5of5)
//                    }
//                default:
//                    break
//                }
//            case 2:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 2, Difficulty 1
//                    ayaStartStack = [266]
//                    ayaEndStack = [266]
//                    if let page = viewController as? Page045ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of5)
//                        ayatShow.append(contentsOf: page.constantAya2of5)
//                        ayatHide.append(contentsOf: page.constantAya3of5)
//                        ayatHide.append(contentsOf: page.constantAya4of5)
//                        ayatHide.append(contentsOf: page.constantAya5of5)
//                        buttonHide.append(contentsOf: page.constantButton1of5)
//                        buttonShow.append(contentsOf: page.constantButton2of5)
//                        buttonHide.append(contentsOf: page.constantButton3of5)
//                        buttonHide.append(contentsOf: page.constantButton4of5)
//                        buttonHide.append(contentsOf: page.constantButton5of5)
//                    }
//                default:
//                    break
//                }
//            case 3:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 3, Difficulty 1
//                    ayaStartStack = [267]
//                    ayaEndStack = [267]
//                    if let page = viewController as? Page045ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of5)
//                        ayatHide.append(contentsOf: page.constantAya2of5)
//                        ayatShow.append(contentsOf: page.constantAya3of5)
//                        ayatHide.append(contentsOf: page.constantAya4of5)
//                        ayatHide.append(contentsOf: page.constantAya5of5)
//                        buttonHide.append(contentsOf: page.constantButton1of5)
//                        buttonHide.append(contentsOf: page.constantButton2of5)
//                        buttonShow.append(contentsOf: page.constantButton3of5)
//                        buttonHide.append(contentsOf: page.constantButton4of5)
//                        buttonHide.append(contentsOf: page.constantButton5of5)
//                    }
//                default:
//                    break
//                }
//            case 4:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 4, Difficulty 1
//                    ayaStartStack = [268]
//                    ayaEndStack = [268]
//                    if let page = viewController as? Page045ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of5)
//                        ayatHide.append(contentsOf: page.constantAya2of5)
//                        ayatHide.append(contentsOf: page.constantAya3of5)
//                        ayatShow.append(contentsOf: page.constantAya4of5)
//                        ayatHide.append(contentsOf: page.constantAya5of5)
//                        buttonHide.append(contentsOf: page.constantButton1of5)
//                        buttonHide.append(contentsOf: page.constantButton2of5)
//                        buttonHide.append(contentsOf: page.constantButton3of5)
//                        buttonShow.append(contentsOf: page.constantButton4of5)
//                        buttonHide.append(contentsOf: page.constantButton5of5)
//                    }
//                default:
//                    break
//                }
//            case 5:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 5, Difficulty 1
//                    ayaStartStack = [269]
//                    ayaEndStack = [269]
//                    if let page = viewController as? Page045ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of5)
//                        ayatHide.append(contentsOf: page.constantAya2of5)
//                        ayatHide.append(contentsOf: page.constantAya3of5)
//                        ayatHide.append(contentsOf: page.constantAya4of5)
//                        ayatShow.append(contentsOf: page.constantAya5of5)
//                        buttonHide.append(contentsOf: page.constantButton1of5)
//                        buttonHide.append(contentsOf: page.constantButton2of5)
//                        buttonHide.append(contentsOf: page.constantButton3of5)
//                        buttonHide.append(contentsOf: page.constantButton4of5)
//                        buttonShow.append(contentsOf: page.constantButton5of5)
//                    }
//                default:
//                    break
//                }
//            default:
//                break
//            }
//        case 46:
//            // MARK: - Page 46
//            switch dayNumber {
//            case 1:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 1, Difficulty 1
//                    ayaStartStack = [270]
//                    ayaEndStack = [270]
//                    if let page = viewController as? Page046ViewController {
//                        ayatShow.append(contentsOf: page.constantAya1of5)
//                        ayatHide.append(contentsOf: page.constantAya2of5)
//                        ayatHide.append(contentsOf: page.constantAya3of5)
//                        ayatHide.append(contentsOf: page.constantAya4of5)
//                        ayatHide.append(contentsOf: page.constantAya5of5)
//                        buttonShow.append(contentsOf: page.constantButton1of5)
//                        buttonHide.append(contentsOf: page.constantButton2of5)
//                        buttonHide.append(contentsOf: page.constantButton3of5)
//                        buttonHide.append(contentsOf: page.constantButton4of5)
//                        buttonHide.append(contentsOf: page.constantButton5of5)
//                    }
//                default:
//                    break
//                }
//            case 2:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 2, Difficulty 1
//                    ayaStartStack = [271]
//                    ayaEndStack = [271]
//                    if let page = viewController as? Page046ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of5)
//                        ayatShow.append(contentsOf: page.constantAya2of5)
//                        ayatHide.append(contentsOf: page.constantAya3of5)
//                        ayatHide.append(contentsOf: page.constantAya4of5)
//                        ayatHide.append(contentsOf: page.constantAya5of5)
//                        buttonHide.append(contentsOf: page.constantButton1of5)
//                        buttonShow.append(contentsOf: page.constantButton2of5)
//                        buttonHide.append(contentsOf: page.constantButton3of5)
//                        buttonHide.append(contentsOf: page.constantButton4of5)
//                        buttonHide.append(contentsOf: page.constantButton5of5)
//                    }
//                default:
//                    break
//                }
//            case 3:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 3, Difficulty 1
//                    ayaStartStack = [272]
//                    ayaEndStack = [272]
//                    if let page = viewController as? Page046ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of5)
//                        ayatHide.append(contentsOf: page.constantAya2of5)
//                        ayatShow.append(contentsOf: page.constantAya3of5)
//                        ayatHide.append(contentsOf: page.constantAya4of5)
//                        ayatHide.append(contentsOf: page.constantAya5of5)
//                        buttonHide.append(contentsOf: page.constantButton1of5)
//                        buttonHide.append(contentsOf: page.constantButton2of5)
//                        buttonShow.append(contentsOf: page.constantButton3of5)
//                        buttonHide.append(contentsOf: page.constantButton4of5)
//                        buttonHide.append(contentsOf: page.constantButton5of5)
//                    }
//                default:
//                    break
//                }
//            case 4:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 4, Difficulty 1
//                    ayaStartStack = [273]
//                    ayaEndStack = [273]
//                    if let page = viewController as? Page046ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of5)
//                        ayatHide.append(contentsOf: page.constantAya2of5)
//                        ayatHide.append(contentsOf: page.constantAya3of5)
//                        ayatShow.append(contentsOf: page.constantAya4of5)
//                        ayatHide.append(contentsOf: page.constantAya5of5)
//                        buttonHide.append(contentsOf: page.constantButton1of5)
//                        buttonHide.append(contentsOf: page.constantButton2of5)
//                        buttonHide.append(contentsOf: page.constantButton3of5)
//                        buttonShow.append(contentsOf: page.constantButton4of5)
//                        buttonHide.append(contentsOf: page.constantButton5of5)
//                    }
//                default:
//                    break
//                }
//            case 5:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 5, Difficulty 1
//                    ayaStartStack = [274]
//                    ayaEndStack = [274]
//                    if let page = viewController as? Page046ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of5)
//                        ayatHide.append(contentsOf: page.constantAya2of5)
//                        ayatHide.append(contentsOf: page.constantAya3of5)
//                        ayatHide.append(contentsOf: page.constantAya4of5)
//                        ayatShow.append(contentsOf: page.constantAya5of5)
//                        buttonHide.append(contentsOf: page.constantButton1of5)
//                        buttonHide.append(contentsOf: page.constantButton2of5)
//                        buttonHide.append(contentsOf: page.constantButton3of5)
//                        buttonHide.append(contentsOf: page.constantButton4of5)
//                        buttonShow.append(contentsOf: page.constantButton5of5)
//                    }
//                default:
//                    break
//                }
//            default:
//                break
//            }
//        case 47:
//            // MARK: - Page 47
//            switch dayNumber {
//            case 1:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 1, Difficulty 1
//                    ayaStartStack = [275]
//                    ayaEndStack = [275]
//                    if let page = viewController as? Page047ViewController {
//                        ayatShow.append(contentsOf: page.constantAya1of7)
//                        ayatHide.append(contentsOf: page.constantAya2of7)
//                        ayatHide.append(contentsOf: page.constantAya3of7)
//                        ayatHide.append(contentsOf: page.constantAya4of7)
//                        ayatHide.append(contentsOf: page.constantAya5of7)
//                        ayatHide.append(contentsOf: page.constantAya6of7)
//                        ayatHide.append(contentsOf: page.constantAya7of7)
//                        buttonShow.append(contentsOf: page.constantButton1of7)
//                        buttonHide.append(contentsOf: page.constantButton2of7)
//                        buttonHide.append(contentsOf: page.constantButton3of7)
//                        buttonHide.append(contentsOf: page.constantButton4of7)
//                        buttonHide.append(contentsOf: page.constantButton5of7)
//                        buttonHide.append(contentsOf: page.constantButton6of7)
//                        buttonHide.append(contentsOf: page.constantButton7of7)
//                    }
//                default:
//                    break
//                }
//            case 2:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 2, Difficulty 1
//                    ayaStartStack = [276]
//                    ayaEndStack = [276]
//                    if let page = viewController as? Page047ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of7)
//                        ayatShow.append(contentsOf: page.constantAya2of7)
//                        ayatHide.append(contentsOf: page.constantAya3of7)
//                        ayatHide.append(contentsOf: page.constantAya4of7)
//                        ayatHide.append(contentsOf: page.constantAya5of7)
//                        ayatHide.append(contentsOf: page.constantAya6of7)
//                        ayatHide.append(contentsOf: page.constantAya7of7)
//                        buttonHide.append(contentsOf: page.constantButton1of7)
//                        buttonShow.append(contentsOf: page.constantButton2of7)
//                        buttonHide.append(contentsOf: page.constantButton3of7)
//                        buttonHide.append(contentsOf: page.constantButton4of7)
//                        buttonHide.append(contentsOf: page.constantButton5of7)
//                        buttonHide.append(contentsOf: page.constantButton6of7)
//                        buttonHide.append(contentsOf: page.constantButton7of7)
//                    }
//                default:
//                    break
//                }
//            case 3:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 3, Difficulty 1
//                    ayaStartStack = [277]
//                    ayaEndStack = [277]
//                    if let page = viewController as? Page047ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of7)
//                        ayatHide.append(contentsOf: page.constantAya2of7)
//                        ayatShow.append(contentsOf: page.constantAya3of7)
//                        ayatHide.append(contentsOf: page.constantAya4of7)
//                        ayatHide.append(contentsOf: page.constantAya5of7)
//                        ayatHide.append(contentsOf: page.constantAya6of7)
//                        ayatHide.append(contentsOf: page.constantAya7of7)
//                        buttonHide.append(contentsOf: page.constantButton1of7)
//                        buttonHide.append(contentsOf: page.constantButton2of7)
//                        buttonShow.append(contentsOf: page.constantButton3of7)
//                        buttonHide.append(contentsOf: page.constantButton4of7)
//                        buttonHide.append(contentsOf: page.constantButton5of7)
//                        buttonHide.append(contentsOf: page.constantButton6of7)
//                        buttonHide.append(contentsOf: page.constantButton7of7)
//                    }
//                default:
//                    break
//                }
//            case 4:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 4, Difficulty 1
//                    ayaStartStack = [278]
//                    ayaEndStack = [278]
//                    if let page = viewController as? Page047ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of7)
//                        ayatHide.append(contentsOf: page.constantAya2of7)
//                        ayatHide.append(contentsOf: page.constantAya3of7)
//                        ayatShow.append(contentsOf: page.constantAya4of7)
//                        ayatHide.append(contentsOf: page.constantAya5of7)
//                        ayatHide.append(contentsOf: page.constantAya6of7)
//                        ayatHide.append(contentsOf: page.constantAya7of7)
//                        buttonHide.append(contentsOf: page.constantButton1of7)
//                        buttonHide.append(contentsOf: page.constantButton2of7)
//                        buttonHide.append(contentsOf: page.constantButton3of7)
//                        buttonShow.append(contentsOf: page.constantButton4of7)
//                        buttonHide.append(contentsOf: page.constantButton5of7)
//                        buttonHide.append(contentsOf: page.constantButton6of7)
//                        buttonHide.append(contentsOf: page.constantButton7of7)
//                    }
//                default:
//                    break
//                }
//            case 5:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 5, Difficulty 1
//                    ayaStartStack = [279]
//                    ayaEndStack = [279]
//                    if let page = viewController as? Page047ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of7)
//                        ayatHide.append(contentsOf: page.constantAya2of7)
//                        ayatHide.append(contentsOf: page.constantAya3of7)
//                        ayatHide.append(contentsOf: page.constantAya4of7)
//                        ayatShow.append(contentsOf: page.constantAya5of7)
//                        ayatHide.append(contentsOf: page.constantAya6of7)
//                        ayatHide.append(contentsOf: page.constantAya7of7)
//                        buttonHide.append(contentsOf: page.constantButton1of7)
//                        buttonHide.append(contentsOf: page.constantButton2of7)
//                        buttonHide.append(contentsOf: page.constantButton3of7)
//                        buttonHide.append(contentsOf: page.constantButton4of7)
//                        buttonShow.append(contentsOf: page.constantButton5of7)
//                        buttonHide.append(contentsOf: page.constantButton6of7)
//                        buttonHide.append(contentsOf: page.constantButton7of7)
//                    }
//                default:
//                    break
//                }
//            case 6:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 6, Difficulty 1
//                    ayaStartStack = [280]
//                    ayaEndStack = [280]
//                    if let page = viewController as? Page047ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of7)
//                        ayatHide.append(contentsOf: page.constantAya2of7)
//                        ayatHide.append(contentsOf: page.constantAya3of7)
//                        ayatHide.append(contentsOf: page.constantAya4of7)
//                        ayatHide.append(contentsOf: page.constantAya5of7)
//                        ayatShow.append(contentsOf: page.constantAya6of7)
//                        ayatHide.append(contentsOf: page.constantAya7of7)
//                        buttonHide.append(contentsOf: page.constantButton1of7)
//                        buttonHide.append(contentsOf: page.constantButton2of7)
//                        buttonHide.append(contentsOf: page.constantButton3of7)
//                        buttonHide.append(contentsOf: page.constantButton4of7)
//                        buttonHide.append(contentsOf: page.constantButton5of7)
//                        buttonShow.append(contentsOf: page.constantButton6of7)
//                        buttonHide.append(contentsOf: page.constantButton7of7)
//                    }
//                default:
//                    break
//                }
//            case 7:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 7, Difficulty 1
//                    ayaStartStack = [281]
//                    ayaEndStack = [281]
//                    if let page = viewController as? Page047ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of7)
//                        ayatHide.append(contentsOf: page.constantAya2of7)
//                        ayatHide.append(contentsOf: page.constantAya3of7)
//                        ayatHide.append(contentsOf: page.constantAya4of7)
//                        ayatHide.append(contentsOf: page.constantAya5of7)
//                        ayatHide.append(contentsOf: page.constantAya6of7)
//                        ayatShow.append(contentsOf: page.constantAya7of7)
//                        buttonHide.append(contentsOf: page.constantButton1of7)
//                        buttonHide.append(contentsOf: page.constantButton2of7)
//                        buttonHide.append(contentsOf: page.constantButton3of7)
//                        buttonHide.append(contentsOf: page.constantButton4of7)
//                        buttonHide.append(contentsOf: page.constantButton5of7)
//                        buttonHide.append(contentsOf: page.constantButton6of7)
//                        buttonShow.append(contentsOf: page.constantButton7of7)
//                    }
//                default:
//                    break
//                }
//            default:
//                break
//            }
//        case 48:
//            // MARK: - Page 48
//            switch dayNumber {
//            case 1:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 3, Difficulty 1
//                    ayaStartStack = [282]
//                    ayaEndStack = [282]
//                    if let page = viewController as? Page048ViewController {
//                        ayatShow.append(contentsOf: page.constantAya1of1)
//                        buttonShow.append(contentsOf: page.constantButton1of1)
//                    }
//                default:
//                    break
//                }
//            default:
//                break
//            }
//        case 49:
//            // MARK: - Page 49
//            switch dayNumber {
//            case 1:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 1, Difficulty 1
//                    ayaStartStack = [283]
//                    ayaEndStack = [283]
//                    if let page = viewController as? Page049ViewController {
//                        ayatShow.append(contentsOf: page.constantAya1of4)
//                        ayatHide.append(contentsOf: page.constantAya2of4)
//                        ayatHide.append(contentsOf: page.constantAya3of4)
//                        ayatHide.append(contentsOf: page.constantAya4of4)
//                        buttonShow.append(contentsOf: page.constantButton1of4)
//                        buttonHide.append(contentsOf: page.constantButton2of4)
//                        buttonHide.append(contentsOf: page.constantButton3of4)
//                        buttonHide.append(contentsOf: page.constantButton4of4)
//                    }
//                default:
//                    break
//                }
//            case 2:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 2, Difficulty 1
//                    ayaStartStack = [284]
//                    ayaEndStack = [284]
//                    if let page = viewController as? Page049ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of4)
//                        ayatShow.append(contentsOf: page.constantAya2of4)
//                        ayatHide.append(contentsOf: page.constantAya3of4)
//                        ayatHide.append(contentsOf: page.constantAya4of4)
//                        buttonHide.append(contentsOf: page.constantButton1of4)
//                        buttonShow.append(contentsOf: page.constantButton2of4)
//                        buttonHide.append(contentsOf: page.constantButton3of4)
//                        buttonHide.append(contentsOf: page.constantButton4of4)
//                    }
//                default:
//                    break
//                }
//            case 3:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 3, Difficulty 1
//                    ayaStartStack = [285]
//                    ayaEndStack = [285]
//                    if let page = viewController as? Page049ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of4)
//                        ayatHide.append(contentsOf: page.constantAya2of4)
//                        ayatShow.append(contentsOf: page.constantAya3of4)
//                        ayatHide.append(contentsOf: page.constantAya4of4)
//                        buttonHide.append(contentsOf: page.constantButton1of4)
//                        buttonHide.append(contentsOf: page.constantButton2of4)
//                        buttonShow.append(contentsOf: page.constantButton3of4)
//                        buttonHide.append(contentsOf: page.constantButton4of4)
//                    }
//                default:
//                    break
//                }
//            case 4:
//                switch difficulty {
//                case 1:
//                    // MARK: Day 4, Difficulty 1
//                    ayaStartStack = [286]
//                    ayaEndStack = [286]
//                    if let page = viewController as? Page049ViewController {
//                        ayatHide.append(contentsOf: page.constantAya1of4)
//                        ayatHide.append(contentsOf: page.constantAya2of4)
//                        ayatHide.append(contentsOf: page.constantAya3of4)
//                        ayatShow.append(contentsOf: page.constantAya4of4)
//                        buttonHide.append(contentsOf: page.constantButton1of4)
//                        buttonHide.append(contentsOf: page.constantButton2of4)
//                        buttonHide.append(contentsOf: page.constantButton3of4)
//                        buttonShow.append(contentsOf: page.constantButton4of4)
//                    }
//                default:
//                    break
//                }
//            default:
//                break
//            }
//
//            default:
//                break
//            }
        self.ayatShown = ayatShow
        self.ayatHidden = ayatHide
        self.buttonShown = buttonShow
        self.buttonHidden = buttonHide
        return (pageStack, suraStack, suraAllStack, ayaStartStack, ayaEndStack)
    }
}

