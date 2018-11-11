//
//  PlayerViewController.swift
//  chairmansApp
//
//  Created by 中坪久人 on 2018/11/10.
//  Copyright © 2018 中坪久人. All rights reserved.
//

import UIKit
import WebKit

class PlayerViewController: UIViewController {
    
    @IBOutlet weak var webView: WKWebView!
    
    var givenUrl = ""
    //文字列となるURL
    let urlString = "https://www.youtube.com/embed/cEZOe7C2NY0?rel=0"
    
    //インジゲーターを宣言
    var indicator = UIActivityIndicatorView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //インジケーターを起動
        setIndicator()
        
        //文字列のURLをURL型にキャスト
        guard let url = URL(string: urlString) else { return }
        print("given: \(givenUrl)")
        //URLリクエストを作成
        //cachePolicy：Webページのキャッシュがあればそれを使用、なければリクエスト
        //timeoutInterVal：100秒でリクエストを終了
        let urlRequest = URLRequest(url: url,
                                    cachePolicy: .returnCacheDataElseLoad, timeoutInterval: 100)
        
        //webViewで表示させる
        webView.load(urlRequest)
    }
    
    func setIndicator() {
        
        //インジケーターを初期化
        indicator = UIActivityIndicatorView()
        //インジケーターの座標とサイズ
        indicator.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
        //インジケーターが止まった時に非表示にするか？
        indicator.hidesWhenStopped = true
        //インジケーターの色
        indicator.style = .gray
        //webViewに追加
        webView.addSubview(indicator)
        
    }
    
    @IBAction func backToSelectView(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
