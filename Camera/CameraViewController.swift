//
//  CameraViewController.swift
//  Camera
//
//  Created by Joseph Slinker on 6/2/22.
//

import UIKit
import SwiftUI

class CameraViewController: UIHostingController<CameraView> {
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        if UIDevice.current.userInterfaceIdiom == .phone {
            return [.portrait, .portraitUpsideDown]
        } else {
            return [.all]
        }
    }
    
    init() {
        super.init(rootView: CameraView())
        self.view.backgroundColor = .black
    }
    
    @objc required dynamic init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

struct CameraView: View {
    
//    @StateObject var model: ViewModel = ViewModel()
//    @StateObject var deviceMetrics: DeviceMetrics = DeviceMetrics()
    
    var body: some View {
        ZStack {
            Text("Hello world!")
                .foregroundColor(.white)
//            AVCaptureVideoPreviewView(session: .constant(model.cameraSession.avSession))
//            CameraControlsView()
        }
//            .sheet(isPresented: .constant(!model.isAuthorized), content: {
//                PhotosPermissionView()
//            })
//            .environmentObject(self.model)
//            .environmentObject(self.deviceMetrics)
    }
    
}
