package com.fzu.token;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.security.Principal;
import java.util.Date;
import java.util.Enumeration;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletInputStream;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;


import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
/**
 * 文件上传Action类
 * @author Administrator
 *
 */
public class FileUploadAction{
	
	private String uploadDir="/Upload/";

	public String upload(File file,String fileFileName,String logname) throws Exception {
		uploadDir+=logname;
		String newFileName=null;
		//得到保存上传文件的目录的真实路径
		String path=ServletActionContext.getServletContext().getRealPath(uploadDir);
		File dir=new File(path);
		//如果这个目录不存在，则创建它
		if(!dir.exists()){
			dir.mkdir();
		}
		int index=fileFileName.lastIndexOf('.');
		//判断上传文件名是否有扩展名，以时间截取为新的文件名
		if(index!=-1){
			newFileName=logname+fileFileName.substring(index);
		}		
		
		BufferedOutputStream bos=null;
		BufferedInputStream bis=null;
		//读取保存在临时目录下的上传文件，写入到新的文件中
		try{
			FileInputStream fis=new FileInputStream(file);
			bis=new BufferedInputStream(fis);
			
			FileOutputStream fos=new FileOutputStream(new File(dir,newFileName));
			bos=new BufferedOutputStream(fos);
			
			byte[] buf=new byte[4096];
			
			int len=-1;
			while((len=bis.read(buf))!=-1){
				bos.write(buf,0,len);
			}
		}finally{
			try{
				if(null!=bis){
					bis.close();
				}
			}catch(IOException ex){
				ex.printStackTrace();
			}
			
			try{
				if(null!=bos){
					bos.close();
				}
			}catch(IOException ex){
				ex.printStackTrace();
			}
		}
		return newFileName;
	}

}
