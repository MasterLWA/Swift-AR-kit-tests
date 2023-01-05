//
//  ContentView.swift
//  AR-Training 2.0
//
//  Created by Lakindu Widuranga on 2022-12-24.
//

import SwiftUI
import RealityKit
import Combine

struct ContentView: View {
    var body: some View {
        
        ARViewContainer().ignoresSafeArea()
    }
}

struct ARViewContainer: UIViewRepresentable{
 
    func makeUIView(context: Context) -> ARView{
        let arView = ARView(frame: .zero)
       // arView.addGestureRecognizer(UITapGestureRecognizer(target: context.coordinator, action: #selector(Coordinator.tapARView(sender: ))))
        context.coordinator.arView = arView
        context.coordinator.loadModel()
        return arView
    }
    
    func updateUIView(_ uiView: ARView, context: Context) {
        
    }
    
    func makeCoordinator() -> ARCoordinator {
        return ARCoordinator()
    }
}

class ARCoordinator : NSObject{
    
    var arView : ARView?
    
    var bag = AnyCancellable?
    
    /*  @objc func tapARView(sender : UITapGestureRecognizer){
     
     // print("Tap AR view")
     
     guard let view = arView else{return}
     
     let tapLocation = sender.location(in: arView)
     
     let racast = view.raycast(from: tapLocation, allowing: .estimatedPlane, alignment: .horizontal)
     
     if let place = racast.first{
     let placeAnchor = AnchorEntity(raycastResult: place)
     
     let box = ModelEntity(mesh: .generateBox(size: 0.05), materials: [SimpleMaterial(color: .systemBlue, isMetallic:true)])
     
     placeAnchor.addChild(box)
     view.scene.addAnchor(placeAnchor)
     
     // print("Run")
     }
     
     //    print("Run out")
     
     
     
     
     }
     }*/
    
    
    /*    func loadModel(){
     
     guard let view = arView else {return}
     let anchor = AnchorEntity(plane: .horizontal)
     if let model = try? ModelEntity.loadModel(named: "Mei"){
     anchor.addChild(model)
     view.scene.addAnchor(anchor)
     }
     }
     }*/
    
    /*func loadModelAsync(){
     guard let view = arView else {return}
     let anchor = AnchorEntity(plane: .horizontal)
     bag = ModelEntity.loadAsync(named: "Sofia").sink{
     
     }
     }*/
    
    
    /*func loadModelonImage(){
        guard let view = arView else{return}
        let anchor = AnchorEntity(.image(group: "ARAssets", name: "testimg"))
        
        bag = ModelEntity.loadAsync(named: "dog").sink(receiveCompletion: {compleation in}, receiveValue: {
            model.genarateCollisionshapes(recursive:true)
            model.x
        })
    }
*/

    func playARvideo(){
        guard let view = arView else {return}
        
        guard let videoURL = Bundle.main.url(forResource: "fileName", withExtension:".mp4") else {return}
        
        let player = AVPlayer(url: videoURL)
        
        let videoMetarial
        
    }
