package com.yibai.product;

import java.io.*;

public class Test {
    public static void main(String [] args){
        File file = new File("test.jpg");
        try {
            FileInputStream is = new FileInputStream(file);
            FileOutputStream os = new FileOutputStream("D:\\test\\test.jpg");
            //byte[] b = new byte[1024];
            int len ;
            while((len=is.read())!=-1) {
                os.write(len);
            }
           // System.out.println("b = " + b);
        }catch (Exception e){
            e.printStackTrace();
        }
    }

    public String test
}
