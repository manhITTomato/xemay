<%@ Control Language="C#" AutoEventWireup="true"  CodeBehind="main.ascx.cs" Inherits="ShopsDefault.UserControls.Contact.main" %>
<style>
    .btn-default {
        margin-bottom: 0;
        margin-top: 0;
    }

    .card-body .form-group label {
        font-weight: 500;
    }

    .block-header.custome-block-header {
        padding-top: 20px;
        margin-bottom: 20px;
        font-size: 25px;
    }

        .block-header.custome-block-header:before {
            bottom: -13px;
        }

        .block-header.custome-block-header:after {
            bottom: -10px;
        }
</style>
<script>
    $(function () {
        $('.btn-contact').click(function (e) {
            if ($('.check-contact-name').val() == '') {
                alert('Nhập tiêu đề để gởi liên hệ');
                $('.check-contact-name').focus();
                e.preventDefault();
            } else if ($('.check-full-name').val() == '') {
                alert('Nhập họ tên để gởi liên hệ');
                $('.check-full-name').focus();
                e.preventDefault();
            } else if ($('.check-phone').val() == '') {
                alert('Nhập số điện thoại để gởi liên hệ');
                $('.check-phone').focus();
                e.preventDefault();
            } else if ($('.check-email').val() == '') {
                alert('Nhập email để gởi liên hệ');
                $('.check-email').focus();
                e.preventDefault();
            } else if ($('.check-detail').val() == '') {
                alert('Nhập nội dung để gởi liên hệ');
                $('.check-detail').focus();
                e.preventDefault();
            }
        });
    });
</script>
<div class="contact-default">
    <div class="container">
        <div class="row">
            <div class="col-6">
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d931.1777464937883!2d105.84477717420418!3d21.00421929770967!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ac76ccab6dd7%3A0x55e92a5b07a97d03!2zVHLGsOG7nW5nIMSQ4bqhaSBo4buNYyBCw6FjaCBraG9hIEjDoCBO4buZaQ!5e0!3m2!1svi!2s!4v1575891413161!5m2!1svi!2s" width="100%" height="570" frameborder="0" style="border: 0;" allowfullscreen=""></iframe>
            </div>
            <div class="col-6">
                <div class="block-header custome-block-header">Liên hệ với chúng tôi</div>
                <%--<div>
                   <p>Đừng ngần ngại, hãy liên hệ ngay với chúng tôi bất cứ lúc nào thông qua Chat trực tuyến hoặc số điện thoại công ty, chúng tôi luôn hoan nghênh và sẵn sàng tư vấn, hỗ trợ bạn!</p>
                        <p>Đường dây nóng (hỗ trợ 24/7): <a href="tel:0343554888" style="font-size: 19px; font-weight: 500;">0343 554 888</a></p>
                        <p><i class="fa fa-map-marker"></i><b>Địa chỉ</b>: 1 Đại Cồ Việt, Bách Khoa, Hai Bà Trưng, Hà Nội</p>
                        <p><i class="fa fa-envelope"></i><b>Email</b>: <a href="mailto:doquocminh@gmail.com">doquocminh@gmail.com</a></p>
                    
                </div>--%>
                <div>
                    <div class="form-group">
                        <label for="company">Tiêu đề</label>
                        <asp:TextBox ID="txtContactName" runat="server" placeholder="Nhập tiêu đề" CssClass="form-control check-contact-name"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="company">Họ và tên</label>
                        <asp:TextBox ID="txtFullName" runat="server" placeholder="Nhập họ tên" CssClass="form-control check-full-name"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="company">Số điện thoại</label>
                        <asp:TextBox ID="txtPhone" runat="server" placeholder="Nhập số điện thoại" CssClass="form-control check-phone"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="company">Địa chỉ email</label>
                        <asp:TextBox ID="txtEmail" runat="server" placeholder="Nhập địa chỉ Email" CssClass="form-control check-email"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="street">Nội dung</label>
                        <asp:TextBox ID="txtDetail" runat="server" TextMode="MultiLine" placeholder="Nhập nội dung" CssClass="form-control check-detail"></asp:TextBox>
                    </div>
                    <div class="form-actions text-center">
                        <asp:LinkButton ID="btnSave" runat="server" OnClick="btnSave_Click" CssClass="btn-default btn-contact" Text="Gởi liên hệ"></asp:LinkButton>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

