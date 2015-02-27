//
//  data.swift
//  present_fac
//
//  Created by iStudents on 2/27/15.
//  Copyright (c) 2015 iStudents. All rights reserved.
//

import UIKit

class data: NSObject {
   
    func getData() -> Array<fac> {
    var tempArray = Array<fac>()
    
        let f1 = fac(fImage: UIImage(named: "msu1.jpg"), fName: "ตราโรจนากร",fBa: "ตราโรจนากร ตราของมหาวิทยาลัยมหาสารคาม ออกแบบมาจากพระธาตุนาดูน สิ่งศักสิทธิ์คู่เมืองมหาสารคาม คติพจคือ ผู้มีปัญญาพึงอยู่เพื่อมหาชน")
    tempArray.append(f1)
    
        let f2 = fac(fImage: UIImage(named: "facit.jpg"), fName: "คณะวิทยาการสารสนเทศ",fBa: "คณะ วิทยาการสารสนเทศเปิดสอนทั้งหมด 6 สาขา คือ วิทยาการคอมพิวเตอ สารสนเทศศาสตร์ นิเทศศาสตร์ สื่อนฤมิตร ภูมิสารสนเทศศาสตร์ และ เทคโนโลยีสารสนเทศและการสื่อสาร")
    tempArray.append(f2)
    
        let f3 = fac(fImage: UIImage(named: "en.jpg"), fName: "คณะวิศวะกรรมศาสตร์ ",fBa:"คณะวิศวะกรรมศาสตร์ มีเปิดทั้งหมด 7 สาขา วิศวะเครื่องกล วิศวะเมคาทอนิก วิศวะโยธา วิศวะสิ่งแวดล้อม วิศวะไฟฟ้า วิศวะกรรมการผลิต วิศวะกรรมชีวะภาพ")
    tempArray.append(f3)
        let f4 = fac(fImage: UIImage(named: "nu.jpg"), fName: "คณะพยาบาลศาสตร์",fBa:"คณะพยาบาลศาตร์ เปิดสอนหลักสูตรเดียวคือหลักสูตร พยาบาลศาสตร์บันฑิต")
    tempArray.append(f4)
        let f5 = fac(fImage: UIImage(named: "medicin.jpg"), fName: "คณะเภสัชศาสตร์",fBa:"คณะเภสัชศาสตร์ เปิดสอน 1 หลักสูตรคือ หลักสูตร เภสัชศาสตร์บัณฑิต")
        tempArray.append(f5)
        let f6 = fac(fImage: UIImage(named: "mbs.jpg"), fName: "คณะบัญชีและการจัดการ",fBa:"คณะบัญชีและการจัดการ เปิดสอน 11 หลักสูตรคือ สาขาการบัญชี สาขาการจัดการ สาขาการจัดการพาณิชย์อิเล็กทรอนิกส์ สาขาวิชาการจัดการการประกอบการ สาขาการจัดการทรัพยากรมนุษย์ สาขาเศรษฐศาสตร์ธุรกิจ สาขาธุรกิจระหว่างประเทศ สาขาการตลาด สาขาการบริหารการเงิน สาขาเทคโนโลยีสารสนเทศธุรกิจ สาขาคอมพิวเตอร์ธุรกิจ")
        tempArray.append(f6)
    return tempArray
    
    
    
    
    
    }
}
