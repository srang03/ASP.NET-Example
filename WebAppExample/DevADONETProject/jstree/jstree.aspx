<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="jstree.aspx.cs" Inherits="DevADONETProject.jstree.jstree" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jstree/3.2.1/themes/default/style.min.css" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.12.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jstree/3.2.1/jstree.min.js"></script>
    
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
<div id="tree">

</div>

    </form>
    <script>
        var array =
            [
                { "parent": "#", "depth": 0, "customYn": "N", "customerId": 1, "id": "customerNo_1", "text": "DFAS ENT", "state": { "opened": true, "selected": false }, "type": "customer" },
                { "parent": "customerNo_1", "depth": "2", "customerId": 1, "id": "2", "text": "2323", "state": { "opened": false, "selected": false }, "type": "dept" },
                { "parent": "1", "depth": "3", "customerId": 1, "id": "28", "text": "23423", "state": { "opened": false, "selected": false }, "type": "dept" },
                { "parent": "2", "depth": "2", "customerId": 1, "id": "3", "text": "3 3fff", "state": { "opened": false, "selected": false }, "type": "dept" },
                { "parent": "3", "depth": "2", "customerId": 1, "id": "4", "text": "3232", "state": { "opened": false, "selected": false }, "type": "dept" },
                { "parent": "3", "depth": "3", "customerId": 1, "id": "5", "text": "32323", "state": { "opened": false, "selected": false }, "type": "dept" },
                { "parent": "4", "depth": "3", "customerId": 1, "id": "6", "text": "323231", "state": { "opened": false, "selected": false }, "type": "dept" },
                { "parent": "3", "depth": "3", "customerId": 1, "id": "7", "text": "324242", "state": { "opened": false, "selected": false }, "type": "dept" },
                { "parent": "5", "depth": "3", "customerId": 1, "id": "8", "text": "3FAF", "state": { "opened": false, "selected": false }, "type": "dept" },
                { "parent": "6", "depth": "2", "customerId": 1, "id": "9", "text": "43432", "state": { "opened": false, "selected": false }, "type": "dept" },
                { "parent": "8", "depth": "3", "customerId": 1, "id": "10", "text": "6453565 ", "state": { "opened": false, "selected": false }, "type": "dept" },
                { "parent": "10", "depth": "5", "customerId": 1, "id": "11", "text": "awsedrc", "state": { "opened": false, "selected": false }, "type": "dept" },
                { "parent": "11", "depth": "4", "customerId": 1, "id": "12", "text": "fdsfdsfds", "state": { "opened": false, "selected": false }, "type": "dept" },
                { "parent": "2", "depth": "3", "customerId": 1, "id": "13", "text": "FSFASG", "state": { "opened": false, "selected": false }, "type": "dept" },
                { "parent": "3", "depth": "3", "customerId": 1, "id": "14", "text": "gfdnd n45 45 ", "state": { "opened": false, "selected": false }, "type": "dept" },
                { "parent": "2", "depth": "4", "customerId": 1, "id": "15", "text": "h 454 54 54 54", "state": { "opened": false, "selected": false }, "type": "dept" },
                { "parent": "2", "depth": "4", "customerId": 1, "id": "16", "text": "iykutmjyrhter", "state": { "opened": false, "selected": false }, "type": "dept" },
                { "parent": "2", "depth": "9", "customerId": 1, "id": "17", "text": "jmfhnfgbdvsdc", "state": { "opened": false, "selected": false }, "type": "dept" },
                { "parent": "3", "depth": "8", "customerId": 1, "id": "18", "text": "jtnrbg3 5 4", "state": { "opened": false, "selected": false }, "type": "dept" },
                { "parent": "2", "depth": "10", "customerId": 1, "id": "19", "text": "k,jmnhbgfvdcsx", "state": { "opened": false, "selected": false }, "type": "dept" },
                { "parent": "3", "depth": "6", "customerId": 1, "id": "20", "text": "k7j64h534e", "state": { "opened": false, "selected": false }, "type": "dept" },
                { "parent": "4", "depth": "3", "customerId": 1, "id": "21", "text": "kiyunhygbfvd", "state": { "opened": false, "selected": false }, "type": "dept" },
                { "parent": "5", "depth": "3", "customerId": 1, "id": "22", "text": "kjmhngbfvds", "state": { "opened": false, "selected": false }, "type": "dept" },
                { "parent": "6", "depth": "3", "customerId": 1, "id": "23", "text": "kujhytgrfed", "state": { "opened": false, "selected": false }, "type": "dept" },
                { "parent": "21", "depth": "7", "customerId": 1, "id": "24", "text": "nhfbdgbe", "state": { "opened": false, "selected": false }, "type": "dept" },
                { "parent": "20", "depth": "2", "customerId": 1, "id": "25", "text": "t4wt43t3", "state": { "opened": false, "selected": false }, "type": "dept" },
                { "parent": "20", "depth": "3", "customerId": 1, "id": "26", "text": "t5b353 5343433", "state": { "opened": false, "selected": false }, "type": "dept" },
                { "parent": "12", "depth": "3", "customerId": 1, "id": "27", "text": "y54bt35", "state": { "opened": false, "selected": false }, "type": "dept" }
            ]
        $('#tree').jstree({
            'core': {
                'data': array
            }
        });

    </script>
</body>
</html>