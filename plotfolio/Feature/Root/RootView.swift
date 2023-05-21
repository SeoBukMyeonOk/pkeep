//
//  RootView.swift
//  plotfolio
//
//  Created by 송영모 on 2023/05/21.
//

import SwiftUI

import ComposableArchitecture

struct RootView: View {
    public let store: StoreOf<RootStore>
    
    public var body: some View {
        WithViewStore(self.store, observe: { $0 }) { viewStore in
            NavigationStack(path: viewStore.binding(\.$path)) {
                HomeView(store: self.store.scope(state: \.home, action: RootStore.Action.home))
                    .navigationTitle("Plotfolio")
            }
        }
    }
}

struct RootView_Previews: PreviewProvider {
    static var previews: some View {
        RootView(store: .init(initialState: .init(), reducer: RootStore()._printChanges()))
    }
}
