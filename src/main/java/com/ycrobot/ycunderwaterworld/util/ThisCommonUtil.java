package com.ycrobot.ycunderwaterworld.util;

import java.security.MessageDigest;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

import com.ycrobot.ycunderwaterworld.exception.ThisCommonException;

import sun.misc.BASE64Encoder;

public class ThisCommonUtil {
	//�ж��Ƿ�Ϊ��
     public static String throwIfBlank(String message,String target) {
    	 if(target==null||(target=target.trim()).length()==0) {
    		 throw new ThisCommonException(message);
    	 }
    	 return target;
     }
     
     public static String $(String message,String target) {
    	 return throwIfBlank( message, target);
     }
     
     
     //�������
     public static String MD5(String str){
 		String newstr="";
 		try {
         //ȷ�����㷽��
         MessageDigest md5= MessageDigest.getInstance("MD5");
         BASE64Encoder base64en = new BASE64Encoder();
         //���ܺ���ַ���
         newstr=base64en.encode(md5.digest(str.getBytes("utf-8")));
 		} catch (Exception e) {
 			// TODO Auto-generated catch block
 			e.printStackTrace();
 		}
         return newstr;
     }
     
     //ʱ���ʽ��
 	public static String DateFormat(LocalDateTime time) {
 		DateTimeFormatter dtf=DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
 		return dtf.format(time);
 	}
 	
 	//���ص�ǰʱ��
 	public static String CurrentTime() {
		return DateFormat(LocalDateTime.now());
 	}
 	
}
