//
//  CreateToDoTip.swift
//  MyToDos
//
//  Created by Marcin Jędrzejak on 21/05/2024.
//

import Foundation
import TipKit

struct CreateToDoTip: Tip {
    var title: Text {
        Text("Create your first ToDo")
    }

    var message: Text? {
        Text("Tap on this button to create your first ToDo")
    }

    var image: Image? {
        Image(.noToDos)
    }
}
