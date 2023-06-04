Merhaba,

Proje dosyasını masaüstüne indirdikten sonra terminale
cd amazon-techcareer\resources\test dosya dizinine gidin.

Testi çalıştırmadan önce signInPage.robot dosyası içerisinde yer alan alanları amazon.com.tr üyelik bilgilerinize göre doldurunuz.

${email} =  amazon.com.tr e-mail adresiniz.

${password} =   amazon.com.tr şifreniz.

${name} =   amazon.com.tr adresine girdiğinizde sağ üst kısımda görünen adınız.

Testleri çalıştırmak için aşağıdaki komutu terminale yazın.

robot -d ..\reports -v BROWSER:chrome amazonCase.robot