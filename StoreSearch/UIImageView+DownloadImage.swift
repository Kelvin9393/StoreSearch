//
//  UIImageView+DownloadImage.swift
//  StoreSearch
//
//  Created by KELVIN LING SHENG SIANG on 02/11/2017.
//  Copyright © 2017 KELVIN LING SHENG SIANG. All rights reserved.
//

import UIKit

extension UIImageView {
    func loadImage(url: URL) -> URLSessionDownloadTask {
        let downloadTask = URLSession.shared.downloadTask(with: url) { [weak self] url, response, error in
            if error == nil,
//                local url, not internet address
                let url = url,
                let data = try? Data(contentsOf: url),
                let image = UIImage(data: data) {
//                self refer to UIImageView, check whether UIImageView still exist
                DispatchQueue.main.async {
                    if let strongSelf = self {
                        strongSelf.image = image
                    }
                }
            }
        }
        
        downloadTask.resume()
//        return URLSessionDownloadTask to cancel() later
        return downloadTask
    }
}
