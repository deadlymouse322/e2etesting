package e2etesting.pages;

import org.openqa.selenium.By;

import static com.codeborne.selenide.Selenide.$;

public class LoginPage {
    public void inputLogin(String arg0) {
        $(By.name("login")).setValue(arg0);
    }

    public void inputPassword(String arg0) {
        $(By.name("password")).setValue(arg0);
    }

    public void inputConformation(String arg0) {
        $(By.name("conformation")).setValue(arg0);
    }

    public void inputEmail(String arg0) {
        $(By.name("email")).setValue(arg0);
    }
}
