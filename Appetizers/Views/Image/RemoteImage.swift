//
//  RemoteImage.swift
//  Appetizers
//
//  Created by Mehmet Güngörmüş on 17.07.25.
//

import SwiftUI

final class ImageLoader: ObservableObject {
    
    @Published var image: Image? = nil
    
    func load(fromURLString urlString: String) {
        NetworkManager.shared.downloadImage(fromURLString: urlString) { uiImage in //2- make the network call
            
            guard let uiImage = uiImage else { return } //3- if the network calls good
            DispatchQueue.main.async {
                self.image = Image(uiImage: uiImage) //4 - this image is going to flip to good image and it will trigger Published
                //this triggers an UI change it must be in main thread
            }
            
        }
    }
}

struct RemoteImage: View {
    
    var image: Image?
    
    var body: some View {
        image?.resizable() ?? Image("food-placeholder") // place holder image
    }
}

struct AppetizerRemoteImage: View {
    
    @StateObject var imageLoader = ImageLoader() //5 - This see the change and will redraw
    let urlString: String
    
    var body: some View {
        RemoteImage(image: imageLoader.image)//6 - When it redraws it uses image flipped up at published
            .onAppear() {
                imageLoader.load(fromURLString: urlString) //1 - on appear we call imageLoader.load
            }
    }
}
