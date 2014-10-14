<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AddEvent.aspx.cs" Inherits="AngularJSdemo.AddEvent" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="row">
        <div class="col-sm-12">
            <div class="page-header">
                <h1>Add New Event</h1>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-xs-12" style="padding-bottom: 1em">
            <ul class="nav nav-tabs">
                <li><a href="/">Listing</a></li>
                <li class="active"><a href="AddEvent.aspx">Add Event</a></li>
            </ul>
        </div>
    </div>
    <div class="row">
        <div class="col-xs-12">
            <div id="alertDiv" runat="server" visible="false"></div>
        </div>
    </div>
    <div class="row">
        <div class="col-xs-12">
            <div class="form-horizontal well" style="margin-top: 1em" role="form">
                <div class="form-group">
                    <label for="txtName" class="col-sm-2 control-label">Event Name</label>
                    <div class="col-sm-10">
                        <asp:TextBox ID="txtName" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                </div>
                <div class="form-group">
                    <label for="txtDescription" class="col-sm-2 control-label">Event Description</label>
                    <div class="col-sm-10">
                        <asp:TextBox ID="txtDescription" TextMode="MultiLine" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                </div>
                <div class="form-group">
                    <label for="txtDate" class="col-sm-2 control-label">Event Date</label>
                    <div class="col-xs-3">
                        <asp:TextBox ID="txtDate" TextMode="Date" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                </div>
                <div class="form-group">
                    <label for="txtImage" class="col-sm-2 control-label">Event Image</label>
                    <div class="col-sm-10">
                        <asp:TextBox ID="txtImage" TextMode="Url" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                        <asp:Button ID="btnSubmit" runat="server" CssClass="btn btn-primary" Text="Submit" OnClick="btnSubmit_Click" />
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
