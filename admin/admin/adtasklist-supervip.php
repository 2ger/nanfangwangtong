<?php
header('Content-Type:text/html; charset=utf-8');
define('IN_XD',true);
require('../include/common.inc.php');
define('SCRIPT','adtasklist');
session_start();
require("check.php");

//cha imagepath
if($_GET["act"]=="imagepath"){
	$id = $_GET["tid"];
    $sql="select * from tbl_ads_task where id=".$_GET['tid'];
    $result=mysql_query($sql);
    $row = mysql_fetch_array($result);
    echo $row['imagepath'];
    exit;
}

//删除昨天的
$whered = ' addtime < '.strtotime(date('Y-m-d'));
$sql="delete from tbl_ads_task where ".$whered;
mysql_query($sql);

//删除
if($_GET["act"]=="del"){
    $sql="delete from tbl_ads_task where id=".$_GET['id'];
    mysql_query($sql);
    mysql_close();
    echo "<script type='text/javascript'>alert('成功删除!');location.href='adtasklist-supervip.php?page=".$_GET["page"]."';</script>";
    exit;
}

//批量删除
if($_GET["act"]=="delall"){
    for($i=0;$i<count($_POST['ids']);$i++){
        $sql="delete from tbl_ads_task where id=".$_POST['ids'][$i];
        mysql_query($sql);
    }
    echo "<script type='text/javascript'>alert('成功删除!');location.href='adtasklist-supervip.php?page=".$_GET["page"]."';</script>";
    exit;
}



if($_GET['act']=='ischeck'){
    //返佣金
    $superad = $_GET['supervip'];
    $fanzi = 10;
    $fan1 = 6;
    $fan2 = 3;
    $fan3 = 3;
    $fan4 = 0.3;//经理
        if($superad){
    $fanzi = 30;
        }
    $fan21 = 18;
    $fan22 = 9;
    $fan23 = 9;
    $fan24 = 0.9;
    //
    //
    $sql="update tbl_ads_task set ischeck={$_GET['status']} where id={$_GET['id']}";
    mysql_query($sql);

    // error_reporting(E_ALL);
    // ini_set('display_errors', 1);

    $sql="select * from tbl_ads_task where id={$_GET['id']}";
    $result=mysql_query($sql);
    $row = mysql_fetch_array($result);
    $yi=$row['user_id'];
    $sql="update tbl_user set money=money+{$fanzi} where id='{$yi}'";
    mysql_query($sql);//自己

    $sql="select * from tbl_user where id={$yi}";
    $result=mysql_query($sql);
    $row = mysql_fetch_array($result);
    $time=time();



    //写入交易日志
    $sql="insert into tbl_acount_log (user_id,username,shouru,addtime,leixing) values ({$row['id']},'{$row['userid']}',{$fanzi},{$time},'用户发圈奖励')";
    // exit($sql);
    mysql_query($sql);

    
    if(trim($row['shuyu'])){
        $sql="select * from tbl_user where userid='{$row['shuyu']}'";
        $result=mysql_query($sql);
        $row = mysql_fetch_array($result);
        if(!empty($row)){
            $yi=$row['userid'];
            if($superad && $row['supervip']){
                $fan1 = $fan21;
            }
            $sql="update tbl_user set money=money+{$fan1} where userid='{$yi}'";
            mysql_query($sql);//一级
            //写入交易日志
            $sql="insert into tbl_acount_log (user_id,username,shouru,addtime,leixing) values ({$row['id']},'{$row['userid']}',{$fan1},{$time},'1级发圈奖励')";
            mysql_query($sql);
            
            if(trim($row['shuyu'])){
                
                $sql="select * from tbl_user where userid='{$row['shuyu']}'";
                $result=mysql_query($sql);
                $row = mysql_fetch_array($result);
                
                if(!empty($row)){
                    $er=$row['userid'];
            if($superad && $row['supervip']){
                $fan2 = $fan22;
            }
                    $sql="update tbl_user set money=money+{$fan2} where userid='{$er}'";
                    mysql_query($sql);//次级关系会员加8
                    //写入交易日志
                    $sql="insert into tbl_acount_log (user_id,username,shouru,addtime,leixing) values ({$row['id']},'{$row['userid']}',{$fan2},{$time},'2级发圈奖励')";
                    mysql_query($sql);

                    if(trim($row['shuyu'])){
                
                        $sql="select * from tbl_user where userid='{$row['shuyu']}'";
                        $result=mysql_query($sql);
                        $row = mysql_fetch_array($result);
                        
                        // if(!empty($row)){
                            // $er=$row['userid'];
                            // $sql="update tbl_user set money=money+{$fan3} where userid='{$er}'";
                            // mysql_query($sql);//3级关系会员加8
                            // //写入交易日志
                            // $sql="insert into tbl_acount_log (user_id,username,shouru,addtime,leixing) values ({$row['id']},'{$row['userid']}',{$fan3},{$time},'3级发圈奖励')";
                            // mysql_query($sql);
                            $i=3;
                            // // var_dump($row);exit;
                            do{
                                if(trim($row['shuyu'])){
                
                                    $sql="select * from tbl_user where userid='{$row['shuyu']}'";
                                    $result=mysql_query($sql);
                                    $row = mysql_fetch_array($result);
                                    
                                    if(!empty($row)){
                                        // var_dump($row);exit;
                                        if($row['groupid']==2){
                                            $er=$row['userid'];

            if($superad && $row['supervip']){
                $fan4 = $fan24;
            }
                                            $sql="update tbl_user set money=money+{$fan4} where userid='{$er}'";
                                            mysql_query($sql);//经理8
                                            //写入交易日志
                                            $sql="insert into tbl_acount_log (user_id,username,shouru,addtime,leixing) values ({$row['id']},'{$row['userid']}',{$fan4},{$time},'{$i}级发圈奖励，营销经理')";
                                            mysql_query($sql);
                                        }
                                    }
                                    $i++;
                                }else{
                                    break;
                                }
                            }while(true);
                        // }
                        
                    }
                }
                
            }
            
        }
        
    }
    
}



//$where=" ";
//if($_GET['s']!=""){
//    $where .= " and status = ".$_GET['s'];
//}
//if($_GET["act"]=="search" && $_POST['title']!=''){
//    $where .= " and (title like '%".$_POST['title']."%' or content like '%".$_POST['title']."%')";
//}
//if($_GET["userid"]){
//    $where .= " and userid = '".$_GET["userid"]."'";
//}
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="css/style.css" rel="stylesheet" type="text/css" />
    <link href="skin/aero/aero.css" rel="stylesheet" type="text/css"/>
    <link href="css/lanrenzhijia.css" type="text/css" rel="stylesheet" />
    <script type="text/javascript" src="js/jquery.js"></script>
    <script type="text/javascript" src="artDialog.js"></script>
    <script language="javascript">
        $(function(){
            //导航切换
            $(".imglist li").click(function(){
                $(".imglist li.selected").removeClass("selected")
                $(this).addClass("selected");
            })
        })
    </script>
    <script type="text/javascript">
        $(document).ready(function(){
            $(".click").click(function(){
                $(".tip").fadeIn(200);
            });
            $(".tiptop a").click(function(){
                $(".tip").fadeOut(200);
            });
            $(".sure").click(function(){
                $(".tip").fadeOut(100);
            });
            $(".cancel").click(function(){
                $(".tip").fadeOut(100);
            });
        });
    </script>
    <script language="javascript">
        function CheckAll(form){
            for (var i=0;i<form.elements.length;i++){
                var e = form.elements[i];
                if (e.Name != "chkAll")
                    e.checked = form.chkAll.checked;
            }
        }
        function ConfirmDel(){
            if(confirm("确定要操作吗？"))
                return true;
            else
                return false;
        }
    </script>
    <script type="text/javascript">
        function delall(){
            a = 0;
            var conditions=document.getElementsByName("ids[]");
            for(var i=0;i<conditions.length;i++){
                if(conditions[i].checked==true){
                    a++;
                }
            }
            if(a>0){
                if(confirm('您已选中'+a+'条数据,是否确认删除?')){
                    document.forms.action='adtasklist-supervip.php?act=delall&page=<?=$_GET["page"]?>';
                    document.getElementById('forms').submit();
                }else{
                    return false;
                }
            }else{
                alert('您没有选中任何信息！');
                return false;
            }
        }
        
        
        
    </script>
    <script src="js/jquery.min.js"></script>
    <script src="js/jquery.imgbox.pack.js"></script>
    <script>
        $(function(){
            $(".example1").imgbox();
            $("#example2").imgbox({
                'speedIn'		: 0,
                'speedOut'		: 0,
                'alignment'		: 'center',
                'overlayShow'	: true,
                'allowMultiple'	: false
            });
        });
    </script>
</head>
<body>
<div class="place">
    <span>位置：</span>
    <ul class="placeul">
        <li><a href="main.php">首页</a></li>
        <li><a href="">广告任务管理</a></li>
    </ul>
</div>
<div class="rightinfo">
    <div class="tools">
        <ul class="toolbar">
            <li>
                <a onclick="delall()">
                    <span>
                        <img src="images/t03.png" />
                    </span>批量删除
                </a>
            </li>
			
           
			
			
            <li>
                <a href="adtasklist-supervip.php?status=0">
                    <span>
                      
                    </span>待审核
                </a>
            </li>
		<!---->
            <li>
                <a href="adtasklist-supervip.php?status=3">
                    <span>
                      
                    </span>待上传
                </a>
            </li>
					
				
            <li>
                <a href="adtasklist-supervip.php?status=2">
                    <span>
                       
                    </span>已审核
                </a>
            </li>
			
           <!-- --> <li style="float:right">
                <form name="searchsoft" method="get" action="">
                    <strong>&nbsp;&nbsp;&nbsp;搜索手机号：</strong>
					<input name="act" type="hidden" value="search">
					
                    <input name="title" type="text" id="title" size="20" maxlength="50" class="dfinput" style="width:200px;height:28px" placeholder="标题或内容"/>
                    <input name="Query" type="submit" id="Query" value="查 询" class="scbtn" style="height:28px">
                   <!--   <i>&nbsp;&nbsp;请输入关键字。如果为空，则查找所有信息</i>-->
                </form>
            </li>
        </ul>
    </div>
    <form method="post" action="?" id="forms" name="forms">
        <table class="imgtable">
            <thead>
            <tr>
                <th width="50px;">
                    <input name="chkAll" type="checkbox" id="chkAll" onclick=CheckAll(this.form) value="checkbox"/>
                </th>
                <th>任务ID</th>
                <th>标题</th>
                <th width="300">文案</th>
                <th>截图数据</th>
                <th>创建时间</th>
                <th>任务执行人</th>
                <th>是否审核</th>
                <th>操作</th>
            </tr>
            </thead>
            <tbody>
            <?php
			$status = 0;
			
			$where = ' (ischeck =0 and imagepath !="") or ischeck=2';
            if($_GET['status']){
				$status = $_GET['status'];
			}
			if($status==3){
				$where = " ischeck =0 and  (imagepath ='' or imagepath is null)";
			}
			if($status==2){
				$where = ' ischeck =1 ';
			}
			 if($_GET['title']){
				 $where = ' username = "'.$_GET['title'].'" ';
			 }
            // $where .= ' and addtime < '.strtotime(date('Y-m-d'));
            // echo $where;
            $page_sql = "select id from tbl_ads_task where ".$where." ";//limit 100
            qy_page($page_sql,10);
            $sql = "select id,aid,user_id,username,addtime,ischeck,price from tbl_ads_task where ".$where." ORDER by id DESC LIMIT $_pagenum,$_pagesize";
            // exit($sql);
            $query=mysql_query($sql);
            while($row=mysql_fetch_array($query)){
                // var_dump($row);
                $sql="select * from tbl_ads where id={$row['aid']}";
                $query2=mysql_query($sql);
                $r=mysql_fetch_array($query2);
                
                ?>
                <tr height="35px">
                    <td>
                        <input name='ids[]' type='checkbox' onClick="unselectall()" id="ID" value='<?=$row['id']?>'>
                    </td>
                    <td><?=$row['id']?></td>
                    <td><?=$r['title']?>

<?php 
                if($r['supervip']){
               echo '- 超级任务'; 
                }else{
               echo '- 普通任务'; 
                }

?>
</td>
                    <td><?=$r['content']?></td>
                    <td>
                    <?php
                   if($_GET['status']<3){
                    ?>
					
					 <b  id="img_<?=$row['id']?>" task_id="<?=$row['id']?>"> 查看图片  </b>
				
                    <?php
                    }
                    ?>
                    </td>
                    <td><?=date('Y-m-d H:i:s',$row['addtime'])?></td>
                    <td><?=$row['username']?>
</td>
                    <td>
                        <?php
						if($_GET['status']==3){
                      //  if(!empty($row['imagepath'])){
                       echo "<font color='orange'>待上传</font>";
                      }else{
                        //   
                        //}
						      if(($row['ischeck']==0 || $row['ischeck']==2) && $row['ischeck']!=1){
                                echo "<a href='javascript:if(confirm(\"确定审核\")){location.href=\"?page={$_GET['page']}&act=ischeck&id={$row['id']}&supervip={$r['supervip']}&status=1\";}'><font color='red'>未审核</font></a>";
                            }
							if($row['ischeck']==1){
                                echo "<font color='green'>已审核</font>";
                            }
							}
                        ?>
                    </td>
                    <td>
                        <a href="?act=del&id=<?=$row['id']?>">删除</a>
                    </td>
                </tr>
                <?php
            }
            ?>
            </tbody>
        </table>
        
        <div class="pagin">
            <?=qy_paginga()?>
        </div>
</div>
</form>
<script type="text/javascript">
    $('.imgtable tbody tr:odd').addClass('odd');
    $("img[id^='img_']").click(function(){
	
        artDialog({content:'<img src="'+$(this).attr("src")+'">',title:"截图"})
    });
	   $("b[id^='img_']").click(function(){
		console.log(tid);
		var tid = $(this).attr("task_id");
		$.get('adtasklist-supervip.php?act=imagepath&tid='+tid,function(ret){
			console.log(ret);
			artDialog({content:'<img src="'+ret+'">',title:"截图"})
		})
        
    });
</script>
</body>
</html>
