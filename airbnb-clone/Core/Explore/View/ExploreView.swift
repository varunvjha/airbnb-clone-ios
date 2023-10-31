//
//  ExploreView.swift
//  airbnb-clone
//
//  Created by Varun on 25/10/23.
//

import SwiftUI

struct ExploreView: View {
    
    @State private var showDestinationSearchView = false
    @StateObject var viewModel = ExploreViewModel(service: ExploreService())
    
    var body: some View {
        NavigationStack {
            
            if (showDestinationSearchView) {
                DestinationSearchView(viewModel: viewModel, show: $showDestinationSearchView)
            } else {
                ScrollView {
                    SearchAndFilterBar(location: $viewModel.searchLocation).padding().onTapGesture {
                        withAnimation(.snappy) {
                            showDestinationSearchView.toggle()
                        }
                    }
                    LazyVStack(spacing: 32) {
                        ForEach(viewModel.listings) { listing in
                            NavigationLink(value: listing) {
                                ListingItemView(listing: listing).frame(height: 400)
                                    .clipShape(RoundedRectangle(cornerRadius: 10.0))
                            }
                        }
                    }.padding()
                }
                .navigationDestination(for: Listing.self) { listing in
                    ListingDetailView(listing: listing).navigationBarBackButtonHidden()
                }
            }
        }
    }
}

#Preview {
    ExploreView()
}
