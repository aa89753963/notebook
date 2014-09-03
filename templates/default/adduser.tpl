<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="zh-CN">
<head>
<title>新建网页</title>
<link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.2.0/css/bootstrap.min.css">
<script type="text/javascript" src="http://validform.rjboy.cn/wp-content/themes/validform/js/jquery-1.6.2.min.js"></script>
<script type="text/javascript" src="http://validform.rjboy.cn/Validform/v5.3.2/Validform_v5.3.2_min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
</head>
<body>
<div class="container">
<div class="row">
<form role="form" action="select.php" method="get">
<div class="form-group col-md-7">
<label for="name">用户名</label>
<input type="text" id="name" class="form-control" name="name" placeholder="请输入用户名!"datatype="s5-16" nullmsg="请填写中文名" errormsg="昵称至少5个字符,最多16个字符！" />
</div>
<div class="col-md-5"></div>
<div class="form-group col-md-7">
<label for="pwd">密码</label>
<input type="password" class="form-control" name="pwd" placeholder="请输入密码" datatype="*6-15" errormsg="密码范围在6~15位之间！" />
</div>
<div class="col-md-5"></div>
<div class="form-group col-md-7">
<label for="pwd1">确认密码</label>
<input type="password" class="form-control" id="pwd1" placeholder="请再次输入密码" datatype="*" recheck="pwd" errormsg="您两次输入的账号密码不一致！" />
</div>
<div class="col-md-5"></div>
<div class="form-group col-md-7">
<label for="email">电子邮件</label>
<input type="user" class="form-control" id="email" placeholder="请输入email地址!" datatype="e" errormsg="请输入正确邮箱!" />
</div>
<div class="col-md-5"></div>
<div class="form-group col-md-7">
<button type="submit" class="btn btn-default">提交</button>
</div>
</form>
</div>
</div>
<script type="text/javascript">
$(function(){
    var demo=$(".row").Validform({
        tiptype:2
        });
        $("#name").blur(function(){
            var username = $(this);
                $.get("select.php", {name: username.val()}, function(data){
                    username.parent().next().html(data);
                });
    });
});
</script>
</body>
</html>