<%--
  Created by IntelliJ IDEA.
  User: imqsl
  Date: 2017-10-30
  Time: 10:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags-->
    <meta name="description" content="以太坊区块链浏览器">
    <meta name="author" content="imqsl">
    <meta name="keywords"
          content="以太坊, 浏览器, 区块链, etherchain, 加密货币, 比特币">
    <meta name="theme-color" content="#18bc9c">
    <link rel="icon" href="//etherchain.org/images/glyphicons-51-link.png">
    <title>更多交易 - 以太坊区块链浏览器</title>
    <!-- Bootstrap core CSS-->
    <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="//cdn.datatables.net/r/bs/dt-1.10.9/datatables.min.css">
    <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/highlight.js/9.1.0/styles/default.min.css">
    <style>
        body {
            padding-top: 50px;
            padding-bottom: 20px;
        }</style>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.4/jquery.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/knockout/3.3.0/knockout-min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.10.3/moment.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bignumber.js/2.0.7/bignumber.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/numeral.js/1.4.5/numeral.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jstimezonedetect/1.0.4/jstz.min.js"></script>
    <script src="dateFormat.js"></script>

</head>
<body>
<nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container">
        <div class="navbar-header">
            <button type="button" data-toggle="collapse" data-target="#navbar" aria-expanded="false"
                    aria-controls="navbar" class="navbar-toggle collapsed">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a href="/" title="SCU嵌入式实验室" class="navbar-brand">
                <span class="glyphicon glyphicon-link"></span>川大嵌入式实验室</a></div>
        <div id="navbar" class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
                <li class="dropdown"><a href="#" data-toggle="dropdown" role="button" aria-haspopup="true"
                                        aria-expanded="false" class="dropdown-toggle"><span
                        class="glyphicon glyphicon-eye-open"></span> 区块链<span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="blocks.jsp"><span class="glyphicon glyphicon-book"></span> 区块</a></li>
                        <li><a href="txs.jsp"><span class="glyphicon glyphicon-transfer"></span> 交易</a></li>
                    </ul>
                </li>
                <li class="dropdown"><a href="#" data-toggle="dropdown" role="button" aria-haspopup="true"
                                        aria-expanded="false" class="dropdown-toggle"><span
                        class="glyphicon glyphicon-list-alt"></span> 账户<span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="acounts.jsp">账户</a></li>
                    </ul>
                </li>
                <li class="dropdown"><a href="#" data-toggle="dropdown" role="button" aria-haspopup="true"
                                        aria-expanded="false" class="dropdown-toggle">
                    <div class="span glyphicon glyphicon-wrench"></div>
                    工具<span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="https://ens.etherchain.org/" target="_blank"><span
                                class="glyphicon glyphicon-globe"></span> Ethereum Name Service</a></li>
                        <li><a href="https://www.ethernodes.org/" target="_blank">Nodes Explorer</a></li>
                        <li><a href="https://github.com/gobitfly/etherchain-light" target="_blank">Etherchain Light</a>
                        </li>
                        <li><a href="https://github.com/gobitfly/erc20-explorer" target="_blank">ERC20 Token
                            explorer</a></li>
                        <li><a href="/documentation/api/">API</a></li>
                        <li><a href="/verify/signature">Verify Ethereum signatures</a></li>
                    </ul>
                </li>
            </ul>
            <form action="/search" method="POST" class="navbar-form navbar-right">
                <div class="form-group"><input type="text" placeholder="ENS, Tx Hash, Address or Block number"
                                               id="search" name="search" class="form-control input-sm"></div>
                <button type="submit" style="margin-left: 2px" class="btn btn-success">
                    <span class="glyphicon glyphicon-search"></span></button>
            </form>
        </div>
    </div>
</nav>
<div id="txs" class="container"><h2>最新交易</h2>
    <nav></nav>
    <ul class="pagination">
        <li><a href="/txs/50" aria-label="Previous"><span aria-hidden="true">&laquo; Previous</span></a></li>
    </ul>
    <table class="table table-condensed">
        <th>Hash</th>
        <th>Block</th>
        <th>From</th>
        <th>To</th>
        <th>Amount</th>
        <th>Time</th>
        </thead>
        <tbody id="moretxs">
        </tbody>
    </table>
</div>
<div class="container">
    <footer><p>© 四川大学嵌入式实验室  |  以太坊区块链浏览器  |  联系我们  |  数据来源：
        <a href="https://www.etherchain.org">www.etherchain.org</a>  |  Powered by Parity v1.7.8</p>
    </footer>
</div>
</body>
<script>


    var baseurl = "https://etherchain.org/api/basic_stats";
    $.ajaxSettings.async = false;//同步ajax请求
    $.getJSON(baseurl, function (result) {
        var result = eval(result);
        var number=result.data.difficulty.number;
        txurl="https://etherchain.org/api/block/"+number+":id/tx"
        $.getJSON(txurl,function (resultdata) {
            var resultdata = eval(resultdata);
            var length;
            if(resultdata.data.length>=50){
                length=50;
            }else {
                length=resultdata.data.length;
            }
            for(i=0;i<length;i++){
                var hash=resultdata.data[i].hash.substring(0,9)+"...";
                var block_id=resultdata.data[i].block_id;
                var sender=resultdata.data[i].sender.substring(0,9)+"...";
                var recipient=resultdata.data[i].recipient.substring(0,9)+"...";
                var amount=(resultdata.data[i].amount/1000000000000000000)+" Ether";
                var time=new Date(resultdata.data[i].time).format("yyyy-MM-dd hh:mm:ss");
                $("#moretxs").append("<tr><td>"+hash+"</td><td>"+block_id+"</td>" +
                    "<td>"+sender+"</td><td>"+recipient+"</td><td>"+amount+"</td><td>"+time+"</td>" + "</tr>");
            }
            if(length<50){
                number=number-1;
                console.log(number);
                txurl="https://etherchain.org/api/block/"+number+":id/tx";
                $.getJSON(txurl,function (resultdata) {
                    for(i=0;i<50-length;i++){
                        var hash=resultdata.data[i].hash.substring(0,9)+"...";
                        var block_id=resultdata.data[i].block_id;
                        var sender=resultdata.data[i].sender.substring(0,9)+"...";
                        var recipient=resultdata.data[i].recipient.substring(0,9)+"...";
                        var amount=(resultdata.data[i].amount/1000000000000000000)+" Ether";
                        var time=new Date(resultdata.data[i].time).format("yyyy-MM-dd hh:mm:ss");
                        $("#moretxs").append("<tr><td>"+hash+"</td><td>"+block_id+"</td>" +
                            "<td>"+sender+"</td><td>"+recipient+"</td><td>"+amount+"</td><td>"+time+"</td>" + "</tr>");
                    }
                })
            }
        })

    })


</script>
</html>
