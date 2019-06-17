//
//  ViewController.swift
//  InterativeNewspaper
//
//  Created by Makan fofana on 6/16/19.
//  Copyright © 2019 Makan fofana. All rights reserved.
//

import UIKit
import SceneKit
import ARKit

class ViewController: UIViewController, ARSCNViewDelegate {

    @IBOutlet var sceneView: ARSCNView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set the view's delegate
        sceneView.delegate = self
        
        // Show statistics such as fps and timing information
        sceneView.showsStatistics = true

    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // Create a session configuration
        let configuration = ARImageTrackingConfiguration()
        
        if let trackedImages = ARReferenceImage.referenceImages(inGroupNamed: "ImageNewsPaper", bundle: Bundle.main) {
            configuration.trackingImages = trackedImages
            configuration.maximumNumberOfTrackedImages = 10
            
            print("Images Found")
        }

        // Run the view's session
        sceneView.session.run(configuration)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        // Pause the view's session
        sceneView.session.pause()
    }

    // MARK: - ARSCNViewDelegate
    
/*
    // Override to create and configure nodes for anchors added to the view's session.
    func renderer(_ renderer: SCNSceneRenderer, nodeFor anchor: ARAnchor) -> SCNNode? {
        let node = SCNNode()
     
        return node
    }
*/
    
    func session(_ session: ARSession, didFailWithError error: Error) {
        // Present an error message to the user
        
    }
    
    func sessionWasInterrupted(_ session: ARSession) {
        // Inform the user that the session has been interrupted, for example, by presenting an overlay
        
    }
    
    func sessionInterruptionEnded(_ session: ARSession) {
        // Reset tracking and/or remove existing anchors if consistent tracking is required
        
    }
    
    
//    func renderer(_ renderer: SCNSceneRenderer, didAdd node: SCNNode, for anchor: ARAnchor) {
//
//        //1. Check We Have Detected An ARImageAnchor
//        guard let validAnchor = anchor as? ARImageAnchor else { return }
//
//        //2. Create A Video Player Node For Each Detected Target
//        node.addChildNode(createdVideoPlayerNodeFor(validAnchor.referenceImage))
//
//    }
//
//
//    /// Creates An SCNNode With An AVPlayer Rendered Onto An SCNPlane
//    ///
//    /// - Parameter target: ARReferenceImage
//    /// - Returns: SCNNode
//    func createdVideoPlayerNodeFor(_ target: ARReferenceImage) -> SCNNode{
//
//        //1. Create An SCNNode To Hold Our VideoPlayer
//        let videoPlayerNode = SCNNode()
//
//        //2. Create An SCNPlane & An AVPlayer
//        let videoPlayerGeometry = SCNPlane(width: target.physicalSize.width, height: target.physicalSize.height)
//        spriteKitScene.scaleMode = .aspectFit
//        spriteKitScene.backgroundColor = .clear
//        spriteKitScene.scaleMode = .aspectFit
//        var videoPlayer = AVPlayer()
//
//        //3. If We Have A Valid Name & A Valid Video URL The Instanciate The AVPlayer
//        if let targetName = target.name,
//            let validURL = Bundle.main.url(forResource: targetName, withExtension: "mp4", subdirectory: "/art.scnassets") {
//            videoPlayer = AVPlayer(url: validURL)
//            videoPlayer.play()
//        }
//
//        //4. Assign The AVPlayer & The Geometry To The Video Player
//        videoPlayerGeometry.firstMaterial?.diffuse.contents = videoPlayer
//        videoPlayerNode.geometry = videoPlayerGeometry
//
//        //5. Rotate It
//        videoPlayerNode.eulerAngles.x = -.pi / 2
//
//        return videoPlayerNode
//
//    }
    
    
    func renderer(_ renderer: SCNSceneRenderer, nodeFor anchor: ARAnchor) -> SCNNode? {

        let node = SCNNode()
        

        if let imageAnchor = anchor as? ARImageAnchor, imageAnchor.referenceImage.name == "india"  {
            
//          var videoNode = SKVideoNode()
            let videoNode = SKVideoNode(fileNamed: "india.mp4")

            videoNode.play()

            let videoScene = SKScene(size: CGSize(width: 1420, height: 1080))

            videoNode.position = CGPoint(x: videoScene.size.width / 2, y: videoScene.size.height / 2)

            videoNode.yScale = -1.0

            videoScene.addChild(videoNode)


            let plane = SCNPlane(width: imageAnchor.referenceImage.physicalSize.width, height: imageAnchor.referenceImage.physicalSize.height)

            plane.firstMaterial?.diffuse.contents = videoScene

            let planeNode = SCNNode(geometry: plane)

            planeNode.eulerAngles.x = -.pi / 2

            node.addChildNode(planeNode)
        }
        
        
        if let imageAnchor = anchor as? ARImageAnchor, imageAnchor.referenceImage.name == "iran"  {

            //            var videoNode = SKVideoNode()
            let videoNode = SKVideoNode(fileNamed: "iran.mp4")

            videoNode.play()

            let videoScene = SKScene(size: CGSize(width: 1420, height: 1080))

            videoNode.position = CGPoint(x: videoScene.size.width / 2, y: videoScene.size.height / 2)

            videoNode.yScale = -1.0

            videoScene.addChild(videoNode)


            let plane = SCNPlane(width: imageAnchor.referenceImage.physicalSize.width, height: imageAnchor.referenceImage.physicalSize.height)

            plane.firstMaterial?.diffuse.contents = videoScene

            let planeNode = SCNNode(geometry: plane)

            planeNode.eulerAngles.x = -.pi / 2

            node.addChildNode(planeNode)
        }

        if let imageAnchor = anchor as? ARImageAnchor, imageAnchor.referenceImage.name == "toronto"  {

            //            var videoNode = SKVideoNode()
            let videoNode = SKVideoNode(fileNamed: "toronto.mp4")

            videoNode.play()

            let videoScene = SKScene(size: CGSize(width: 1420, height: 1080))

            videoNode.position = CGPoint(x: videoScene.size.width / 2, y: videoScene.size.height / 2)

            videoNode.yScale = -1.0

            videoScene.addChild(videoNode)


            let plane = SCNPlane(width: imageAnchor.referenceImage.physicalSize.width, height: imageAnchor.referenceImage.physicalSize.height)

            plane.firstMaterial?.diffuse.contents = videoScene

            let planeNode = SCNNode(geometry: plane)

            planeNode.eulerAngles.x = -.pi / 2

            node.addChildNode(planeNode)
        }

        if let imageAnchor = anchor as? ARImageAnchor, imageAnchor.referenceImage.name == "trump"  {

            //            var videoNode = SKVideoNode()
            let videoNode = SKVideoNode(fileNamed: "trump.mp4")

            videoNode.play()

            let videoScene = SKScene(size: CGSize(width: 1420, height: 1080))

            videoNode.position = CGPoint(x: videoScene.size.width / 2, y: videoScene.size.height / 2)

            videoNode.yScale = -1.0

            videoScene.addChild(videoNode)


            let plane = SCNPlane(width: imageAnchor.referenceImage.physicalSize.width, height: imageAnchor.referenceImage.physicalSize.height)

            plane.firstMaterial?.diffuse.contents = videoScene

            let planeNode = SCNNode(geometry: plane)

            planeNode.eulerAngles.x = -.pi / 2

            node.addChildNode(planeNode)
        }

        return node
    }
}
