//
//  FilmModel.swift
//  Guess It WatchKit Extension
//
//  Created by Yurii Sameliuk on 12/11/2020.
//

import Foundation

struct FilmModel {
    var emoji: String
    var name: String
    
    static func getFilm() -> [FilmModel] {
        
        return [FilmModel(emoji: "💎✋", name: "Брилиантовая рука"),
                FilmModel(emoji: "🎩🍀", name: "Джентельмены удачи"),
                FilmModel(emoji: "🔨☁️☁️☁️", name: "Достучаться до небес"),
                FilmModel(emoji: "💼🐻👨‍👩‍👦", name: "Кристофер Робин"),
                FilmModel(emoji: "🌍🐒🐒🐒", name: "Планета обезьян")]
    }
}
