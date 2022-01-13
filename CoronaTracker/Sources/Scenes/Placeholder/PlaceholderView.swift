//
//  PlaceholderView.swift
//  CoronaTracker
//
//  Created by mike on 13.01.2022.
//

import SwiftUI

struct PlaceholderView: View {
    var body: some View {
		ZStack {
			Color.green
			VStack {
				Text("This is").padding()
				Text("Placeholder")
			}
		}
    }
}

struct PlaceholderView_Previews: PreviewProvider {
    static var previews: some View {
        PlaceholderView()
    }
}
