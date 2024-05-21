//
//  CompletionToDeleteTip.swift
//  MyToDos
//
//  Created by Marcin Jędrzejak on 21/05/2024.
//

import Foundation
import TipKit

struct CompletionToDeleteTip: Tip {

    @Parameter
    static var reachedThresholdParameter: Bool = false

    var title: Text {
        Text("Time to clean up")
            .italic()
            .font(.title)
            .foregroundStyle(.red)
    }

    var message: Text? {
        Text("Start swiping from the trailing edge to delete completed ToDos")
    }

    var image: Image? {
        Image(systemName: "trash")
    }

    var rules: [Rule] {
        [
            #Rule(Self.$reachedThresholdParameter) {
                $0 == true
            }
        ]
    }
}
