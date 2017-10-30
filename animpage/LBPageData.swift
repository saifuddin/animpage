//
//  LBPageData.swift
//  Hifz
//
//  Created by Ahmad Idzuan on 5/4/16.
//  Copyright © 2016 Brainstorm Technologies Sdn Bhd. All rights reserved.
//

import Foundation

struct LBPageData {
    var suraName: String = ""
    var suraAname: String = ""
    var suraTname: [String] = []
    var suraEname: [String] = []
    var suraArray: [String] = []
    var ayaNumber: [Int] = []
    var ayaActualNumber: [Int] = []
    var ayaStartNumber: [Int] = []
    var ayaEndNumber: [Int] = []
    var englishTranslation: [String] = []
    var englishActualTranslation: [String] = []
    
    init(page: Int) {
        if let path = Bundle.main.path(forResource: String(page), ofType: "plist") {
            let contents = NSDictionary(contentsOfFile: path)
            let suras = contents!.object(forKey: "suras") as? [AnyObject]
            
            for sura in suras! {
                if self.suraName.characters.count == 0 {
                    self.suraName += (sura["name"] as! String)
                    self.suraAname += (sura["aname"] as! String)
                } else {
                    self.suraName += "   " + (sura["name"] as! String)
                    self.suraAname += "   " + (sura["aname"] as! String)
                }
                self.suraArray.append(sura["aname"] as! String)
                let tname = sura["tname"] as! String
                self.suraTname.append(tname)
                self.suraEname.append(tname.replacingOccurrences(of: "Al-", with: "al-").replacingOccurrences(of: "Aal-", with: "aal-").replacingOccurrences(of: "At-", with: "at-").replacingOccurrences(of: "Ar-", with: "ar-").replacingOccurrences(of: "An-", with: "an-").replacingOccurrences(of: "Ash-", with: "ash-").replacingOccurrences(of: "As-", with: "as-").replacingOccurrences(of: "Az-", with: "az-").replacingOccurrences(of: "Ad-", with: "ad-").replacingOccurrences(of: "Adh-", with: "adh-"))
                
                let ayas = sura.object(forKey: "ayaNumbers")!
                self.ayaStartNumber.append((ayas as! [Int]).first!)
                self.ayaEndNumber.append((ayas as! [Int]).last!)
                if (ayas as! [Int]).first == 1 {
                    self.ayaNumber.append(0)
                    self.englishTranslation.append(sura["ename"] as! String)
                }
                self.ayaNumber += ayas as! [Int]
                self.ayaActualNumber += ayas as! [Int]
                let translations = sura.object(forKey: "translations") as! [String : [String]]
                self.englishTranslation += translations["english"]!
                self.englishActualTranslation += translations["english"]!
            }
        }
    }
}
