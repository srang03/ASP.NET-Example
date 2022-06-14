<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="jsTreeExample.aspx.cs" Inherits="DevADONETProject.jstree.jsTreeExample" %>


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
        var array = [{
            "parent": "#",
            "depth": 0,
            "customYn": "N",
            "customerId": 1,
            "id": "customer No_1",
            "text": "92||0|",
            "state": {
                "opened": true,
                "selected": false
            },
            "type": "customer"
        }, {
                "parent": "customer No_1",
                "depth": "2",
                "customerld": 1,
                "id": "80000000",
                "text": "92|0 C ()",
                "state": {
                    "opened": false,
                    "selected": false
                },
                "type": "dept"
            }, {
                "parent": "customer No_1",
                "depth": "2",
                "customerId": 1,
                "id": "00000001",
                "text": "92||0|| 7|102()",
                "state": {
                    "opened": false,
                    "selected": false
                },
                "type": "dept"
            },  {
            "parent": "80000144",
            "depth": "6",
            "customerId": 1,
            "id": "80000149",
            "text": "ACMTC",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000046",
            "depth": "7",
            "customerld": 1,
            "id": "80000388",
            "text": "BATCHER ",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000144",
            "depth": "6",
            "customer ld": 1,
            "id": "80001080",
            "text": "CFA9 ",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000001",
            "depth": "4",
            "customerId": 1,
            "id": "80000778",
            "text": "CTO",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000120",
            "depth": "6",
            "customerId": 1,
            "id": "80000121",
            "text": "DISPLAYTIZOH ",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000102",
            "depth": "6",
            "customerld": 1,
            "id": "80001202",
            "text": "FILM272 Part",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000114",
            "depth": "7",
            "customerId": 1,
            "id": "80000115",
            "text": "FILM 1 2",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000114",
            "depth": "8",
            "customerld": 1,
            "id": "80000116",
            "text": "FILMD 22",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000107",
            "depth": "6",
            "customerId": 1,
            "id": "80000114",
            "text": "FILM S ",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000102",
            "depth": "6",
            "customerId": 1,
            "id": "80001201",
            "text": "FILMJ Part",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000100",
            "depth": "5",
            "customerId": 1,
            "id": "80000102",
            "text": "FILMO7|1 5 ",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000395",
            "depth": "7",
            "customer ld": 1,
            "id": "80000060",
            "text": "FILMENR",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000001",
            "depth": "4",
            "customerId": 1,
            "id": "80000100",
            "text": "FILMAISE ",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000108",
            "depth": "7",
            "customerId": 1,
            "id": "80000109",
            "text": "FILM412",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000107",
            "depth": "6",
            "customer ld": 1,
            "id": "80000108",
            "text": "FILM 19",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000110",
            "depth": "7",
            "customerld": 1,
            "id": "80000111",
            "text": "FILMO22",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000107",
            "depth": "6",
            "customerId": 1,
            "id": "80000110",
            "text": "FILMO228",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000112",
            "depth": "7",
            "customerId": 1,
            "id": "80000113",
            "text": "FILMUX32",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000107",
            "depth": "6",
            "customerId": 1,
            "id": "80000112",
            "text": "FILM 3 1",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000100",
            "depth": "5",
            "customer ld": 1,
            "id": "80000107",
            "text": "FILMOVS ",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000178",
            "depth": "7",
            "customerId": 1,
            "id": "80000180",
            "text": "FILM979",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000100",
            "depth": "5",
            "customer ld": 1,
            "id": "80000103",
            "text": "FILM89 3 ",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000102",
            "depth": "6",
            "customer ld": 1,
            "id": "80001203",
            "text": "FILMY 2 Part",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000175",
            "depth": "6",
            "customerId": 1,
            "id": "80000178",
            "text": "FILMAH 397 E ",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000118",
            "depth": "6",
            "customerId": 1,
            "id": "80000701",
            "text": "FILMZA 2 2",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000100",
            "depth": "5",
            "customerld": 1,
            "id": "80000118",
            "text": "FILMÉNY 9 ",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000764",
            "depth": "6",
            "customerld": 1,
            "id": "80000775",
            "text": "FILTERLH +999",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000759",
            "depth": "5",
            "customerId": 1,
            "id": "80000762",
            "text": "FILTERO 7119",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000395",
            "depth": "7",
            "customerId": 1,
            "id": "80000401",
            "text": "FILTERYAR",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000001",
            "depth": "4",
            "customerId": 1,
            "id": "80000759",
            "text": "FILTERA 923",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000759",
            "depth": "5",
            "customer ld": 1,
            "id": "80000761",
            "text": "FILTERA",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000765",
            "depth": "7",
            "customer ld": 1,
            "id": "80000771",
            "text": "FILTER _29",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000759",
            "depth": "5",
            "customer ld": 1,
            "id": "80000766",
            "text": "FILTER S ",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000759",
            "depth": "5",
            "customerld": 1,
            "id": "80000765",
            "text": "FILTER S",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000764",
            "depth": "6",
            "customerId": 1,
            "id": "80000774",
            "text": "FILTER+ 99",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000764",
            "depth": "6",
            "customerld": 1,
            "id": "80000776",
            "text": "FILTER8 92 9 ",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000759",
            "depth": "5",
            "customerId": 1,
            "id": "80000764",
            "text": "FILTERS",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000003",
            "depth": "5",
            "customer ld": 1,
            "id": "80000431",
            "text": "HBC TFT",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000124",
            "depth": "7",
            "customer ld": 1,
            "id": "80000326",
            "text": "ITAHEA ",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000133",
            "depth": "7",
            "customer ld": 1,
            "id": "80000134",
            "text": "ITNAH 1 2",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000133",
            "depth": "7",
            "customerId": 1,
            "id": "80000135",
            "text": "ITTH222",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000133",
            "depth": "8",
            "customer ld": 1,
            "id": "80000136",
            "text": "ITAH 3 ",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000124",
            "depth": "6",
            "customer ld": 1,
            "id": "80000133",
            "text": "ITAH",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000395",
            "depth": "7",
            "customerld": 1,
            "id": "80000061",
            "text": "ITNEAR",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000125",
            "depth": "8",
            "customer ld": 1,
            "id": "80000126",
            "text": "ITAAHHH12",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000124",
            "depth": "7",
            "customerld": 1,
            "id": "80000125",
            "text": "ITH A11",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000124",
            "depth": "7",
            "customerId": 1,
            "id": "80000127",
            "text": "ITTHS 26",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000127",
            "depth": "8",
            "customer ld": 1,
            "id": "80000129",
            "text": "ITNHH1321",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000124",
            "depth": "6",
            "customer ld": 1,
            "id": "80000130",
            "text": "ITH A13",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000124",
            "depth": "7",
            "customerId": 1,
            "id": "80000702",
            "text": "ITTH 4 9",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000100",
            "depth": "5",
            "customer ld": 1,
            "id": "80000124",
            "text": "ITTHON ",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000100",
            "depth": "5",
            "customerId": 1,
            "id": "80000120",
            "text": "ITAH89",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000138",
            "depth": "6",
            "customerld": 1,
            "id": "80000139",
            "text": "ITNÉNY 12",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000100",
            "depth": "5",
            "customerId": 1,
            "id": "80000138",
            "text": "ITMENY S ",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "59990004",
            "depth": "5",
            "customer ld": 1,
            "id": "59990008",
            "text": "ITQ727",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000066",
            "depth": "5",
            "customerld": 1,
            "id": "80000402",
            "text": "KL-12 TFT",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000143",
            "depth": "5",
            "customerId": 1,
            "id": "80001079",
            "text": "KPPNITET",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000130",
            "depth": "8",
            "customerld": 1,
            "id": "80000132",
            "text": "Metaloyal R!",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000130",
            "depth": "7",
            "customerld": 1,
            "id": "80000131",
            "text": "Metaloyal R",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "50002175",
            "depth": "4",
            "customerId": 1,
            "id": "50002134",
            "text": "NRP ",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "50002134",
            "depth": "5",
            "customerId": 1,
            "id": "50002141",
            "text": "NRPS 2 A 99",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000702",
            "depth": "8",
            "customer ld": 1,
            "id": "80000703",
            "text": "NRPAD",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "50002134",
            "depth": "5",
            "customer ld": 1,
            "id": "50002729",
            "text": "NRPIETE",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000008",
            "depth": "5",
            "customerld": 1,
            "id": "80000173",
            "text": "PPSTI ",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80001104",
            "depth": "8",
            "customerld": 1,
            "id": "80001105",
            "text": "PP R ",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000144",
            "depth": "6",
            "customerld": 1,
            "id": "80001101",
            "text": "PPA9 ",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80001101",
            "depth": "7",
            "customerId": 1,
            "id": "80001104",
            "text": "PPAM ",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80001101",
            "depth": "7",
            "customer ld": 1,
            "id": "80001102",
            "text": "PPUH OH ",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000001",
            "depth": "4",
            "customerld": 1,
            "id": "80001151",
            "text": "S&H®",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000087",
            "depth": "8",
            "customerId": 1,
            "id": "80000225",
            "text": "SBHX2",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000087",
            "depth": "8",
            "customerId": 1,
            "id": "80000088",
            "text": "SB 12",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000082",
            "depth": "7",
            "customerId": 1,
            "id": "80000087",
            "text": "SB ",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000076",
            "depth": "5",
            "customerId": 1,
            "id": "80000078",
            "text": "SBO7||$$",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000395",
            "depth": "7",
            "customerId": 1,
            "id": "80000059",
            "text": "SB ",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000001",
            "depth": "4",
            "customerId": 1,
            "id": "80000076",
            "text": "SBAIG27",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000076",
            "depth": "5",
            "customerId": 1,
            "id": "80000077",
            "text": "SBATE A9",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000083",
            "depth": "8",
            "customer ld": 1,
            "id": "80000084",
            "text": "SBAUAN12",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000082",
            "depth": "6",
            "customerId": 1,
            "id": "80000083",
            "text": "SBIA19",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000083",
            "depth": "7",
            "customerId": 1,
            "id": "80000085",
            "text": "SBIA22F",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000082",
            "depth": "6",
            "customer ld": 1,
            "id": "80000090",
            "text": "SBO_28",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000083",
            "depth": "8",
            "customer ld": 1,
            "id": "80000086",
            "text": "SBO_32",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000090",
            "depth": "7",
            "customer ld": 1,
            "id": "80000715",
            "text": "SBO_42",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000076",
            "depth": "5",
            "customer ld": 1,
            "id": "80000082",
            "text": "SBOX S8",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000404",
            "depth": "7",
            "customerld": 1,
            "id": "80000455",
            "text": "SB979",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000076",
            "depth": "5",
            "customerld": 1,
            "id": "80000079",
            "text": "SB89 9 ",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000079",
            "depth": "6",
            "customerld": 1,
            "id": "80000081",
            "text": "SBE+062",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000076",
            "depth": "5",
            "customerId": 1,
            "id": "80000089",
            "text": "SBIA R ",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000100",
            "depth": "5",
            "customer ld": 1,
            "id": "80000705",
            "text": "Sheet19",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000705",
            "depth": "6",
            "customerId": 1,
            "id": "80000706",
            "text": "Sheet 8 8",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000705",
            "depth": "6",
            "customerld": 1,
            "id": "80000711",
            "text": "Sheet TOH",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000782",
            "depth": "5",
            "customerld": 1,
            "id": "80000787",
            "text": "TAK Membrane",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000782",
            "depth": "5",
            "customer ld": 1,
            "id": "80000785",
            "text": "TAK Shanghai",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000782",
            "depth": "5",
            "customerld": 1,
            "id": "80000784",
            "text": "TAK Textiles",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "89990001",
            "depth": "5",
            "customer ld": 1,
            "id": "80000851",
            "text": "TAK Textiles",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000783",
            "depth": "5",
            "customerId": 1,
            "id": "80000788",
            "text": "TAMF",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000783",
            "depth": "5",
            "customerId": 1,
            "id": "80000195",
            "text": "TBSK",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000001",
            "depth": "4",
            "customer ld": 1,
            "id": "80000198",
            "text": "TCK",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "00000013",
            "depth": "5",
            "customerId": 1,
            "id": "00000056",
            "text": "TCK Membrane (Tianjin)",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "00000013",
            "depth": "5",
            "customerId": 1,
            "id": "00000053",
            "text": "TCK Shanghai",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000782",
            "depth": "5",
            "customer ld": 1,
            "id": "80000193",
            "text": "TEN",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000783",
            "depth": "5",
            "customerld": 1,
            "id": "80000378",
            "text": "TID",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000783",
            "depth": "5",
            "customerld": 1,
            "id": "80001227",
            "text": "TIEU",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000783",
            "depth": "5",
            "customerld": 1,
            "id": "80000194",
            "text": "TORAY",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000783",
            "depth": "5",
            "customer ld": 1,
            "id": "80000324",
            "text": "TPF",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "50001503",
            "depth": "5",
            "customerId": 1,
            "id": "50002402",
            "text": "TPJ",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000782",
            "depth": "5",
            "customer ld": 1,
            "id": "80000192",
            "text": "TPJ",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000782",
            "depth": "5",
            "customerld": 1,
            "id": "80000189",
            "text": "TPN",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000189",
            "depth": "5",
            "customerld": 1,
            "id": "80000191",
            "text": "TPN(ER )",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000783",
            "depth": "5",
            "customerld": 1,
            "id": "80001226",
            "text": "TTCE",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000955",
            "depth": "7",
            "customerld": 1,
            "id": "80000956",
            "text": "UF992",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "50002175",
            "depth": "4",
            "customerId": 1,
            "id": "50002208",
            "text": "38272188",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "50002208",
            "depth": "5",
            "customer ld": 1,
            "id": "50001781",
            "text": "822191",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "50002175",
            "depth": "4",
            "customerId": 1,
            "id": "50001300",
            "text": "38222214",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000001",
            "depth": "4",
            "customerld": 1,
            "id": "80000003",
            "text": "3922221 AL",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000003",
            "depth": "5",
            "customerld": 1,
            "id": "80000005",
            "text": "82212121",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000009",
            "depth": "6",
            "customer ld": 1,
            "id": "80000002",
            "text": "8229",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "50002175",
            "depth": "4",
            "customerId": 1,
            "id": "50001851",
            "text": "38 9 ",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000001",
            "depth": "4",
            "customer ld": 1,
            "id": "80000008",
            "text": "ASA 7",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "00000067",
            "depth": "6",
            "customerld": 1,
            "id": "50001951",
            "text": "",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000001",
            "depth": "4",
            "customerId": 1,
            "id": "80000976",
            "text": "39 ",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "50000392",
            "depth": "5",
            "customerld": 1,
            "id": "00000067",
            "text": " 2 9 ",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000183",
            "depth": "7",
            "customerId": 1,
            "id": "80000203",
            "text": "2 8 219 Group",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000120",
            "depth": "6",
            "customerld": 1,
            "id": "80000122",
            "text": "2 5NEOH $",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000183",
            "depth": "6",
            "customer ld": 1,
            "id": "80000187",
            "text": "2 .8 8Group",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000183",
            "depth": "7",
            "customerld": 1,
            "id": "80000184",
            "text": "2 *UuGroup",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "00000012",
            "depth": "5",
            "customerld": 1,
            "id": "50002994",
            "text": "25197",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000392",
            "depth": "7",
            "customerId": 1,
            "id": "80000393",
            "text": "2912",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000392",
            "depth": "7",
            "customerId": 1,
            "id": "80000394",
            "text": "82224",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000055",
            "depth": "7",
            "customerId": 1,
            "id": "80000057",
            "text": "3 2 ",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000171",
            "depth": "7",
            "customerld": 1,
            "id": "80000172",
            "text": "&F&22",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000163",
            "depth": "6",
            "customerld": 1,
            "id": "80000171",
            "text": "29",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000054",
            "depth": "6",
            "customerId": 1,
            "id": "80000392",
            "text": "298",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "50002175",
            "depth": "4",
            "customer ld": 1,
            "id": "50001503",
            "text": "27 ",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000001",
            "depth": "4",
            "customerId": 1,
            "id": "80000783",
            "text": "247 ",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000104",
            "depth": "7",
            "customerId": 1,
            "id": "80000227",
            "text": "2 12",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000103",
            "depth": "6",
            "customerId": 1,
            "id": "80000104",
            "text": "2 2 .COH ",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "50001851",
            "depth": "5",
            "customer ld": 1,
            "id": "50000389",
            "text": "70183",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000008",
            "depth": "5",
            "customer ld": 1,
            "id": "80000018",
            "text": "70688",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000018",
            "depth": "6",
            "customerId": 1,
            "id": "80000019",
            "text": "701",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "50002175",
            "depth": "4",
            "customerId": 1,
            "id": "50000392",
            "text": "701 ",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000001",
            "depth": "4",
            "customerId": 1,
            "id": "80000036",
            "text": "7049",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "89990001",
            "depth": "5",
            "customerId": 1,
            "id": "89990005",
            "text": "70 1 612",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "50001831",
            "depth": "5",
            "customerId": 1,
            "id": "50002132",
            "text": "7012141878",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000023",
            "depth": "5",
            "customer ld": 1,
            "id": "80000201",
            "text": "701QUATS",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000153",
            "depth": "5",
            "customer ld": 1,
            "id": "80000163",
            "text": "2NEU",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000169",
            "depth": "7",
            "customer ld": 1,
            "id": "80000170",
            "text": "2 BUZIB 011121",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000163",
            "depth": "6",
            "customer ld": 1,
            "id": "80000169",
            "text": "ZABUŽBO 9",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000778",
            "depth": "5",
            "customerId": 1,
            "id": "80000779",
            "text": "2 2 4",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000779",
            "depth": "6",
            "customer ld": 1,
            "id": "80000433",
            "text": "1 2 8",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "50002175",
            "depth": "4",
            "customerId": 1,
            "id": "50002227",
            "text": "299729",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "50002175",
            "depth": "4",
            "customerId": 1,
            "id": "00000012",
            "text": "2 9 71",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000778",
            "depth": "5",
            "customer ld": 1,
            "id": "80000175",
            "text": "72971",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "89990006",
            "depth": "5",
            "customer ld": 1,
            "id": "89990010",
            "text": "7|Et",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "50001300",
            "depth": "5",
            "customerld": 1,
            "id": "50001823",
            "text": "2 9 8",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000003",
            "depth": "5",
            "customer ld": 1,
            "id": "80000004",
            "text": "2128 ",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000105",
            "depth": "7",
            "customer Id": 1,
            "id": "80000229",
            "text": "L+402",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "50002132",
            "depth": "6",
            "customerId": 1,
            "id": "50002328",
            "text": "29",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000201",
            "depth": "6",
            "customerId": 1,
            "id": "80000424",
            "text": "L ",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "00000001",
            "depth": "3",
            "customer ld": 1,
            "id": "50002175",
            "text": "CHOLA",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000000",
            "depth": "3",
            "customer ld": 1,
            "id": "80000001",
            "text": "CH EOLAF",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000384",
            "depth": "7",
            "customerId": 1,
            "id": "80000385",
            "text": "212",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000376",
            "depth": "6",
            "customerId": 1,
            "id": "80000384",
            "text": "219",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000054",
            "depth": "6",
            "customerId": 1,
            "id": "80000062",
            "text": "5325",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000062",
            "depth": "7",
            "customer ld": 1,
            "id": "80000063",
            "text": " 2",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000036",
            "depth": "5",
            "customerld": 1,
            "id": "80000376",
            "text": "39 ",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000765",
            "depth": "6",
            "customer ld": 1,
            "id": "80000767",
            "text": " 211 ",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000771",
            "depth": "8",
            "customerId": 1,
            "id": "80000772",
            "text": "9 2 2",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000003",
            "depth": "5",
            "customer ld": 1,
            "id": "80000781",
            "text": " 2019146",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000054",
            "depth": "6",
            "customer ld": 1,
            "id": "80000396",
            "text": "EA1 $",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000054",
            "depth": "6",
            "customer ld": 1,
            "id": "80000395",
            "text": "EA29",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000392",
            "depth": "7",
            "customerld": 1,
            "id": "80000056",
            "text": "YA ",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "50000392",
            "depth": "5",
            "customerId": 1,
            "id": "50002326",
            "text": "288",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000036",
            "depth": "5",
            "customerId": 1,
            "id": "80000054",
            "text": "9 8 ",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "50002326",
            "depth": "6",
            "customerId": 1,
            "id": "50000187",
            "text": "IN ",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000054",
            "depth": "6",
            "customerId": 1,
            "id": "80000055",
            "text": "IN ",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000149",
            "depth": "7",
            "customer ld": 1,
            "id": "80000150",
            "text": " 2 1 9",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000144",
            "depth": "6",
            "customerld": 1,
            "id": "80000152",
            "text": " 2017||$9",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000001",
            "depth": "4",
            "customerId": 1,
            "id": "80000143",
            "text": " 492",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000143",
            "depth": "5",
            "customerId": 1,
            "id": "80000144",
            "text": " EAS E ",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000144",
            "depth": "6",
            "customer ld": 1,
            "id": "80000145",
            "text": "OH ",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000403",
            "depth": "7",
            "customerId": 1,
            "id": "80000780",
            "text": " 42 2",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000008",
            "depth": "5",
            "customer ld": 1,
            "id": "80000429",
            "text": "AQA ",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000765",
            "depth": "6",
            "customerld": 1,
            "id": "80000955",
            "text": "49899 ",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000103",
            "depth": "6",
            "customerld": 1,
            "id": "80000105",
            "text": "1g, OH 6",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "50000392",
            "depth": "5",
            "customerId": 1,
            "id": "50000393",
            "text": " 48",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000018",
            "depth": "6",
            "customer ld": 1,
            "id": "80000430",
            "text": "407018",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000404",
            "depth": "7",
            "customer Id": 1,
            "id": "80000405",
            "text": "AA A 979",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000720",
            "depth": "6",
            "customerId": 1,
            "id": "80000721",
            "text": "4 272 Part",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000720",
            "depth": "6",
            "customerId": 1,
            "id": "80000722",
            "text": "A Part",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000718",
            "depth": "5",
            "customer ld": 1,
            "id": "80000720",
            "text": "4 0 719",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000001",
            "depth": "4",
            "customerId": 1,
            "id": "80000718",
            "text": "A A ",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000718",
            "depth": "5",
            "customerld": 1,
            "id": "80000719",
            "text": "AAA92FUA ",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000718",
            "depth": "5",
            "customer ld": 1,
            "id": "80001176",
            "text": "4 3 _1818",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "00000026",
            "depth": "5",
            "customerId": 1,
            "id": "50002135",
            "text": "4 8 ",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "00000027",
            "depth": "5",
            "customerld": 1,
            "id": "50002137",
            "text": "AA S ",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000001",
            "depth": "4",
            "customerld": 1,
            "id": "80000094",
            "text": "NAN 98",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000718",
            "depth": "5",
            "customerId": 1,
            "id": "80000725",
            "text": "A 88",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000737",
            "depth": "6",
            "customer ld": 1,
            "id": "80000739",
            "text": "AA S",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000175",
            "depth": "6",
            "customerId": 1,
            "id": "80000404",
            "text": "AAAH97E ",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000001",
            "depth": "4",
            "customer ld": 1,
            "id": "80000153",
            "text": " 2|2|021939",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000153",
            "depth": "5",
            "customerld": 1,
            "id": "80000154",
            "text": "+|2|0219 ",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000166",
            "depth": "8",
            "customerId": 1,
            "id": "80000167",
            "text": "2|2|10 2 2",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80001026",
            "depth": "7",
            "customerId": 1,
            "id": "80000166",
            "text": " 717||02 2 9",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000166",
            "depth": "8",
            "customerld": 1,
            "id": "80000168",
            "text": "42702343 2",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000163",
            "depth": "6",
            "customer ld": 1,
            "id": "80000156",
            "text": "42|7||0",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000163",
            "depth": "6",
            "customer ld": 1,
            "id": "80000160",
            "text": " 2|2|02 8 8",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000163",
            "depth": "6",
            "customerld": 1,
            "id": "80001026",
            "text": "+|2|02 93",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000153",
            "depth": "5",
            "customerId": 1,
            "id": "80000275",
            "text": "447||0289 ",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000275",
            "depth": "6",
            "customerId": 1,
            "id": "80000157",
            "text": " 17027",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000154",
            "depth": "6",
            "customerId": 1,
            "id": "80000155",
            "text": "+1|2||02 Et OH$",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000153",
            "depth": "5",
            "customer ld": 1,
            "id": "80000159",
            "text": "2702 A A R",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000161",
            "depth": "8",
            "customer ld": 1,
            "id": "80000162",
            "text": "+|2||0ZIAN R ",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000156",
            "depth": "7",
            "customerId": 1,
            "id": "80000161",
            "text": "42|2||0| ZIZA 9",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000105",
            "depth": "7",
            "customerId": 1,
            "id": "80000230",
            "text": " 0f2",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "50001823",
            "depth": "6",
            "customer ld": 1,
            "id": "50000617",
            "text": "9",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000008",
            "depth": "5",
            "customer ld": 1,
            "id": "80000017",
            "text": "MG SAAL ",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000001",
            "depth": "4",
            "customer ld": 1,
            "id": "80000075",
            "text": "U S ",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000718",
            "depth": "5",
            "customer ld": 1,
            "id": "80000753",
            "text": "02919 ",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000755",
            "depth": "7",
            "customerId": 1,
            "id": "80000756",
            "text": "07291 2",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000753",
            "depth": "6",
            "customerld": 1,
            "id": "80000755",
            "text": "0F2191 ",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000753",
            "depth": "6",
            "customerld": 1,
            "id": "80000754",
            "text": "0f291 POH",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000003",
            "depth": "5",
            "customerld": 1,
            "id": "80000007",
            "text": "0 9 ",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000062",
            "depth": "7",
            "customer ld": 1,
            "id": "80000065",
            "text": "04 ",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000068",
            "depth": "6",
            "customer ld": 1,
            "id": "80000069",
            "text": " A 4011 Part",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000068",
            "depth": "6",
            "customer ld": 1,
            "id": "80000070",
            "text": " A 40 2Part",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000066",
            "depth": "5",
            "customer ld": 1,
            "id": "80000068",
            "text": "17|401229",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000066",
            "depth": "5",
            "customerId": 1,
            "id": "80000375",
            "text": " A 401398",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000001",
            "depth": "4",
            "customer ld": 1,
            "id": "80000066",
            "text": "1140",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000066",
            "depth": "5",
            "customerId": 1,
            "id": "80000067",
            "text": "71401 ",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "00000012",
            "depth": "5",
            "customer ld": 1,
            "id": "00000048",
            "text": "97229",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000175",
            "depth": "5",
            "customerId": 1,
            "id": "80000177",
            "text": "97229",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000175",
            "depth": "6",
            "customer ld": 1,
            "id": "80000403",
            "text": "97499",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000046",
            "depth": "7",
            "customer ld": 1,
            "id": "80000389",
            "text": "94812",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000051",
            "depth": "7",
            "customerId": 1,
            "id": "80000390",
            "text": " 2 2",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000009",
            "depth": "6",
            "customer ld": 1,
            "id": "80000014",
            "text": "9 99",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "00000026",
            "depth": "5",
            "customerId": 1,
            "id": "50000399",
            "text": "9919",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "00000026",
            "depth": "5",
            "customerId": 1,
            "id": "50000503",
            "text": "9 3 ",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000731",
            "depth": "8",
            "customerId": 1,
            "id": "80000732",
            "text": "9 2 2 ",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000725",
            "depth": "7",
            "customer ld": 1,
            "id": "80000731",
            "text": "99 9 ",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "00000026",
            "depth": "5",
            "customer ld": 1,
            "id": "50000501",
            "text": "79017||$9",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000396",
            "depth": "7",
            "customerId": 1,
            "id": "80000400",
            "text": " AR",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "50002175",
            "depth": "4",
            "customerId": 1,
            "id": "00000026",
            "text": " 92",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "00000078",
            "depth": "7",
            "customer ld": 1,
            "id": "50003371",
            "text": "99 LEI 2",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "50002135",
            "depth": "6",
            "customerId": 1,
            "id": "00000078",
            "text": " U S",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000718",
            "depth": "5",
            "customerId": 1,
            "id": "80000724",
            "text": "9989 ",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000724",
            "depth": "6",
            "customerld": 1,
            "id": "80000735",
            "text": "9 402 $",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "00000027",
            "depth": "5",
            "customer ld": 1,
            "id": "00000075",
            "text": " 1139",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000746",
            "depth": "7",
            "customerId": 1,
            "id": "800007 48",
            "text": " 2",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80001176",
            "depth": "6",
            "customerld": 1,
            "id": "80000746",
            "text": " 2 9 ",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "00000027",
            "depth": "5",
            "customerId": 1,
            "id": "00000025",
            "text": " 110171189",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "50002175",
            "depth": "4",
            "customerId": 1,
            "id": "00000027",
            "text": "PLAAT93",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000076",
            "depth": "5",
            "customerld": 1,
            "id": "80000091",
            "text": "LATA ",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "50002137",
            "depth": "6",
            "customerId": 1,
            "id": "00000077",
            "text": "2 1 1",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000739",
            "depth": "7",
            "customer ld": 1,
            "id": "80000741",
            "text": " 119",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "00000077",
            "depth": "7",
            "customer ld": 1,
            "id": "00000149",
            "text": " 221",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000744",
            "depth": "7",
            "customerId": 1,
            "id": "80000745",
            "text": " 22",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "50002137",
            "depth": "6",
            "customerId": 1,
            "id": "50002345",
            "text": " 128",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000198",
            "depth": "5",
            "customerId": 1,
            "id": "80000409",
            "text": " 128",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000725",
            "depth": "6",
            "customerId": 1,
            "id": "80000744",
            "text": " 128",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "50002345",
            "depth": "7",
            "customerId": 1,
            "id": "50002346",
            "text": " 32",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000409",
            "depth": "6",
            "customerId": 1,
            "id": "80000096",
            "text": " 32",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000725",
            "depth": "6",
            "customerId": 1,
            "id": "80000738",
            "text": "ALLOH TF",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000094",
            "depth": "7",
            "customer ld": 1,
            "id": "80000095",
            "text": " 9",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000718",
            "depth": "5",
            "customer ld": 1,
            "id": "80000737",
            "text": " 89 ",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000741",
            "depth": "8",
            "customerId": 1,
            "id": "80000743",
            "text": "2A 2 Part",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000737",
            "depth": "6",
            "customerId": 1,
            "id": "80000750",
            "text": " 70819",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000737",
            "depth": "6",
            "customerId": 1,
            "id": "80000751",
            "text": "ALTE+029",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000737",
            "depth": "6",
            "customerId": 1,
            "id": "80000752",
            "text": "WATEOH39",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000746",
            "depth": "7",
            "customerId": 1,
            "id": "80000749",
            "text": "ITH A2",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "00000012",
            "depth": "5",
            "customerld": 1,
            "id": "50002337",
            "text": "3 3974 El",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000764",
            "depth": "6",
            "customerld": 1,
            "id": "80000763",
            "text": "02nR TF",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000178",
            "depth": "7",
            "customerId": 1,
            "id": "80000951",
            "text": " O T H 9978",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000120",
            "depth": "6",
            "customerld": 1,
            "id": "80000381",
            "text": "O H OH $",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000076",
            "depth": "5",
            "customerld": 1,
            "id": "80000325",
            "text": "OIS Project TFT",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000023",
            "depth": "5",
            "customerId": 1,
            "id": "80000025",
            "text": "21272",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000029",
            "depth": "7",
            "customerId": 1,
            "id": "80000030",
            "text": "QUAT12F",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "50001831",
            "depth": "5",
            "customerId": 1,
            "id": "50001782",
            "text": " 2 ",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000023",
            "depth": "5",
            "customer ld": 1,
            "id": "80000024",
            "text": "QUA229",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "50002175",
            "depth": "4",
            "customer ld": 1,
            "id": "50001831",
            "text": "QLAMALE ",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000001",
            "depth": "4",
            "customerld": 1,
            "id": "80000023",
            "text": "OLAR E",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "50002132",
            "depth": "6",
            "customerId": 1,
            "id": "00000108",
            "text": "QUA ",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000201",
            "depth": "6",
            "customerId": 1,
            "id": "80000029",
            "text": "QUA ",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "50000844",
            "depth": "7",
            "customerId": 1,
            "id": "50002334",
            "text": "THRE",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "50000389",
            "depth": "6",
            "customerId": 1,
            "id": "50000844",
            "text": " HE",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000018",
            "depth": "6",
            "customerId": 1,
            "id": "80000020",
            "text": "AH",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000001",
            "depth": "4",
            "customer ld": 1,
            "id": "89990001",
            "text": "/ZAF",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000008",
            "depth": "5",
            "customer ld": 1,
            "id": "80000009",
            "text": "298",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000009",
            "depth": "6",
            "customer ld": 1,
            "id": "80000010",
            "text": " 9",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000425",
            "depth": "6",
            "customer ld": 1,
            "id": "80000426",
            "text": "XH 72",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000062",
            "depth": "7",
            "customer ld": 1,
            "id": "80000064",
            "text": " 222",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000120",
            "depth": "6",
            "customer ld": 1,
            "id": "80000382",
            "text": "HOH 9",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "89990001",
            "depth": "5",
            "customerId": 1,
            "id": "89990014",
            "text": " MASI(TIS)",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000008",
            "depth": "5",
            "customerId": 1,
            "id": "80000011",
            "text": " 249",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "89990001",
            "depth": "5",
            "customerld": 1,
            "id": "89990002",
            "text": "U S (EA)",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000767",
            "depth": "7",
            "customerId": 1,
            "id": "80000768",
            "text": "/912",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000008",
            "depth": "5",
            "customerId": 1,
            "id": "80001003",
            "text": " 270 ",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000387",
            "depth": "7",
            "customer ld": 1,
            "id": "80000048",
            "text": " 1 2",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000045",
            "depth": "6",
            "customerId": 1,
            "id": "80000387",
            "text": " 5",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000396",
            "depth": "7",
            "customerld": 1,
            "id": "80000397",
            "text": " 212",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000396",
            "depth": "7",
            "customerld": 1,
            "id": "80000398",
            "text": " 222",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "50000187",
            "depth": "7",
            "customerId": 1,
            "id": "00000144",
            "text": " AR",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000045",
            "depth": "6",
            "customerId": 1,
            "id": "80000046",
            "text": " 119",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000045",
            "depth": "6",
            "customerId": 1,
            "id": "80000051",
            "text": " 128",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000036",
            "depth": "5",
            "customerld": 1,
            "id": "80000045",
            "text": " 98",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000778",
            "depth": "5",
            "customerId": 1,
            "id": "80000188",
            "text": "AAA_9",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000175",
            "depth": "6",
            "customer ld": 1,
            "id": "80000183",
            "text": "CH 297 El",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "50001831",
            "depth": "5",
            "customerId": 1,
            "id": "50001835",
            "text": " 9",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000023",
            "depth": "5",
            "customer ld": 1,
            "id": "80000026",
            "text": " 9 ",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "50001835",
            "depth": "6",
            "customer ld": 1,
            "id": "50001957",
            "text": " 9(700)",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "00000108",
            "depth": "7",
            "customerId": 1,
            "id": "00000187",
            "text": " 5",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000001",
            "depth": "4",
            "customerId": 1,
            "id": "80000027",
            "text": "747470198",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000027",
            "depth": "5",
            "customerId": 1,
            "id": "80000028",
            "text": "7474701 9",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000146",
            "depth": "7",
            "customerId": 1,
            "id": "80000148",
            "text": "% 3A 2 ",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000146",
            "depth": "8",
            "customerld": 1,
            "id": "80000147",
            "text": "EVAGHAR",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80001080",
            "depth": "7",
            "customerld": 1,
            "id": "80000146",
            "text": "EVAGARE 9",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000020",
            "depth": "7",
            "customerId": 1,
            "id": "80000022",
            "text": "52712",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "50002227",
            "depth": "5",
            "customerld": 1,
            "id": "50002228",
            "text": "5 ",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "00000067",
            "depth": "6",
            "customer ld": 1,
            "id": "50003580",
            "text": "4382",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "50002175",
            "depth": "4",
            "customer ld": 1,
            "id": "50001779",
            "text": " 92",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "00000105",
            "depth": "7",
            "customer ld": 1,
            "id": "50001829",
            "text": " R ",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "50001779",
            "depth": "5",
            "customerId": 1,
            "id": "50002201",
            "text": "U S ",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "50002201",
            "depth": "6",
            "customer ld": 1,
            "id": "00000105",
            "text": " U S ",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "50001984",
            "depth": "6",
            "customerld": 1,
            "id": "00000097",
            "text": "62",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "00000097",
            "depth": "7",
            "customerId": 1,
            "id": "50000534",
            "text": " E12(RO087 *)",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "50000394",
            "depth": "6",
            "customerId": 1,
            "id": "00000101",
            "text": "TEP ",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "00000039",
            "depth": "5",
            "customerId": 1,
            "id": "50001984",
            "text": "ELH+88",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "00000039",
            "depth": "5",
            "customerId": 1,
            "id": "50000596",
            "text": "%E017|18",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "50000187",
            "depth": "7",
            "customerId": 1,
            "id": "50000643",
            "text": "TELAR",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "50002175",
            "depth": "4",
            "customer ld": 1,
            "id": "00000039",
            "text": "TELA 937",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "00000039",
            "depth": "5",
            "customer ld": 1,
            "id": "50000394",
            "text": "TEL S ",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "50000394",
            "depth": "6",
            "customerId": 1,
            "id": "50002139",
            "text": "%E 9 8 2 9 ",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "50002337",
            "depth": "6",
            "customerld": 1,
            "id": "50002996",
            "text": " 619978",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "50002175",
            "depth": "4",
            "customerld": 1,
            "id": "00000013",
            "text": "72191",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000001",
            "depth": "4",
            "customerld": 1,
            "id": "80000782",
            "text": "72191",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "89990001",
            "depth": "5",
            "customerId": 1,
            "id": "80001126",
            "text": "7 5 ",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "50002175",
            "depth": "4",
            "customerId": 1,
            "id": "59990004",
            "text": "29 ",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000001",
            "depth": "4",
            "customerId": 1,
            "id": "89990006",
            "text": "231AT",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "00000109",
            "depth": "6",
            "customer Id": 1,
            "id": "00000194",
            "text": "22171121",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000041",
            "depth": "6",
            "customer ld": 1,
            "id": "80000042",
            "text": "201712",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000041",
            "depth": "6",
            "customer ld": 1,
            "id": "80000043",
            "text": "722222",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80001002",
            "depth": "6",
            "customerId": 1,
            "id": "80000041",
            "text": "82229",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000041",
            "depth": "7",
            "customerId": 1,
            "id": "80000044",
            "text": "821324",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000041",
            "depth": "7",
            "customer ld": 1,
            "id": "80000383",
            "text": "822142",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000036",
            "depth": "5",
            "customerld": 1,
            "id": "80001002",
            "text": "20 9 ",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "50000392",
            "depth": "5",
            "customerId": 1,
            "id": "00000109",
            "text": "ŽA ",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }, {
            "parent": "80000008",
            "depth": "5",
            "customerId": 1,
            "id": "80000425",
            "text": "7719",
            "state": {
                "opened": false,
                "selected": false
            },
            "type": "dept"
        }]
$('#tree').jstree({ 
  'core' : {
    'data' : array
  }
});

    </script>
</body>
</html>