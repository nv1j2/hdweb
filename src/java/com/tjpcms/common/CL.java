package com.tjpcms.common;

import java.text.SimpleDateFormat;

public class CL {
	public static final String ROOT="alitjp";//网站根目录，其实没怎么用到，如果你想换个名称，需要你全工程搜索alitjp全部替换成自己的
	
	public static final String DB="db_"+ROOT;//网站数据库名，换名称的话jdbc.properties要一并改一下

	public static final String WZMC="tjpcms";//网站名称
	public static final String GGY="tjpcms - 最懂你的cms";//广告语
	public static final String GGY2="国产Java类cms良心之作";//广告语
	public static final String YUMING="www.tjpcms.com";//域名
	public static final String META_DES="航盾网站";

	public static final String ses_admin= "ses_admin";
	public static final String ses_ssousr= "ses_ssousr";
	public static final int ses_timeout= 7200;//session2小时失效
	public static final SimpleDateFormat fmt = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	public static final SimpleDateFormat YMD = new SimpleDateFormat("yyyy-MM-dd");

	public static final Integer TREE_ROOT_ID=1;
	public static final Integer PER_PAGE = 10;
	public static final Integer SESTO_CRUD=7200;
	
	public static final String SES_QT_TIP="ses_qt_tip";
	public static final Integer SES_QT_TO=3600;
}
