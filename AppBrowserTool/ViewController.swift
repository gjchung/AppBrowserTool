//
//  ViewController.swift
//  WebviewSample
//
//  Created by Nimble Chapps on 27/05/16.
//  Copyright © 2016 GuruSoft. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UIWebViewDelegate {
    
    @IBOutlet weak var webViewFullScreen: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let webUrl : URL = URL(string: "http://cosmopolitan.fre-hdm.docker/video/c383d78c-48f3-499b-ae58-cc926803c0c3/")!
        let webRequest : URLRequest = URLRequest(url: webUrl)
        webViewFullScreen.loadRequest(webRequest)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    //MARK:- UIWebViewDelegate Method
    
    func webViewDidStartLoad(_ webView: UIWebView) {
        print("Strat Loading")
    }
    func webViewDidFinishLoad(_ webView: UIWebView) {
        print("Finish Loading")
    }
    func webView(_ webView: UIWebView, didFailLoadWithError error: Error) {
        print(error.localizedDescription)
    }
    func webView(_ webView: UIWebView, shouldStartLoadWith request: URLRequest, navigationType: UIWebViewNavigationType) -> Bool {
        return true
    }
}

