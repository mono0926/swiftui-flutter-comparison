//
//  UserData.swift
//  swiftuiFlutter
//
//  Created by mono on 2019/06/07.
//  Copyright © 2019 Aquatica Inc. All rights reserved.
//

import Foundation
import SwiftUI
import Combine

final class UserData: BindableObject {

    let didChange = PassthroughSubject<UserData, Never>()

    var showFavoritesOnly = false {
        didSet {
            didChange.send(self)
        }
    }

    var landmarks = landmarkData {
        didSet {
            didChange.send(self)
        }
    }
}
