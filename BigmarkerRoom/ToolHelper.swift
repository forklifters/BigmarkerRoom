//
//  ToolHelper.swift
//  bigmarker
//
//  Created by hanqing on 12/28/14.
//  Copyright (c) 2014 hanqing. All rights reserved.
//
import EventKit

class ToolHelper {
    
    class func currentUserAvatarUrl() ->String {
        let prefs:UserDefaults = UserDefaults.standard
        
        if let avatar = prefs.object(forKey: "AVATARURL") as? String{
            return avatar
        } else {
            return ""
        }
    }
    
   class func convertEmoji(_ msg: inout String) -> Dictionary<Int, String>{
        
        var values: Dictionary<Int, String> = [:]
        var images: Array<String> = []
        if Regex("(<img.*?>)").test(msg) {
            let matches = matchesForRegexInText("(<img.*?>)", text: msg)
            
            for match in matches {
                var emojiName = ""
                
                // 得到emoji名称
                var s = matchesForRegexInText("/(.*png)", text: match)
                if !s.isEmpty{
                    let s1 = s[0] as String
                    let news = s1.characters.split {$0 == "/"}.map { String($0) }
                    emojiName = news.last!
                    images.append(emojiName)
                }
                
                //计算emoji位置
                while (msg.range(of: match) != nil) {
                    let index = msg.range(of: match)?.lowerBound
                    msg = msg.replacingCharacters(in: msg.range(of: match)!, with: "")
                    values[Int("\(index!)")!] = emojiName
                }
            }
        }
        
        return values
    }
    
    
    class func getCurrentTimeStamp()->Int{
        let now = Date()
        let timeInterval:TimeInterval = now.timeIntervalSince1970
        let timeStamp = Int(timeInterval)
        return timeStamp
    }
    
    class func matchesForRegexInText(_ regex: String!, text: String!) -> [String] {
        
        let regex = try! NSRegularExpression(pattern: regex,
                                             options: [])
        let nsString = text as NSString
        let results = regex.matches(in: text,
                                            options: [], range: NSMakeRange(0, nsString.length))
        
        return results.map { nsString.substring(with: $0.range)}
    }
    
   class func uniq<S : Sequence, T : Hashable>(_ source: S) -> [T] where S.Iterator.Element == T {
        var buffer = [T]()
        var added = Set<T>()
        for elem in source {
            if !added.contains(elem) {
                buffer.append(elem)
                added.insert(elem)
            }
        }
        return buffer
    }


    
    class func clearHtml(_ str: String) -> String{
        let regex:NSRegularExpression  = try! NSRegularExpression(
            pattern: "<.*?>",
            options: NSRegularExpression.Options.caseInsensitive)
        
        let range = NSMakeRange(0, str.characters.count)
        let htmlLessString :String = regex.stringByReplacingMatches(in: str,
            options: NSRegularExpression.MatchingOptions(),
            range:range ,
            withTemplate: "")
        return htmlLessString
    }
    
    
    
    class func convertDateFormater(_ dateString: String) -> Date? {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss"//this your string date format
        dateFormatter.timeZone = TimeZone(identifier: "UTC")
        return dateFormatter.date(from: dateString)
    }
    
    
    class Regex {
        let internalExpression: NSRegularExpression
        let pattern: String
        
        init(_ pattern: String) {
            self.pattern = pattern
            self.internalExpression = try! NSRegularExpression(pattern: pattern, options: .caseInsensitive)
        }
        
        func test(_ input: String) -> Bool {
            let matches = self.internalExpression.matches(in: input, options: [], range:NSMakeRange(0, input.characters.count))
            return matches.count > 0
        }
    }
    
}
