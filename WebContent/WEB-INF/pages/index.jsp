<!--
 * 作者:tjp
 * QQ号：57454144
 * QQ群：168895774
 * 官网：http://www.tjpcms.com
 * 码云：https://git.oschina.net/tjpcms/tjpcms
 * 更新日期：2017-01-22
 * tjpcms - 最懂你的cms
 * -->

<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<% request.setAttribute("path", request.getContextPath());%>

<!doctype html>
<html>
<head>
<title>tjpcms - 首页</title>
<%@ include file="inc/meta.jsp"%>

<style>
	*{font-family: "Microsoft YaHei","sans-serif"};
	a{-webkit-transition: all 0.5s; -moz-transition: all 0.5s; -o-transition: all 0.5s;}
	@keyframes pulse{
		0%{-webkit-transform:scale3d(1,1,1);-ms-transform:scale3d(1,1,1);transform:scale3d(1,1,1)} 
		75%{-webkit-transform:scale3d(1,1,1);-ms-transform:scale3d(1,1,1);transform:scale3d(1,1,1)} 
		92%{-webkit-transform:scale3d(1.07,1.07,1.07);-ms-transform:scale3d(1.07,1.07,1.07);transform:scale3d(1.07,1.07,1.07)}
		100%{-webkit-transform:scale3d(1,1,1);-ms-transform:scale3d(1,1,1);transform:scale3d(1,1,1)}
	}
	.pulse{-webkit-animation-name:pulse;animation-name:pulse}
	.animated{-webkit-animation-duration:6s;animation-duration:6s;
		-webkit-animation-fill-mode:both;animation-fill-mode:both;z-index:100;
		animation-iteration-count:infinite;-webkit-animation-iteration-count:infinite;}
	.kaic{
		border: solid 1px #0a8;border-left-width: 6px;width: 80%;margin: 0 auto;
	    padding: 20px;margin-top: 20px;
	    border-radius: 4px;text-align: justify !important;
	}
	.kaic strong{
		display: block;
	    font-size: 20px;
	    margin-bottom: 10px;color:#0a8
	}
	.kaic p{
		line-height: 24px;text-indent: 2em;color: #b94a48;font-size: 15px;text-shadow: silver 0px 1px 1px !important;text-align: justify !important;
	}
	.xiazai{width: 100%;margin: 0 auto;padding: 6px 0 13px;text-align: center;position: relative;}
	.xiazai a{text-decoration: underline;font-size: 12px;}
	.anniu1:hover{animation-play-state:paused;-webkit-animation-play-state:paused;}
	.anniu1{display:inline-block;width: 168px;-webkit-border-radius: 6px;padding: 11px 0px;
	-moz-border-radius: 6px;background:  #1c84c6;color: #fff;box-shadow: inset 0 0 0 #1872ab ,0 5px 0 0 #1872ab,0 10px 5px #999;
	border-radius: 6px;cursor: pointer;border:1px solid  #1c84c6 }
	.anniu1:hover{filter:alpha(opacity=80);opacity:0.8;-moz-opacity:0.8;-khtml-opacity:0.8;}
	.icon-xiazai:before{font-size: 26px !important;}
	.icon-xiazai label{font-size: 18px;font-weight: bold;cursor: pointer;}
	.tip{text-align: center;color:#333;margin-top: 8px;}
	.tip p{padding: 2px 0;}
	.tip p a{text-decoration: underline;}
	.bdsharebuttonbox {padding-top: 10px !important;position: relative;}
	.bdsharebuttonbox a{
		float:none !important; padding: 8px 15px !important;margin: 0 !important;
		font-size: 12px !important;height: 16px !important;line-height: 15px !important;}
		
	.bds_count{display:inline-block;cursor: default !important;margin: 0 !important;line-height: 15px;width: 42px;
		position: absolute;top: 20px;margin-left: 0px !important;}
	.btn{
		-webkit-border-radius: 6px;-moz-border-radius: 6px;border-radius: 6px;
		border: 1px solid #ccc;padding: 11px 0px;
		background: #3bb4f2 !important;color: #fff !important;
		cursor: pointer;border:1px solid  #3bd;display:inline-block}
	}
	.dsharebuttonbox a:hover{filter:alpha(opacity=80) !important;opacity:0.8 !important;-moz-opacity:0.8 !important;-khtml-opacity:0.8 !important;}
	.bdshare-button-style0-16 a:hover{filter:alpha(opacity=80) !important;opacity:0.8 !important;-moz-opacity:0.8 !important;-khtml-opacity:0.8 !important;}
	.zancnt{background: url("${path}/images/tjpcms/sc2.png") no-repeat -54px -46px; display:inline-block;width: 42px;height: 16px;line-height: 15px;
		position: relative;top: 2px;}
	/* .bdshare-button-style0-16 .icon-iconfontcolor68{margin-left: 20px !important;} */
	.icon-iconfontcolor68:before{font-size: 17px;}
	.zancnt:hover{background: url("${path}/images/tjpcms/sc2.png") no-repeat -12px -46px; cursor: default !important;}
	.xzcnt{display: inline-block;width: 56px;}
	.sspznr{text-decoration: underline !important;padding: 0 18px 0 3px;background:url(${path}/images/tjpcms/sywh1.png) no-repeat right -1px;margin-right: 3px;}
	.layui-layer-tips{    box-shadow: 0 3px 9px rgba(0, 0, 0, 0.1) !important;}
	.yqlj{margin-top: 20px;border-top:1px dotted  rgb(189,215,242)}
	.yqlj .ljtt{vertical-align: bottom;background: #3595CC;color: #fff;width: 60px;font-size: 13px;text-align: center;padding: 8px;display: inline-block;-webkit-border-radius: 2px;
	-moz-border-radius: 2px;border-radius: 2px;}
	.ljnr{display: inline-block;;vertical-align: bottom;}
	.ljnr li{float: left;padding: 0 10px;}
	.ljulout{padding: 7px 0 7px 10px;width: 911px;display: inline-block;}
	.ljnr li a{text-decoration: none;}
	.anleft{display: inline-block;text-align:left;margin-right: 10px;position:relative;top:18px}
	.anright{display: inline-block;text-align:left;margin-left: 10px;position: relative; top: 18px;}
	.xiazai li{height: 22px}
</style>

</head>
<body>
	<%@ include file="inc/head.jsp"%>
	<div class="sycontent">
		<div class="kaic ">
			<strong>欢迎下载使用tjpcms</strong>
			<p></p>
		</div>
		<div class="xiazai  ">
			<ul class="anleft">
				<li style=""><a target="_blank" class="lsbb lefttip" href="${path}/zatan_detail.dhtml?id=303">下载太慢？</a></li>
				<li style=""><a target="_blank" class="lsbb lefttip" href="javascript:" onclick="layer.msg('请先登录')">想投稿？</a></li>
				<li style=""><a target="_blank" class="lsbb lefttip" href="javascript:" onclick="layer.msg('先手动提交给我吧，后期开放码云')">想提交代码？</a></li>
			</ul>
			<div class="anniu1 icon-xiazai animated pulse" style="display: inline-block;">
				&nbsp;&nbsp;&nbsp;<label>立即下载</label>
			</div>
			<ul class="anright">
				<li><a target="_blank" class="zmyong" href="${path}/guanyu.dhtml">有什么用？</a></li>
				<li><a target="_blank" class="zmyong" href="${path}/huanjing.dhtml">遇到问题？</a></li>
				<li><a target="_blank" class="lsbb" href="${path}/bbgx.dhtml">历史版本</a></li>
			</ul>
		</div>
		<div class="tip">
			<p>总下载量：<span class="xzcnt"></span></p>
			<p>当前版本： <a href="${path}/bbgx_detail.dhtml?id=154">${bb.val}</a>（${bb.gx }）</p>
			<div class="bdsharebuttonbox" onselectstart="return false">
				<div class="zancnt" title="累计赞次" ></div>
				<a class='icon-zan btn' style="padding-left:19px !important;padding-right: 17px !important;">
					<label style="font-size:13px !important;cursor:pointer">赞</label>
				</a>
				<div style="width:19px;height: 100%;display:inline-block"></div>
				<a class="icon-iconfontcolor68 btn" data-cmd="more" style="padding-left:11px !important">&nbsp;分享</a>
				<div class="bds_count" data-cmd="count" ></div>
				<div style="width: 42px;height: 16px;display:inline-block;"></div>
			</div>
		</div>
		<div class="yqlj">
			<span class='ljtt'>友情链接</span><div class="ljulout"><ul class="ljnr">
				<c:forEach items="${ljs}" var="t" varStatus="sta">
					<li ><a href="${t.wz}" target="_blank">${t.mc}</a></li>
				</c:forEach>
			</ul></div>
		</div>
	</div>
	<%@ include file="inc/btm.jsp"%>

	<script src="${path}/layer/layer.js"></script>
	<script>
	
	
		//IE丢失refer的问题，这是什么鬼
		function gotoUrl(url) {
			if (document.all) {//ie
				var gotoLink = document.createElement('a');
				//gotoLink.setAttribute('target','_blank')
				gotoLink.href = url;
				document.body.appendChild(gotoLink);
				gotoLink.click();
			} else{
				window.location.href = url;
			}
		}
		
		function plus1(e){
		    var $i=$("<b>").text("+1");
		    var x=e.pageX,y=e.pageY;
		    $i.css({top:y-20,left:x,position:"absolute",color:"#f00", "font-size":"36px","z-index":"999999"}).attr("onselestart","return false");
		    $("body").append($i);
		    $i.animate({top:y-80,opacity:0,"font-size":"0.99em"},2000,function(){
		        $i.remove();
		    });
		    e.stopPropagation();
		}
		
		$(function() {
			$(".anniu1").click(function(e) {
				layer.confirm('源码压缩包大小为16M，确定要下载吗？<br/><small>（迅雷可能下载不了，建议普通下载）</small>', {icon: 3, title:'提示'}, function(index){
					layer.closeAll();
					$(".xzcnt").text(parseInt($(".xzcnt").text()) + 1)
					gotoUrl('${path}/syxiazai.dhtml?v=${bb.val}')
					plus1(e);
				});
			})
			$(".icon-zan").click(function() {
				layer.closeAll();
				$.ajax({
					type:"POST",
					url:'${path}/syzan.dhtml',
					datatype: "text",
					success:function(ret){
						if ("0" ==ret) {$(".zancnt").text(parseInt($(".zancnt").text()) + 1);layer.msg("谢谢鼓励~")}
						else layer.msg("赞过啦~")
					}
				});
			})

			//为实时配置内容几个字加上说明
			var kaic = '${META_DES}'
			var sscnt = "实时配置增删改查";
			var ssidx = kaic.indexOf(sscnt)
			if (ssidx!=-1){
				kaic = kaic.substring(0,ssidx)+"<a target='_blank'  class='sspznr' href='${path }/jiandan_detail.dhtml?id=159'>"+sscnt+"</a>"
					+ kaic.substring(ssidx+sscnt.length,kaic.length)
				$(".kaic p").html(kaic)
			}

			$('.sspznr').on('mouseover', function(){
				var that = this;
			  	layer.tips('这是什么意思？点击看看吧', that,{tips:[1, '#3595CC']});
			});
			
			$(".icon-iconfontcolor68").click(function(){layer.closeAll();})
		})

		window._bd_share_config = {common:{},share: {}};
		with (document)0[(getElementsByTagName('head')[0] || body).appendChild(createElement('script')).src = 'http://bdimg.share.baidu.com/static/api/js/share.js?v=89860593.js?cdnversion='+ ~(-new Date() / 36e5)];
	</script>
</body>
</html>

