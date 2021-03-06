<%--
  Created by IntelliJ IDEA.
  User: imqsl
  Date: 2017-10-30
  Time: 14:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
    <title>更多账户 - 以太坊区块链浏览器</title>
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
                        <li><a href="#">API</a></li>
                        <li><a href="#">Verify Ethereum signatures</a></li>
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
<div id="accounts" class="container"><h2>以太坊账户</h2>
    <nav>
        <ul class="pagination">
            <li><a href="#" aria-label="Previous"><span aria-hidden="true">&laquo; Previous</span></a></li>
            <li><a href="#" aria-label="Next"><span aria-hidden="true">Next &raquo;</span></a></li>
            <li><a href="#" aria-label="Previous"><span aria-hidden="true">Last</span></a></li>
        </ul>
    </nav>
    <div class="table-responsive">
        <table class="table table-condensed">
            <tr>
                <th>Account</th>
                <th>Balance</th>
            </tr>
            <tr id="0x0000000000000000000000000000000000000000">
                <td><a href="#">shaoping.eth</a></td>
                <td>7221.724683218724 Ether ($2,221,835.82)</td>
            </tr>
            <tr id="0x0000000000000000000000000000000000000001">
                <td><a href="#">0x0000000000000000000000000000000000000001</a>
                </td>
                <td>2.19561531 Ether ($675.50)</td>
            </tr>
            <tr id="0x0000000000000000000000000000000000000002">
                <td><a href="#">0x0000000000000000000000000000000000000002</a>
                </td>
                <td>0.0001 Ether ($0.03)</td>
            </tr>
            <tr id="0x0000000000000000000000000000000000000003">
                <td><a href="#">0x0000000000000000000000000000000000000003</a>
                </td>
                <td>0.021375011463593984 Ether ($6.58)</td>
            </tr>
            <tr id="0x0000000000000000000000000000000000000004">
                <td><a href="#">0x0000000000000000000000000000000000000004</a>
                </td>
                <td>1e-18 Ether ($0.00)</td>
            </tr>
            <tr id="0x0000000000000000000000000000000000000005">
                <td><a href="#">0x0000000000000000000000000000000000000005</a>
                </td>
                <td>1e-18 Ether ($0.00)</td>
            </tr>
            <tr id="0x0000000000000000000000000000000000000006">
                <td><a href="#">0x0000000000000000000000000000000000000006</a>
                </td>
                <td>1e-18 Ether ($0.00)</td>
            </tr>
            <tr id="0x0000000000000000000000000000000000000007">
                <td><a href="#">0x0000000000000000000000000000000000000007</a>
                </td>
                <td>1e-18 Ether ($0.00)</td>
            </tr>
            <tr id="0x0000000000000000000000000000000000000008">
                <td><a href="#">0x0000000000000000000000000000000000000008</a>
                </td>
                <td>1e-18 Ether ($0.00)</td>
            </tr>
            <tr id="0x0000000000000000000000000000000000000009">
                <td><a href="#">0x0000000000000000000000000000000000000009</a>
                </td>
                <td>1e-18 Ether ($0.00)</td>
            </tr>
            <tr id="0x000000000000000000000000000000000000000a">
                <td><a href="#">0x000000000000000000000000000000000000000A</a>
                </td>
                <td>1e-18 Ether ($0.00)</td>
            </tr>
            <tr id="0x000000000000000000000000000000000000000b">
                <td><a href="#">0x000000000000000000000000000000000000000b</a>
                </td>
                <td>1e-18 Ether ($0.00)</td>
            </tr>
            <tr id="0x000000000000000000000000000000000000000c">
                <td><a href="#">0x000000000000000000000000000000000000000C</a>
                </td>
                <td>1e-18 Ether ($0.00)</td>
            </tr>
            <tr id="0x000000000000000000000000000000000000000d">
                <td><a href="#">0x000000000000000000000000000000000000000d</a>
                </td>
                <td>1e-18 Ether ($0.00)</td>
            </tr>
            <tr id="0x000000000000000000000000000000000000000e">
                <td><a href="#">0x000000000000000000000000000000000000000E</a>
                </td>
                <td>1e-18 Ether ($0.00)</td>
            </tr>
            <tr id="0x000000000000000000000000000000000000000f">
                <td><a href="#">0x000000000000000000000000000000000000000F</a>
                </td>
                <td>1e-18 Ether ($0.00)</td>
            </tr>
            <tr id="0x0000000000000000000000000000000000000010">
                <td><a href="#">0x0000000000000000000000000000000000000010</a>
                </td>
                <td>0 Ether ($0.00)</td>
            </tr>
            <tr id="0x0000000000000000000000000000000000000011">
                <td><a href="#">0x0000000000000000000000000000000000000011</a>
                </td>
                <td>0 Ether ($0.00)</td>
            </tr>
            <tr id="0x0000000000000000000000000000000000000012">
                <td><a href="#">0x0000000000000000000000000000000000000012</a>
                </td>
                <td>0 Ether ($0.00)</td>
            </tr>
            <tr id="0x0000000000000000000000000000000000000013">
                <td><a href="#">0x0000000000000000000000000000000000000013</a>
                </td>
                <td>0 Ether ($0.00)</td>
            </tr>
            <tr id="0x0000000000000000000000000000000000000014">
                <td><a href="#">0x0000000000000000000000000000000000000014</a>
                </td>
                <td>0 Ether ($0.00)</td>
            </tr>
            <tr id="0x0000000000000000000000000000000000000015">
                <td><a href="#">0x0000000000000000000000000000000000000015</a>
                </td>
                <td>0 Ether ($0.00)</td>
            </tr>
            <tr id="0x0000000000000000000000000000000000000016">
                <td><a href="#">0x0000000000000000000000000000000000000016</a>
                </td>
                <td>0 Ether ($0.00)</td>
            </tr>
            <tr id="0x0000000000000000000000000000000000000017">
                <td><a href="#">0x0000000000000000000000000000000000000017</a>
                </td>
                <td>0 Ether ($0.00)</td>
            </tr>
            <tr id="0x0000000000000000000000000000000000000018">
                <td><a href="#">0x0000000000000000000000000000000000000018</a>
                </td>
                <td>0 Ether ($0.00)</td>
            </tr>
            <tr id="0x0000000000000000000000000000000000000019">
                <td><a href="#">0x0000000000000000000000000000000000000019</a>
                </td>
                <td>0 Ether ($0.00)</td>
            </tr>
            <tr id="0x000000000000000000000000000000000000001a">
                <td><a href="#">0x000000000000000000000000000000000000001a</a>
                </td>
                <td>0 Ether ($0.00)</td>
            </tr>
            <tr id="0x000000000000000000000000000000000000001b">
                <td><a href="#">0x000000000000000000000000000000000000001B</a>
                </td>
                <td>0 Ether ($0.00)</td>
            </tr>
            <tr id="0x000000000000000000000000000000000000001c">
                <td><a href="#">0x000000000000000000000000000000000000001c</a>
                </td>
                <td>0 Ether ($0.00)</td>
            </tr>
            <tr id="0x000000000000000000000000000000000000001d">
                <td><a href="#">0x000000000000000000000000000000000000001D</a>
                </td>
                <td>0 Ether ($0.00)</td>
            </tr>
            <tr id="0x000000000000000000000000000000000000001e">
                <td><a href="#">0x000000000000000000000000000000000000001e</a>
                </td>
                <td>0 Ether ($0.00)</td>
            </tr>
            <tr id="0x000000000000000000000000000000000000001f">
                <td><a href="#">0x000000000000000000000000000000000000001F</a>
                </td>
                <td>0 Ether ($0.00)</td>
            </tr>
            <tr id="0x0000000000000000000000000000000000000020">
                <td><a href="#">0x0000000000000000000000000000000000000020</a>
                </td>
                <td>0 Ether ($0.00)</td>
            </tr>
            <tr id="0x0000000000000000000000000000000000000021">
                <td><a href="#">0x0000000000000000000000000000000000000021</a>
                </td>
                <td>0 Ether ($0.00)</td>
            </tr>
            <tr id="0x0000000000000000000000000000000000000022">
                <td><a href="#">0x0000000000000000000000000000000000000022</a>
                </td>
                <td>0 Ether ($0.00)</td>
            </tr>
            <tr id="0x0000000000000000000000000000000000000023">
                <td><a href="#">0x0000000000000000000000000000000000000023</a>
                </td>
                <td>0 Ether ($0.00)</td>
            </tr>
            <tr id="0x0000000000000000000000000000000000000024">
                <td><a href="#">0x0000000000000000000000000000000000000024</a>
                </td>
                <td>0 Ether ($0.00)</td>
            </tr>
            <tr id="0x0000000000000000000000000000000000000025">
                <td><a href="#">0x0000000000000000000000000000000000000025</a>
                </td>
                <td>0 Ether ($0.00)</td>
            </tr>
            <tr id="0x0000000000000000000000000000000000000026">
                <td><a href="#">0x0000000000000000000000000000000000000026</a>
                </td>
                <td>0 Ether ($0.00)</td>
            </tr>
            <tr id="0x0000000000000000000000000000000000000027">
                <td><a href="#">0x0000000000000000000000000000000000000027</a>
                </td>
                <td>0.006616907518533786 Ether ($2.04)</td>
            </tr>
            <tr id="0x0000000000000000000000000000000000000028">
                <td><a href="#">0x0000000000000000000000000000000000000028</a>
                </td>
                <td>0 Ether ($0.00)</td>
            </tr>
            <tr id="0x0000000000000000000000000000000000000029">
                <td><a href="#">0x0000000000000000000000000000000000000029</a>
                </td>
                <td>0 Ether ($0.00)</td>
            </tr>
            <tr id="0x000000000000000000000000000000000000002a">
                <td><a href="#">0x000000000000000000000000000000000000002A</a>
                </td>
                <td>0 Ether ($0.00)</td>
            </tr>
            <tr id="0x000000000000000000000000000000000000002b">
                <td><a href="#">0x000000000000000000000000000000000000002b</a>
                </td>
                <td>0 Ether ($0.00)</td>
            </tr>
            <tr id="0x000000000000000000000000000000000000002c">
                <td><a href="#">0x000000000000000000000000000000000000002c</a>
                </td>
                <td>0 Ether ($0.00)</td>
            </tr>
            <tr id="0x000000000000000000000000000000000000002d">
                <td><a href="#">0x000000000000000000000000000000000000002D</a>
                </td>
                <td>0 Ether ($0.00)</td>
            </tr>
            <tr id="0x000000000000000000000000000000000000002e">
                <td><a href="#">0x000000000000000000000000000000000000002E</a>
                </td>
                <td>0 Ether ($0.00)</td>
            </tr>
            <tr id="0x000000000000000000000000000000000000002f">
                <td><a href="#">0x000000000000000000000000000000000000002F</a>
                </td>
                <td>0 Ether ($0.00)</td>
            </tr>
            <tr id="0x0000000000000000000000000000000000000030">
                <td><a href="#">0x0000000000000000000000000000000000000030</a>
                </td>
                <td>0 Ether ($0.00)</td>
            </tr>
            <tr id="0x0000000000000000000000000000000000000031">
                <td><a href="#">0x0000000000000000000000000000000000000031</a>
                </td>
                <td>6e-18 Ether ($0.00)</td>
            </tr>
        </table>
    </div>
</div>
<div class="container">
    <footer><p>© 四川大学嵌入式实验室 | 以太坊区块链浏览器 | 联系我们 | 数据来源：
        <a href="https://www.etherchain.org">www.etherchain.org</a> | Powered by Parity v1.7.8</p>
    </footer>
</div>
</body>
</html>
