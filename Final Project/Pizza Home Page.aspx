<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Pizza Home Page.aspx.cs" Inherits="Final_Project_305_Submission.Final_Project.Pizza_Home_Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <table class="nav-justified">
        <tr>
            <td style="width: 30px">&nbsp;</td>
            <td class="modal-sm" style="width: 100px">&nbsp;</td>
            <td class="modal-lg" style="width: 107px">&nbsp;</td>
            <td style="width: 1000px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 30px">&nbsp;</td>
            <td class="modal-sm" style="width: 100px">
                <asp:Label ID="Label1" runat="server" Text="Main Courses"></asp:Label>
            </td>
            <td class="modal-lg" style="width: 107px">&nbsp;</td>
            <td style="width: 1000px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 30px">&nbsp;</td>
            <td class="modal-sm" style="width: 100px">&nbsp;</td>
            <td class="modal-lg" style="width: 107px">
                <asp:CheckBox ID="PizzaCB" runat="server" AutoPostBack="True" OnCheckedChanged="PizzaCB_CheckedChanged" Text="Pizza" />
            </td>
            <td style="width: 1000px">
                <asp:Panel ID="PizzaPanel" runat="server" Visible="False">
                    <table class="nav-justified">
                        <tr>
                            <td style="height: 20px; width: 140px">
                                <asp:Label ID="Label3" runat="server" Text="Meat"></asp:Label>
                            </td>
                            <td style="height: 20px; width: 140px">
                                <asp:Label ID="Label2" runat="server" Text="Vegtables"></asp:Label>
                            </td>
                            <td style="height: 20px; width: 140px">
                                <asp:Label ID="Label4" runat="server" Text="Size"></asp:Label>
                            </td>
                            <td style="height: 20px; width: 210px">Sauce</td>
                            <td style="height: 20px; width: 145px">&nbsp;</td>
                            <td style="height: 20px; width: 120px">&nbsp;</td>
                            <td style="height: 20px; width: 65px">&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 140px">
                                <asp:CheckBoxList ID="MeatsList" runat="server">
                                    <asp:ListItem>Pepperoni</asp:ListItem>
                                    <asp:ListItem>Sausage</asp:ListItem>
                                    <asp:ListItem>Bacon</asp:ListItem>
                                    <asp:ListItem>Ham</asp:ListItem>
                                    <asp:ListItem>Meatball</asp:ListItem>
                                    <asp:ListItem>Beef</asp:ListItem>
                                </asp:CheckBoxList>
                            </td>
                            <td style="width: 140px">
                                <asp:CheckBoxList ID="VegList" runat="server">
                                    <asp:ListItem>Onions</asp:ListItem>
                                    <asp:ListItem>Black Olives</asp:ListItem>
                                    <asp:ListItem>Green Peppers</asp:ListItem>
                                    <asp:ListItem>Mushrooms</asp:ListItem>
                                    <asp:ListItem>Jaleopenos</asp:ListItem>
                                    <asp:ListItem>Banana Peppers</asp:ListItem>
                                </asp:CheckBoxList>
                            </td>
                            <td style="width: 140px">
                                <asp:RadioButtonList ID="SizeList" runat="server">
                                    <asp:ListItem>Small</asp:ListItem>
                                    <asp:ListItem>Medium</asp:ListItem>
                                    <asp:ListItem>Large</asp:ListItem>
                                    <asp:ListItem Value="XLarge">Extra-Large</asp:ListItem>
                                </asp:RadioButtonList>
                            </td>
                            <td class="modal-sm" style="width: 210px">
                                <asp:RadioButtonList ID="SauceList" runat="server">
                                    <asp:ListItem>Classic Tomato</asp:ListItem>
                                    <asp:ListItem>Roated Tomatos and Basil</asp:ListItem>
                                    <asp:ListItem>Pesto</asp:ListItem>
                                    <asp:ListItem>Garlic White Sauce</asp:ListItem>
                                </asp:RadioButtonList>
                            </td>
                            <td class="modal-sm" style="width: 145px">&nbsp;</td>
                            <td class="modal-sm" style="width: 120px">&nbsp;</td>
                            <td style="width: 65px">&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 140px">&nbsp;</td>
                            <td style="width: 140px">&nbsp;</td>
                            <td style="width: 140px">&nbsp;</td>
                            <td class="modal-sm" style="width: 210px">&nbsp;</td>
                            <td class="modal-sm" style="width: 145px; text-align: center">
                                <asp:Button ID="GPP" runat="server" OnClick="GPP_Click" Text="Add to Cart" />
                            </td>
                            <td class="modal-sm" style="text-align: right; width: 120px">
                                <asp:Label ID="PizzaPrice" runat="server" Text="Label" Visible="False"></asp:Label>
                            </td>
                            <td style="width: 65px">&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 140px">&nbsp;</td>
                            <td style="width: 140px">&nbsp;</td>
                            <td style="width: 140px">&nbsp;</td>
                            <td class="modal-sm" style="width: 210px">&nbsp;</td>
                            <td class="modal-sm" style="width: 145px">&nbsp;</td>
                            <td class="modal-sm" style="width: 120px">&nbsp;</td>
                            <td style="width: 65px">&nbsp;</td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 30px">&nbsp;</td>
            <td class="modal-sm" style="width: 100px">Extras</td>
            <td class="modal-lg" style="width: 107px">&nbsp;</td>
            <td style="width: 1000px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 30px">&nbsp;</td>
            <td class="modal-sm" style="width: 100px">&nbsp;</td>
            <td class="modal-lg" style="width: 107px">
                <asp:CheckBox ID="GarlicKnotsCB" runat="server" AutoPostBack="True" OnCheckedChanged="GarlicKnotsCB_CheckedChanged" Text="Garlic Knots" />
            </td>
            <td style="width: 1000px">
                <asp:Panel ID="Panel1" runat="server">
                    <asp:Panel ID="GKPanel" runat="server" Visible="False">
                        <table class="nav-justified">
                            <tr>
                                <td style="width: 631px">
                                    <asp:Label ID="Label5" runat="server" Text="Size"></asp:Label>
                                    :</td>
                                <td style="width: 145px">&nbsp;</td>
                                <td style="width: 120px">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td style="width: 631px">
                                    <asp:RadioButtonList ID="GKSize" runat="server">
                                        <asp:ListItem>6</asp:ListItem>
                                        <asp:ListItem>12</asp:ListItem>
                                        <asp:ListItem>18</asp:ListItem>
                                        <asp:ListItem>24</asp:ListItem>
                                    </asp:RadioButtonList>
                                </td>
                                <td style="width: 145px">&nbsp;</td>
                                <td style="width: 120px">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td style="width: 631px">&nbsp;</td>
                                <td class="text-center" style="width: 145px">
                                    <asp:Button ID="GPGK" runat="server" OnClick="GPGK_Click" Text="Add to Cart" />
                                </td>
                                <td class="text-right" style="width: 120px">
                                    <asp:Label ID="GKPrice" runat="server" Text="Label" Visible="False"></asp:Label>
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td style="width: 631px">&nbsp;</td>
                                <td style="width: 145px">&nbsp;</td>
                                <td style="width: 120px">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                    </asp:Panel>
                </asp:Panel>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 30px; height: 146px;"></td>
            <td class="modal-sm" style="width: 100px; height: 146px;"></td>
            <td class="modal-lg" style="width: 107px; height: 146px;">
                <asp:CheckBox ID="BreadSticksCB" runat="server" AutoPostBack="True" Text="Break Sticks" OnCheckedChanged="BreadSticksCB_CheckedChanged" />
            </td>
            <td style="height: 146px; width: 1000px;">
                <asp:Panel ID="BSPanel" runat="server" Visible="False">
                    <table class="nav-justified">
                        <tr>
                            <td style="width: 631px">Size:</td>
                            <td style="width: 145px">&nbsp;</td>
                            <td style="width: 120px">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 631px">
                                <asp:RadioButtonList ID="BSSize" runat="server">
                                    <asp:ListItem>5</asp:ListItem>
                                    <asp:ListItem>10</asp:ListItem>
                                    <asp:ListItem>15</asp:ListItem>
                                    <asp:ListItem>20</asp:ListItem>
                                </asp:RadioButtonList>
                            </td>
                            <td style="width: 145px">&nbsp;</td>
                            <td style="width: 120px">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 631px">&nbsp;</td>
                            <td class="text-center" style="width: 145px">
                                <asp:Button ID="GPBS" runat="server" OnClick="GPBS_Click1" Text="Add to Cart" />
                            </td>
                            <td class="text-right" style="width: 120px">
                                <asp:Label ID="BSPrice" runat="server" Text="Label" Visible="False"></asp:Label>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 631px">&nbsp;</td>
                            <td style="width: 145px">&nbsp;</td>
                            <td style="width: 120px">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
            <td style="height: 146px"></td>
            <td style="height: 146px"></td>
        </tr>
        <tr>
            <td style="width: 30px">&nbsp;</td>
            <td class="modal-sm" style="width: 100px">&nbsp;</td>
            <td class="modal-lg" style="width: 107px">
                <asp:CheckBox ID="WingsCB" runat="server" Text="Wings" OnCheckedChanged="WingsCB_CheckedChanged" AutoPostBack="True" />
            </td>
            <td style="width: 1000px">
                <asp:Panel ID="WingsPanel" runat="server" Visible="False">
                    <table class="nav-justified">
                        <tr>
                            <td style="width: 180px">Size:</td>
                            <td style="width: 451px">
                                <asp:Label ID="Label7" runat="server" Text="Sauce:"></asp:Label>
                            </td>
                            <td style="width: 145px">&nbsp;</td>
                            <td style="width: 120px">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 180px">
                                <asp:RadioButtonList ID="WingsSize" runat="server">
                                    <asp:ListItem>5</asp:ListItem>
                                    <asp:ListItem>10</asp:ListItem>
                                    <asp:ListItem>15</asp:ListItem>
                                    <asp:ListItem>20</asp:ListItem>
                                </asp:RadioButtonList>
                            </td>
                            <td style="width: 451px">
                                <asp:RadioButtonList ID="WingsSauce" runat="server">
                                    <asp:ListItem>Parm Garlic</asp:ListItem>
                                    <asp:ListItem>Mild</asp:ListItem>
                                    <asp:ListItem>Medium</asp:ListItem>
                                    <asp:ListItem>Spicy Garlic</asp:ListItem>
                                    <asp:ListItem>Hot</asp:ListItem>
                                    <asp:ListItem>Killian&#39;s Secret Sauce</asp:ListItem>
                                </asp:RadioButtonList>
                            </td>
                            <td style="width: 145px">&nbsp;</td>
                            <td style="width: 120px">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 180px">&nbsp;</td>
                            <td style="width: 451px">&nbsp;</td>
                            <td class="text-center" style="width: 145px">
                                <asp:Button ID="GPWings" runat="server" OnClick="GPWings_Click1" Text="Add to Cart" />
                            </td>
                            <td class="text-right" style="width: 120px">
                                <asp:Label ID="WingsPrice" runat="server" Text="Label" Visible="False"></asp:Label>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 180px">&nbsp;</td>
                            <td style="width: 451px">&nbsp;</td>
                            <td style="width: 145px">&nbsp;</td>
                            <td style="width: 120px">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 30px">&nbsp;</td>
            <td class="modal-sm" style="width: 100px">
                <asp:Label ID="Label6" runat="server" Text="Drinks"></asp:Label>
            </td>
            <td class="modal-lg" style="width: 107px">&nbsp;</td>
            <td style="width: 1000px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 30px">&nbsp;</td>
            <td class="modal-sm" style="width: 100px">&nbsp;</td>
            <td class="modal-lg" style="width: 107px">
                <asp:CheckBox ID="SodaCB" runat="server" Text="Soda" AutoPostBack="True" OnCheckedChanged="SodaCB_CheckedChanged" />
            </td>
            <td style="width: 1000px">
                <asp:Panel ID="DrinksPanel" runat="server" Visible="False">
                    <table class="nav-justified">
                        <tr>
                            <td style="width: 180px">
                                <asp:Label ID="Label9" runat="server" Text="Drink"></asp:Label>
                            </td>
                            <td class="modal-sm" style="width: 451px">Size:</td>
                            <td style="width: 145px">&nbsp;</td>
                            <td style="width: 120px">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 180px">
                                <asp:RadioButtonList ID="Soda" runat="server">
                                    <asp:ListItem>Coke</asp:ListItem>
                                    <asp:ListItem>Root Beer</asp:ListItem>
                                    <asp:ListItem>Sprite</asp:ListItem>
                                    <asp:ListItem>Dr. Pepper</asp:ListItem>
                                    <asp:ListItem>Orange Soda</asp:ListItem>
                                    <asp:ListItem>MTN DEW</asp:ListItem>
                                </asp:RadioButtonList>
                            </td>
                            <td class="modal-sm" style="width: 451px">
                                <asp:RadioButtonList ID="SodaSize" runat="server">
                                    <asp:ListItem>16oz</asp:ListItem>
                                    <asp:ListItem>1 liter</asp:ListItem>
                                    <asp:ListItem>2 Liter</asp:ListItem>
                                </asp:RadioButtonList>
                            </td>
                            <td style="width: 145px">&nbsp;</td>
                            <td style="width: 120px">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 180px">&nbsp;</td>
                            <td class="modal-sm" style="width: 451px">&nbsp;</td>
                            <td class="text-center" style="width: 145px">
                                <asp:Button ID="GPSoda" runat="server" OnClick="GPSoda_Click" Text="Add to Cart" />
                            </td>
                            <td class="text-right" style="width: 120px">
                                <asp:Label ID="SodaPrice" runat="server" Text="Label" Visible="False"></asp:Label>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 180px">&nbsp;</td>
                            <td class="modal-sm" style="width: 451px">&nbsp;</td>
                            <td style="width: 145px">&nbsp;</td>
                            <td style="width: 120px">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 30px">&nbsp;</td>
            <td class="modal-sm" style="width: 100px">&nbsp;</td>
            <td class="modal-lg" style="width: 107px">
                <asp:CheckBox ID="SpecialtyCB" runat="server" Text="Specialty" AutoPostBack="True" OnCheckedChanged="SpecialtyCB_CheckedChanged" />
            </td>
            <td style="width: 1000px">
                <asp:Panel ID="SpecialtyPanel" runat="server" Visible="False">
                    <table class="nav-justified">
                        <tr>
                            <td style="width: 181px">Drink</td>
                            <td style="width: 451px">Size:</td>
                            <td style="width: 145px">&nbsp;</td>
                            <td style="width: 120px">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 181px">
                                <asp:RadioButtonList ID="SPDrink" runat="server" style="margin-right: 0px">
                                    <asp:ListItem>Lemonade</asp:ListItem>
                                    <asp:ListItem>Strawberry Lemonade</asp:ListItem>
                                    <asp:ListItem>Sweet Tea</asp:ListItem>
                                    <asp:ListItem>Unsweet Tea</asp:ListItem>
                                </asp:RadioButtonList>
                            </td>
                            <td style="width: 451px">
                                <asp:RadioButtonList ID="SPSize" runat="server">
                                    <asp:ListItem>16oz</asp:ListItem>
                                    <asp:ListItem>Half Gallon</asp:ListItem>
                                    <asp:ListItem>Gallon</asp:ListItem>
                                </asp:RadioButtonList>
                            </td>
                            <td style="width: 145px">&nbsp;</td>
                            <td style="width: 120px">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 181px">&nbsp;</td>
                            <td style="width: 451px">&nbsp;</td>
                            <td class="text-center" style="width: 145px">
                                <asp:Button ID="GPSP" runat="server" OnClick="GPSP_Click" Text="Add to Cart" />
                            </td>
                            <td class="text-right" style="width: 120px">
                                <asp:Label ID="SpecialtyPrice" runat="server" Text="Label" Visible="False"></asp:Label>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 181px">&nbsp;</td>
                            <td style="width: 451px">&nbsp;</td>
                            <td style="width: 145px">&nbsp;</td>
                            <td style="width: 120px">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 30px; height: 20px;"></td>
            <td class="modal-sm" style="width: 100px; height: 20px;"></td>
            <td class="modal-lg" style="width: 107px; height: 20px;"></td>
            <td style="width: 1000px; height: 20px"></td>
            <td style="height: 20px"></td>
            <td style="height: 20px"></td>
        </tr>
        <tr>
            <td style="width: 30px">&nbsp;</td>
            <td class="modal-sm" style="width: 100px">&nbsp;</td>
            <td class="modal-lg" style="width: 107px">
                <asp:Label ID="TipLabel" runat="server" Text="Tip:"></asp:Label>
            </td>
            <td style="width: 1000px">
                <asp:RadioButtonList ID="TipAmountList" runat="server">
                    <asp:ListItem>None</asp:ListItem>
                    <asp:ListItem>10%</asp:ListItem>
                    <asp:ListItem>15%</asp:ListItem>
                    <asp:ListItem>18%</asp:ListItem>
                    <asp:ListItem>20%</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 30px">&nbsp;</td>
            <td class="modal-sm" style="width: 100px">&nbsp;</td>
            <td class="modal-lg" style="width: 107px">&nbsp;</td>
            <td style="width: 1000px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 30px">&nbsp;</td>
            <td class="modal-sm" style="width: 100px">&nbsp;</td>
            <td class="modal-lg" style="width: 107px; text-align: center;">
                <asp:Button ID="Checkout" runat="server" OnClick="Checkout_Click" Text="Checkout" />
            </td>
            <td style="width: 1000px">
                <asp:Panel ID="CheckoutPanel" runat="server">
                    <table class="nav-justified">
                        <tr>
                            <td class="modal-sm" style="width: 125px">Subtotal</td>
                            <td class="text-right" style="width: 93px">
                                <asp:Label ID="Subtotal" runat="server" Text="Subtotal"></asp:Label>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="height: 20px; width: 125px">Tip</td>
                            <td class="text-right" style="height: 20px; width: 93px">
                                <asp:Label ID="Tip" runat="server" Text="Tip"></asp:Label>
                            </td>
                            <td style="height: 20px"></td>
                        </tr>
                        <tr>
                            <td style="height: 20px; width: 125px">Tax</td>
                            <td class="text-right" style="height: 20px; width: 93px">
                                <asp:Label ID="Tax" runat="server" Text="Tax"></asp:Label>
                            </td>
                            <td style="height: 20px"></td>
                        </tr>
                        <tr>
                            <td style="height: 20px; width: 125px">&nbsp;</td>
                            <td class="text-right" style="height: 20px; width: 93px">&nbsp;</td>
                            <td style="height: 20px">&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="height: 20px; width: 125px">Total</td>
                            <td class="text-right" style="height: 20px; width: 93px">
                                <asp:Label ID="Total" runat="server" Text="Total"></asp:Label>
                            </td>
                            <td style="height: 20px">&nbsp;</td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 30px">&nbsp;</td>
            <td class="modal-sm" style="width: 100px">&nbsp;</td>
            <td class="modal-lg" style="width: 107px">&nbsp;</td>
            <td style="width: 1000px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 30px">&nbsp;</td>
            <td class="modal-sm" style="width: 100px">&nbsp;</td>
            <td class="modal-lg" style="width: 107px">&nbsp;</td>
            <td style="width: 1000px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
