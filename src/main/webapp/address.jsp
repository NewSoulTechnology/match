<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="css/bootstrap.css" />
<style type="text/css">
div.moduleItem {
    border: 1px solid #ededed;
    border-radius: 5px;
    margin-top: 15px;
    background-color: #fff;
}
.grzxTabBox {
    padding: 0px 23px 30px 23px;
}
div, p, h1, h2, h3, textarea {
    word-wrap: break-word;
    word-break: break-all;
}
div {
    display: block;
}
.grzxTabUl {
    border-bottom: 3px solid #ebeef1;
    height: 57px;
}
ol, ul {
    list-style: none;
}
ul, menu, dir {
    display: block;
    -webkit-margin-before: 1em;
    -webkit-margin-after: 1em;
    -webkit-margin-start: 0px;
    -webkit-margin-end: 0px;
    -webkit-padding-start: 40px;
}
.grzxTabUl .grzxTabLi.cur {
    border-bottom: 3px solid #50abf2;
}
.grzxTabUl .grzxTabLi {
    height: 57px;
    line-height: 57px;
    cursor: pointer;
    float: left;
    font-size: 14px;
    font-weight: bold;
    border-bottom: 3px solid #ebeef1;
    padding: 0px 20px;
}
.grzx_ddList {
    margin: 17px 0px 0px 0px;
}
.gqDDListTable {
    width: 100%;
}
table {
    border-collapse: collapse;
    border-spacing: 0;
}
colgroup {
    display: table-column-group;
}
col {
    display: table-column;
}
thead {
    display: table-header-group;
    vertical-align: middle;
    border-color: inherit;
}
.gqDDListTable thead tr {
    border: 1px solid #eceaea;
    height: 37px;
}
.gqDDListTable thead th {
    background-color: #eaebec;
}
.gqDDListTable .shdzTbody {
    border: 1px solid #f0f0f0;
}
.new_shdzBtn {
    font-size: 18px;
    color: #fff;
    display: block;
    width: 190px;
    height: 45px;
    border-radius: 3px;
    background-color: #55acef;
    margin: 20px auto 0px auto;
}
button, input, select, textarea {
    font-family: inherit;
    font-size: inherit;
    font-weight: inherit;
    vertical-align: baseline;
    line-height: normal;
    outline: none;
    border: none;
}
</style>
</head>
<body>
<div class="grzxTabBox moduleItem">
<ul class="grzxTabUl" id="grzxTabUl">
<li class="grzxTabLi cur">收货地址</li>
</ul>
<div class="grzx_ddList" id="grzxTabCBox">
<div class="grzxTabItem">
        <div class="shdzBox">
            <table class="gqDDListTable" id="shdzTable">
                <colgroup>
                    <col width="90px">
                    <col width="150px">
                    <col width="260px">
                    <col width="120px">
                    <col width="140px">
                    <col width="auto">
                </colgroup>
                <thead>
                <tr>
                    <th>收件人</th>
                    <th>所在地区</th>
                    <th>详细地址</th>
                    <th>邮编</th>
                    <th>联系方式</th>
                    <th>操作</th>
                </tr>
                </thead>
                    <tr>
                        <td colspan="6" style="height: 40px; text-align:  center;border-left: solid 1px #f0f0f0;border-right: solid 1px #f0f0f0;">
                            您还没有设置收货地址
                        </td>
                    </tr>
                </tbody>
            </table>
            <input type="button" class="new_shdzBtn" value="新增地址">
            
        </div>
    </div>
</div>
</div>
</body>
</html>