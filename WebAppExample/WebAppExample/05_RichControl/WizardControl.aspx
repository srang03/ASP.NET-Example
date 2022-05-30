<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WizardControl.aspx.cs" Inherits="WebAppExample._05_RichControl.Wizard_Control" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Wizard ID="wzd_form" runat="server" Width="600px" Height="200px" BorderWidth="1px" OnFinishButtonClick="wzd_form_FinishButtonClick">
                <WizardSteps>
                    <asp:WizardStep ID="wzd_step1" runat="server" Title="0. 마법사를 시작합니다.">
                        0: <asp:TextBox ID="TextBox0" runat="server"></asp:TextBox>
                    </asp:WizardStep>
                     <asp:WizardStep ID="wzd_step2" runat="server" Title="1. 첫 번째 단계.">
                        1: <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </asp:WizardStep>
                     <asp:WizardStep ID="wzd_step3" runat="server" Title="2. 두 번째 단계.">
                        2: <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </asp:WizardStep>
                     <asp:WizardStep ID="wzd_step4" runat="server" Title="3. 세 번째 단계.">
                        3: <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    </asp:WizardStep>
                        <asp:WizardStep ID="wzd_step5" runat="server" Title="4 완료.">
                        4: 완료되었습니다.
                            <hr />
                            <asp:Label ID="lbl_result" runat="server" />
                    </asp:WizardStep>
                </WizardSteps>
            </asp:Wizard>
    
        </div>
    </form>
</body>
</html>
