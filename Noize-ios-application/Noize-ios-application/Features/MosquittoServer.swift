//
//  MosquittoServer.swift
//  Noize-ios-application
//
//  Created by Thayallan Srinathan on 2018-12-01.
//  Copyright © 2018 Noize. All rights reserved.
//

import UIKit
import Foundation
import Moscapsule
import EasyPeasy

class MosquittoServer {

    var value: String = ""
    init() {
        let mqttConfig = MQTTConfig(clientId: "fuckAquib", host: "noize.flexio.org", port: 1883, keepAlive: 600)
        mqttConfig.mqttAuthOpts = MQTTAuthOpts(username: "", password: "")
        mqttConfig.cleanSession = true
        mqttConfig.onMessageCallback = { mqttMessage in
            //NSLog("MQTT Message received: payload=\(mqttMessage.payloadString?.first)")
            print("\(mqttMessage.payloadString!)")
            let recentView = RecentNoiseView(noiseLevel: mqttMessage.payloadString!)
            self.value = mqttMessage.payloadString!
            //recentView.update(viewA: mqttMessage.payloadString!)
            
        }
        
        let mqttClient = MQTT.newConnection(mqttConfig)
        
        print("")
        print("\(mqttClient.isConnected)")
        
        mqttClient.subscribe("noize/fuckAquib", qos: 2)
        
        //lol
        let deadline = DispatchTime.now() + 30000.0
        DispatchQueue.main.asyncAfter(deadline: deadline, execute: {
            print("\(mqttClient.isConnected)")
        })
    }
}
