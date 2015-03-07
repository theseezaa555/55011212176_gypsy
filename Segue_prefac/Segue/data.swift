//
//  data.swift
//  Segue
//
//  Created by iStudents on 3/6/15.
//  Copyright (c) 2015 iStudents. All rights reserved.
//
import UIKit
import Foundation

class data: NSObject {
    func getData() -> Array<balloon>{
        var tempArray = Array<balloon>()
        

        let f1 = balloon(bImage: UIImage(named: "msu1.jpg"), bName: "มหาวิทยาลัยมหาสารคาม",bBa: " คติพจย์ พหูนํ ปณฺฑิโต ชีเว หมายความว่า ผู้มีปัญญาพึงเป็นอยู่เพื่อมหาชน 1.ตราโรจนากร คือ ตราประจำมหาวิทยาลัยมหาสารคาม ซึ่งมีความหมายว่า สัญลักษณ์แห่งความเจริญรุ่งเรือง 2.ต้นไม้ประจำมหาวิทยาลัย ต้นราชพฤกษ์ หรือ ต้นคูณ 3.สีประจำมหาวิทยาลัย คือ สีเหลือง - เทา")
        tempArray.append(f1)
        
        let f2 = balloon(bImage: UIImage(named: "facit.jpg"), bName: "คณะวิทยาการสารสนเทศ",bBa: "คณะ วิทยาการสารสนเทศเปิดสอนทั้งหมด 6 สาขา คือ วิทยาการคอมพิวเตอ สารสนเทศศาสตร์ นิเทศศาสตร์ สื่อนฤมิตร ภูมิสารสนเทศศาสตร์ และ เทคโนโลยีสารสนเทศและการสื่อสาร")
        tempArray.append(f2)
        

    return tempArray
    
    
    }
   
        
        
        
        
        
    
}
