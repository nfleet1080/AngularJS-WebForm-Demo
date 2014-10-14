<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="AngularJSdemo.Events" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-sm-12">
            <div class="page-header">
                <h1>Events</h1>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-xs-12">
            <ul class="nav nav-tabs">
                <li class="active"><a href="/">Listing</a></li>
                <li><a href="AddEvent.aspx">Add Event</a></li>
            </ul>
        </div>
    </div>
    <div class="row">
        <div class="col-xs-12" style="padding-bottom:1em">
            <div class="form-inline" role="form" style="margin-top: 1em">
                <div class="form-group">
                    <asp:TextBox ID="txtFilter" runat="server" CssClass="form-control" placeholder="Filter Events"></asp:TextBox>
                </div>
                <div class="form-group">
                    <asp:Button ID="btnFilter" runat="server" Text="Filter" CssClass="btn btn-info" OnClick="btnFilter_Click" />
                    <asp:Button ID="btnClear" runat="server" Text="Reset" CssClass="btn btn-default" OnClick="btnClear_Click" />
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-xs-12">
            <asp:GridView ID="GridView1" CssClass="table table-striped table-hover" runat="server" DataSourceID="LinqDataSource1" AutoGenerateColumns="False" AllowPaging="True" AllowSorting="True">
                <Columns>
                    <asp:BoundField DataField="Name" HeaderText="Name" ReadOnly="True" SortExpression="Name"></asp:BoundField>
                    <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" ReadOnly="True"></asp:BoundField>
                    <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" ReadOnly="True"></asp:BoundField>
                    <asp:ImageField DataImageUrlField="Picture" NullImageUrl="http://placehold.it/78x78" HeaderText="Picture" SortExpression="Picture" ReadOnly="True">
                        <ControlStyle Height="78px" Width="78px" />
                    </asp:ImageField>
                </Columns>
                <EmptyDataTemplate>
                    <div class="alert alert-danger">
                        <strong>Oh snap!</strong> No events were found!
                    </div>
                </EmptyDataTemplate>
            </asp:GridView>
            <asp:LinqDataSource runat="server" EntityTypeName="" ID="LinqDataSource1" ContextTypeName="AngularJSdemo.App_Data.DataClasses1DataContext" OrderBy="Date" TableName="tblEvents" Select="new (Name, Description, Date, Picture)" Where=" Name.Contains(@search) || Description.Contains(@search)">
                <WhereParameters>
                    <asp:ControlParameter  Name="search" ControlID="txtFilter" ConvertEmptyStringToNull="false"></asp:ControlParameter>
                </WhereParameters></asp:LinqDataSource>
        </div>
    </div>
</asp:Content>
