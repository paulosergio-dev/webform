<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="aluno.aspx.cs" Inherits="WebApplication1.ALUNO.aluno" %>

<%@ Register Assembly="Ext.Net" Namespace="Ext.Net" TagPrefix="ext" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <ext:ResourceManager ID="ResourceManager1" runat="server">
        </ext:ResourceManager>
        <ext:Viewport ID="Viewport1" runat="server" Layout="AbsoluteLayout">
            <Items>
                <ext:Panel ID="Panel1" runat="server" Collapsible="True" Region="Center" Split="True" Title="North" Layout="FormLayout">
                    <Items>
                        <ext:TextField runat="server" FieldLabel="Matrícula" ID="txfMatricula" MaskRe="[0-9]" Width="300">
                        </ext:TextField>
                        <ext:TextField runat="server" FieldLabel="Nome" ID="txfNome" Width="700">
                        </ext:TextField>
                        <ext:TextField runat="server" FieldLabel="CPF" ID="txfCPF" MaskRe="[0-9]" Width="300">
                        
                        </ext:TextField>

                        <ext:GridPanel
                            ID="GridPanel" runat="server" Title="Grid" Height="400">
                            <Store>
                                <ext:Store ID="Materias" runat="server">
                                    <Reader>
                                        <ext:JsonReader>
                                            <Fields>
                                                <ext:RecordField Name="Disciplina"></ext:RecordField>
                                            </Fields>
                                        </ext:JsonReader>
                                    </Reader>
                                </ext:Store>
                            </Store>
                            <ColumnModel>
                                <Columns>
                                    <ext:Column Header="Disciplinas" DataIndex="Disciplina"></ext:Column>
                                </Columns>
                            </ColumnModel>
                            <SelectionModel>
                                <ext:CheckboxSelectionModel runat="server"></ext:CheckboxSelectionModel>
                            </SelectionModel>
                        </ext:GridPanel>
                    </Items>
                </ext:Panel>


            </Items>
        </ext:Viewport>
    </form>
</body>
</html>
