//
//  ContentView.swift
//  swiftuiFlutter
//
//  Created by mono on 2019/06/06.
//  Copyright © 2019 Aquatica Inc. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    @EnvironmentObject var userData: UserData
    
    var body: some View {
        NavigationView {
            List {
                NavigationButton(destination: LandmarkList()) {
                    HStack {
                        Text("Landmarks")
                    }
                }
                }
                .navigationBarTitle(Text("SwiftUI"), displayMode: .inline)
        }
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
