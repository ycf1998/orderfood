package org.money.orderfood.util;

import java.io.File;
import java.io.IOException;

import org.springframework.web.multipart.MultipartFile;

/**
 *@program: orderfood
 *@description: 上传工具类
 *@author: Money
 *@create: 2020/01/30 15:07
 */
public class UploadUtil {

    /**
     *  文件上传，文件名为时间戳
     * @param baseDir
     * @param file
     * @return 新文件名
     */
    public static String upload(String baseDir, MultipartFile file) {
    	if (file == null || file.isEmpty()) return null;
        String originalFilename = file.getOriginalFilename();
        String newFileNamePrefix = System.currentTimeMillis() + "";
        String newFileName = newFileNamePrefix + originalFilename.substring(originalFilename.lastIndexOf("."));
        File newFile = new File( baseDir + newFileName);
        if  (!newFile.exists()  && !newFile.isDirectory()) {
        	newFile.mkdirs();
        }
        try{
            file.transferTo(newFile);
        }catch(IOException e){
            return null;
        }
        return newFileName;
    }

    /**
     * 文件上传
     * @param baseDir 基础路径
     * @param fileName 自定义文件名
     * @param file
     * @return 新文件名
     */
    public static String upload(String baseDir, String fileName, MultipartFile file) {
    	if (file == null || file.isEmpty()) return null;
        String originalFilename = file.getOriginalFilename();
        String newFileName = fileName + originalFilename.substring(originalFilename.lastIndexOf("."));
        File newFile = new File( baseDir + newFileName);
        if  (!newFile.exists()  && !newFile.isDirectory()) {
        	newFile.mkdirs();
        }
        try{
            file.transferTo(newFile);
        }catch(IOException e){
            return null;
        }
        return fileName;
    }
}
