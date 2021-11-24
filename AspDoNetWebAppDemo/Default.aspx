<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="AspDoNetWebAppDemo._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Table ID="CardGameTable" runat="server">
        <asp:TableHeaderRow>
            <asp:TableHeaderCell>Player 1</asp:TableHeaderCell>
            <asp:TableHeaderCell>Player 2</asp:TableHeaderCell>
        </asp:TableHeaderRow>
        <asp:TableRow>
            <asp:TableCell>
                <asp:TextBox ID="play1TextBox" runat="server" />
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="play2TextBox" runat="server" />
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                <asp:RequiredFieldValidator
                    ID="RequiredFieldValidatorplay1TextBox"
                    runat="server" style="color: red;"
                    ErrorMessage="A name for player 1 is required."
                    ControlToValidate="play1TextBox"> 
                </asp:RequiredFieldValidator>
            </asp:TableCell>
            <asp:TableCell>
                <asp:RequiredFieldValidator
                    ID="RequiredFieldValidatorplay2TextBox"
                    runat="server" style="color: red;"
                    ErrorMessage="A name for player 2 is required."
                    ControlToValidate="play2TextBox"> 
                </asp:RequiredFieldValidator>
            </asp:TableCell>
        </asp:TableRow>
    </asp:Table>
    <br />
    <asp:Button ID="dealHandButton" runat="server"
        Text="Deal Hands"
        OnClick="dealHandButton_Click" />
    <br />
    <asp:Label ID="dealHandLabel" runat="server" Visible="false"
        Text="Here are the cards." />
    <asp:Table ID="dealtHandsTable" runat="server" Visible="false" />

</asp:Content>
