//
//  Page.swift
//  LivrosLuminus
//
//  Created by Mariana Amábile Martinelli on 31/07/25.
//

import Foundation

/// A anatomia de uma página.
struct Page: Decodable {
    let text: String?
    let imageURL: URL?
}

