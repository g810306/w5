//
//  ViewController.swift
//  w5
//
//  Created by Claire on 2020/11/30.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    let player = AVPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
//袋鼠
//              let imageView = UIImageView(frame: CGRect(x: 30, y: 500, width: 201, height: 131))
//              view.addSubview(imageView)
//        let animatedImage = UIImage.animatedImageNamed("b415cf82c3af42afc0a80355f01b525dBO4Vtn2RvLjBJh1t-", duration: 2)
//               imageView.image = animatedImage
        
        
//背景音樂
        let fileUrl = Bundle.main.url(forResource: "music", withExtension: "mp4")!
        let playerItem = AVPlayerItem(url: fileUrl)
        player.replaceCurrentItem(with: playerItem)
        player.play()
//鈔票落下
        view.backgroundColor = UIColor.black
        let billEmitterCell = CAEmitterCell()
        billEmitterCell.contents = UIImage(named: "bill")?.cgImage
        billEmitterCell.scale = 0.7 //鈔票大小
        billEmitterCell.lifetime = 10.0 //出現時間(秒)
        billEmitterCell.birthRate = 10 //一秒生幾個
        billEmitterCell.velocity = -5 //移動速度
        billEmitterCell.velocityRange = -20 //移動速度
        billEmitterCell.yAcceleration = 40  //向下加速度
        billEmitterCell.xAcceleration = 5 //向右加速度
        billEmitterCell.spin = -0.5 // 轉速
        billEmitterCell.spinRange = 1.0 //轉速範圍
        billEmitterCell.emissionRange = .pi //左右落下
        let billEmitterLayer = CAEmitterLayer()
        billEmitterLayer.emitterPosition = CGPoint(x: view.bounds.width / 2, y: -50)
        billEmitterLayer.emitterSize = CGSize(width: view.bounds.width, height: 0)
        billEmitterLayer.emitterShape = .line
        billEmitterLayer.emitterCells = [billEmitterCell]
        view.layer.addSublayer(billEmitterLayer)
//Apple Logo(利用 UIBezierPath 繪製路徑)
        let path = UIBezierPath()
        // Leaf
        path.move(to: CGPoint(x: 146.91, y: 44.1))
        path.addCurve(to: CGPoint(x: 161.08, y: 5.88), controlPoint1: CGPoint(x: 156.36, y: 32.27), controlPoint2: CGPoint(x: 161.08, y: 19.53))
        path.addLine(to: CGPoint(x: 161.08, y: 3.15))
        path.addCurve(to: CGPoint(x: 160.81, y: 0.42), controlPoint1: CGPoint(x: 161.08, y: 2.23), controlPoint2: CGPoint(x: 160.99, y: 1.33))
        path.addCurve(to: CGPoint(x: 139.83, y: 6.69), controlPoint1: CGPoint(x: 154.22, y: 0.78), controlPoint2: CGPoint(x: 147.23, y: 2.88))
        path.addCurve(to: CGPoint(x: 121.51, y: 21.16), controlPoint1: CGPoint(x: 132.44, y: 10.52), controlPoint2: CGPoint(x: 126.33, y: 15.35))
        path.addCurve(to: CGPoint(x: 107.08, y: 58.02), controlPoint1: CGPoint(x: 111.9, y: 32.64), controlPoint2: CGPoint(x: 107.08, y: 44.92))
        path.addLine(to: CGPoint(x: 107.08, y: 60.61))
        path.addCurve(to: CGPoint(x: 107.35, y: 63.22), controlPoint1: CGPoint(x: 107.08, y: 61.44), controlPoint2: CGPoint(x: 107.17, y: 62.3))
        path.addCurve(to: CGPoint(x: 146.91, y: 44.1), controlPoint1: CGPoint(x: 122.14, y: 64.67), controlPoint2: CGPoint(x: 135.33, y: 58.29))
        path.close()
        // Apple
        path.move(to: CGPoint(x: 180.53, y: 145.15))
        path.addCurve(to: CGPoint(x: 209.19, y: 93.49), controlPoint1: CGPoint(x: 180.17, y: 123.03), controlPoint2: CGPoint(x: 189.73, y: 105.81))
        path.addCurve(to: CGPoint(x: 160.63, y: 66.57), controlPoint1: CGPoint(x: 198.21, y: 77.54), controlPoint2: CGPoint(x: 182.03, y: 68.57))
        path.addCurve(to: CGPoint(x: 131.44, y: 72.01), controlPoint1: CGPoint(x: 153.01, y: 65.85), controlPoint2: CGPoint(x: 143.28, y: 67.65))
        path.addCurve(to: CGPoint(x: 109.94, y: 79.08), controlPoint1: CGPoint(x: 118.71, y: 76.73), controlPoint2: CGPoint(x: 111.54, y: 79.08))
        path.addCurve(to: CGPoint(x: 90.56, y: 73.09), controlPoint1: CGPoint(x: 106.58, y: 79.08), controlPoint2: CGPoint(x: 100.13, y: 77.09))
        path.addCurve(to: CGPoint(x: 66.15, y: 67.11), controlPoint1: CGPoint(x: 81.02, y: 69.11), controlPoint2: CGPoint(x: 72.87, y: 67.11))
        path.addCurve(to: CGPoint(x: 34.57, y: 76.49), controlPoint1: CGPoint(x: 54.83, y: 67.3), controlPoint2: CGPoint(x: 44.3, y: 70.42))
        path.addCurve(to: CGPoint(x: 11.23, y: 101.37), controlPoint1: CGPoint(x: 24.84, y: 82.57), controlPoint2: CGPoint(x: 17.06, y: 90.87))
        path.addCurve(to: CGPoint(x: 0.08, y: 148.14), controlPoint1: CGPoint(x: 3.79, y: 114.43), controlPoint2: CGPoint(x: 0.08, y: 130.02))
        path.addCurve(to: CGPoint(x: 8.3, y: 197.08), controlPoint1: CGPoint(x: 0.08, y: 164.45), controlPoint2: CGPoint(x: 2.81, y: 180.76))
        path.addCurve(to: CGPoint(x: 27.93, y: 238.13), controlPoint1: CGPoint(x: 13.43, y: 212.67), controlPoint2: CGPoint(x: 19.98, y: 226.36))
        path.addCurve(to: CGPoint(x: 46.51, y: 261.52), controlPoint1: CGPoint(x: 35, y: 248.83), controlPoint2: CGPoint(x: 41.22, y: 256.62))
        path.addCurve(to: CGPoint(x: 69.87, y: 272.39), controlPoint1: CGPoint(x: 54.13, y: 269.13), controlPoint2: CGPoint(x: 61.9, y: 272.76))
        path.addCurve(to: CGPoint(x: 90.03, y: 266.67), controlPoint1: CGPoint(x: 75, y: 272.2), controlPoint2: CGPoint(x: 81.71, y: 270.3))
        path.addCurve(to: CGPoint(x: 113.39, y: 261.52), controlPoint1: CGPoint(x: 97.81, y: 263.24), controlPoint2: CGPoint(x: 105.6, y: 261.52))
        path.addCurve(to: CGPoint(x: 135.94, y: 266.67), controlPoint1: CGPoint(x: 120.64, y: 261.52), controlPoint2: CGPoint(x: 128.15, y: 263.23))
        path.addCurve(to: CGPoint(x: 157.17, y: 272.11), controlPoint1: CGPoint(x: 144.61, y: 270.3), controlPoint2: CGPoint(x: 151.69, y: 272.11))
        path.addCurve(to: CGPoint(x: 180, y: 261.52), controlPoint1: CGPoint(x: 165.31, y: 271.76), controlPoint2: CGPoint(x: 172.91, y: 268.22))
        path.addCurve(to: CGPoint(x: 188.08, y: 252.54), controlPoint1: CGPoint(x: 182.47, y: 259.33), controlPoint2: CGPoint(x: 185.17, y: 256.35))
        path.addCurve(to: CGPoint(x: 197.78, y: 238.95), controlPoint1: CGPoint(x: 191.45, y: 248.11), controlPoint2: CGPoint(x: 194.68, y: 243.57))
        path.addCurve(to: CGPoint(x: 205.07, y: 226.71), controlPoint1: CGPoint(x: 200.35, y: 234.96), controlPoint2: CGPoint(x: 202.79, y: 230.88))
        path.addCurve(to: CGPoint(x: 211.58, y: 212.84), controlPoint1: CGPoint(x: 207.53, y: 222.23), controlPoint2: CGPoint(x: 209.7, y: 217.6))
        path.addCurve(to: CGPoint(x: 213.96, y: 206.73), controlPoint1: CGPoint(x: 212.45, y: 210.85), controlPoint2: CGPoint(x: 213.25, y: 208.82))
        path.addCurve(to: CGPoint(x: 216.08, y: 200.35), controlPoint1: CGPoint(x: 214.66, y: 204.65), controlPoint2: CGPoint(x: 215.37, y: 202.52))
        path.addCurve(to: CGPoint(x: 198.3, y: 188.1), controlPoint1: CGPoint(x: 209.53, y: 197.45), controlPoint2: CGPoint(x: 203.61, y: 193.36))
        path.addCurve(to: CGPoint(x: 180.53, y: 145.15), controlPoint1: CGPoint(x: 186.64, y: 176.51), controlPoint2: CGPoint(x: 180.71, y: 162.19))
        path.addLine(to: CGPoint(x: 180.53, y: 145.15))
        path.close()
        //Logo位置
        path.apply(CGAffineTransform.identity.scaledBy(x: 1, y: 1).translatedBy(x: 80, y: 250))
        //生成能顯示在畫面上的形狀，CAShapeLayer
        let appleLayer = CAShapeLayer()
        appleLayer.path = path.cgPath
        appleLayer.lineWidth = 5
        appleLayer.strokeColor = UIColor.black.cgColor
        appleLayer.fillColor = nil
        view.layer.addSublayer(appleLayer)
        //Logo傾斜角度
//        let oneDegree = CGFloat.pi / 180
//        path.apply(CGAffineTransform(rotationAngle: oneDegree * 15))
        //Logo線條繪製動畫
        let animation1 = CABasicAnimation(keyPath: "strokeEnd") //動畫效果
        animation1.fromValue = 0 //動畫起點
        animation1.toValue = 1 //動畫終點
        animation1.duration = 5 //設定動畫時間(second)
        animation1.repeatCount = .greatestFiniteMagnitude //重複動畫
        animation1.timingFunction = CAMediaTimingFunction(name: .easeInEaseOut) //調整動畫的速度
        appleLayer.add(animation1, forKey: nil) //將動畫加到 CAShapeLayer

//        let animation2 = CABasicAnimation(keyPath: "backgroundColor")
//        animation2.fromValue = UIColor.red.cgColor
//        animation2.toValue = UIColor.blue.cgColor
//        animation2.duration = 3
//        appleLayer.add(animation2, forKey: nil)
     
        //Logo漸層顏色
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [UIColor.orange.cgColor, UIColor.blue.cgColor]
        gradientLayer.frame = CGRect(x: 0, y: 10, width: 1000, height: 1000)
        view.layer.addSublayer(gradientLayer)
        gradientLayer.mask = appleLayer
//Jobs.GIF
        let imageView = UIImageView(frame: CGRect(x: -50, y: 250, width: 480, height: 360))
        view.addSubview(imageView)
        let animatedImage = UIImage.animatedImageNamed("p1epbniu0apds12kebt7h3p1v124-", duration: 5)
        imageView.image = animatedImage
        
//        let view = UIView()
//        view.layer.mask = appleLayer
//        let gradientLayer = CAGradientLayer()
//        gradientLayer.frame = CGRect(x: 100, y: 100, width: 100, height: 100)
//        gradientLayer.colors = [UIColor.orange.cgColor, UIColor.blue.cgColor]
//        view.layer.addSublayer(gradientLayer)
//        gradientLayer.mask = appleLayer
        
        
        
 //蘋果顏色
//        let gradientLayer = CAGradientLayer()
//        gradientLayer.frame = appleLayer.frame
//        gradientLayer.colors = [UIColor.orange.cgColor, UIColor.blue.cgColor]
//
//        gradientLayer.mask = appleLayer

        
            
 
        // Do any additional setup after loading the view.
    }


}

