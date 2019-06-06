//
//  LandmarkList.swift
//  swiftuiFlutter
//
//  Created by mono on 2019/06/06.
//  Copyright © 2019 Aquatica Inc. All rights reserved.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        List(landmarkData) { landmark in
            NavigationButton(destination: LandmarkDetail(landmark: landmark)) {
                LandmarkRow(landmark: landmark)
            }
            }
            .navigationBarTitle(Text("Landmarks"), displayMode: .large)
    }
}

#if DEBUG
struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone SE", "iPhone XS Max"].identified(by: \.self)) { deviceName in
            LandmarkList()
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
    }
}
#endif
