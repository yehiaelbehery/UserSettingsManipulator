//
//  String.swift
//
//  Created by Yehia Elbehery.
//

extension String {
    
    func _trimmed() -> String {
        return trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)
    }

    func _JSONStringConvertedToDictionary() -> [String: Any]? {
        if let data = self.data(using: .utf8) {
            do {
                return try JSONSerialization.jsonObject(with: data, options: []) as? [String: Any]
            } catch {
                print(error.localizedDescription)
            }
        }
        return nil
    }
    func _getRegexMatches(pattern: String) -> [String] {
        do {
            let regex = try NSRegularExpression(pattern: pattern, options: [])
            let range = NSMakeRange(0, self.count)
            
            let matches = regex.matches(in: self, options: [], range: range).map {
                String(self[Range($0.range, in: self)!])}
            
            return matches
        } catch {
            return []
        }
    }
    func _replaceRegexMatches(pattern: String, replaceWith: String) -> String {
        do {
            let regex = try NSRegularExpression(pattern: pattern, options: NSRegularExpression.Options.caseInsensitive)
            let range = NSMakeRange(0, self.count)
            return regex.stringByReplacingMatches(in: self, options: [], range: range, withTemplate: replaceWith)
        } catch {
            return self
        }
    }
}
