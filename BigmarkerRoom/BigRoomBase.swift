////
////  BigRoomBase.swift
////  bigmarker
////
////  Created by hanqing on 2/15/15.
////  Copyright (c) 2015 hanqing. All rights reserved.
////
//
//import UIKit
//
//@objc protocol BigRoomConnectionProtocol {
//    optional func  bmRoomDidConnect(bm: BMRoom!)
//    optional func  bmRoomFailedConnect(bm: BMRoom!)
//}
//
//class BigRoomBase: NSObject,  BMRoomDelegate {
//    
//    var delegate:BigRoomConnectionProtocol?
//    
//    var host   = "" //"192.168.0.12"
//    var mcuID  = ""                          //"37558ee4cbbc"
//    var userID = ""                          //"40fbdba8084d"
//    var data   = ""
//    var conference: Conference!
//    
//    init(conference: Conference) {
//        
//        self.conference = conference
//        self.host = conference.conferenceServer!
//        self.host = self.host.stringByReplacingOccurrencesOfString("https://", withString: "")
//        
//    }
//    
//    
//    func connectServer(){
//        let options: NSMutableDictionary = NSMutableDictionary()
//        options["host"]     = self.host
//        options["authData"] = conference.dataKey!
//        options["mcuID"]    = conference.mcuID!
//        options["userID"]   = conference.userID!
//        options["twilioPassword"]   = conference.twilioPassword
//        options["twilioUsername"]   = conference.twilioUsername
//        
//        //print(self.host)
//                
//        BMRoom(delegate: self, options: options as [NSObject : AnyObject])!.connectToServer()
//    }
//    
//    func disConnectServer(){
//        let options: NSMutableDictionary = NSMutableDictionary()
//        options["host"]     = self.host
//        options["authData"] = conference.dataKey!
//        options["mcuID"]    = conference.mcuID!
//        options["userID"]   = conference.userID!
//        options["twilioPassword"]   = conference.twilioPassword
//        options["twilioUsername"]   = conference.twilioUsername
//        
//        BMRoom(delegate: self, options: options as [NSObject : AnyObject])!.disconnectFromServer()
//    }
//
//    
//    func bmRoomDidConnect(bm: BMRoom!) {
//        self.delegate?.bmRoomDidConnect!(bm)
//        printLog("BMRoom connected")
//    }
//    
//    func bmRoomFailedConnect(bm: BMRoom!) {
//        self.delegate?.bmRoomFailedConnect!(bm)
//        printLog("BMRoom failed connect")
//        
//    }
//    
//    func bmRoom(bm: BMRoom!, didReceiveSyncMessages messages: [NSObject : AnyObject]!) {}
//    func bmRoom(bm: BMRoom!, didSyncChatMessages messages: [NSObject : AnyObject]!) {}
//    func bmRoom(bm: BMRoom!, didReceiveChatMessage message: [NSObject : AnyObject]!) {}
//    func bmRoom(bm: BMRoom!, didConnectStream muxerID: String!) {}
//    func bmRoom(bm: BMRoom!, disconnectedStream muxerID: String!) {}
//    func bmRoom(bm: BMRoom!, didReceiveMessage message: [NSObject : AnyObject]!) {}
//    func bmRoom(bm: BMRoom!, didReceiveNewStream muxerID: String!, enableVideo video: String!, enableAudio audio: String!) {}
//    func bmRoom(bm: BMRoom!, failedConnectStream muxerID: String!) {}
//    func bmRoom(bm: BMRoom!, userConnected user: [NSObject : AnyObject]!) {}
//    func bmRoom(bm: BMRoom!, userDisconnected sid: String!) {}
//    func bmRoomDidClose(bm: BMRoom!) {}
//    func bmRoom(bm: BMRoom!, didChangeVideoDimension muxerID: String!, withSize size: CGSize) {}
//    func bmRoom(bm: BMRoom!, muxerAudioLevel muxerID: String!, changedTo level: Int32) {}
//    
//    
//    func bmRoom(bm: BMRoom!, loadYoutubeMsg message: [NSObject : AnyObject]!) {}
//    func bmRoom(bm: BMRoom!, playYoutubeMsg message: [NSObject : AnyObject]!) {}
//    func bmRoom(bm: BMRoom!, pauseYoutubeMsg message: [NSObject : AnyObject]!) {}
//    func bmRoom(bm: BMRoom!, endYoutubeMsg message: [NSObject : AnyObject]!) {}
//    func bmRoom(bm: BMRoom!, actionYoutubeMsg message: [NSObject : AnyObject]!) {}
//    func bmRoom(bm: BMRoom!, muteYoutubeMsg message: [NSObject : AnyObject]!) {}
//    func bmRoom(bm: BMRoom!, unmuteYoutubeMsg message: [NSObject : AnyObject]!) {}
//    func bmRoom(bm: BMRoom!, seekYoutubeMsg message: [NSObject : AnyObject]!) {}
//    func bmRoom(bm: BMRoom!, volumeChangeYoutubeMsg message: [NSObject : AnyObject]!) {}
//    
//    
//    func bmRoom(bm: BMRoom!, actionMP4Msg message: [NSObject : AnyObject]!) {}
//    func bmRoom(bm: BMRoom!, endMP4Msg message: [NSObject : AnyObject]!) {}
//    func bmRoom(bm: BMRoom!, loadMP4Msg message: [NSObject : AnyObject]!) {}
//    func bmRoom(bm: BMRoom!, muteMP4Msg message: [NSObject : AnyObject]!) {}
//    func bmRoom(bm: BMRoom!, pauseMP4Msg message: [NSObject : AnyObject]!) {}
//    func bmRoom(bm: BMRoom!, playMP4Msg message: [NSObject : AnyObject]!) {}
//    func bmRoom(bm: BMRoom!, unmuteMP4Msg message: [NSObject : AnyObject]!) {}
//    func bmRoom(bm: BMRoom!, volumeChangeMP4Msg message: [NSObject : AnyObject]!) {}
//    
//    
//    
//}
