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
    {foreach $info as $i}
<form role="form" action="" method="get">
<div class="form-group col-md-8">
<label for="name">用户名</label>
<input type="text" id="name" class="form-control" name="name" value="{$i.username}" />
</div>
<div class="form-group col-md-8">
<label for="email">电子邮件</label>
<input type="user" class="form-control" value="{$i.userpass}" />
</div>
<div class="form-group col-md-8">
</div>
</form>
    {/foreach}
</div>
</div>
</body>
</html>