package com.hss.myLog4j;

import org.apache.log4j.Logger;
import org.apache.log4j.PropertyConfigurator;


public class TestMyLog4jInDb {


	public static void main(String[] args) {
		
		//第一步:使用Log4j，第一步就是获取日志记录器，这个记录器将负责控制日志信息。
		
		Logger log = Logger.getLogger(TestMyLog4jInDb.class);
		
		//第二步:读取配置文件
		//BasicConfigurator.configure ()： 自动快速地使用缺省Log4j环境。  
		//PropertyConfigurator.configure (String configFilename) ：读取使用Java的特性文件编写的配置文件。  
		//DOMConfigurator.configure (String filename ) ：读取XML形式的配置文件。
		PropertyConfigurator.configure("config/log4j_base.properties");
		
		//第三步:插入记录信息（格式化日志信息）
		
		log.error("TestMyLog4jInDb=====ERROR");
		log.warn("TestMyLog4jInDb=====WARE");
		log.info("TestMyLog4jInDb=====INFO");
		log.debug("TestMyLog4jInDb=====DEBUG");
	}

}