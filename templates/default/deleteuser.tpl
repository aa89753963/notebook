<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="zh-CN">
<head>
<title>新建网页</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.2.0/css/bootstrap.min.css">
</head>
    <body>
        <table class="table table-hover">
            <tr>
                <td>User</td>
                <td>First Name</td>
                <td>Last Name</td>
                <td>Age</td>
                <td>Gender</td>
                <td>Country</td>
                <td>Email</td>
            </tr>
            {foreach $info as $i}
            <tr>
                <td>{$i.user}</td>
                <td>{$i.firstname}</td>
                <td>{$i.lastname}</td>
                <td>{$i.age}</td>
                <td>{$i.gender}</td>
                <td>{$i.country}</td>
                <td>{$i.user_email}</td>
                <td><a href=""></a></td>          
            </tr>
            {/foreach}
        </table>
    </body>
</html>