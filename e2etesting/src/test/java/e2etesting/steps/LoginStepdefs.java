package e2etesting.steps;

import e2etesting.pages.LoginPage;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;

public class LoginStepdefs {

    LoginPage page = new LoginPage();
    @Then("Input login {string}")
    public void inputLogin(String arg0) {
        page.inputLogin(arg0);
    }

    @Then("Input password {string}")
    public void inputPassword(String arg0) {
        page.inputPassword(arg0);
    }

    @Then("Input conformation {string}")
    public void inputConformation(String arg0) {
        page.inputConformation(arg0);
    }

    @Then("Input email {string}")
    public void inputEmail(String arg0) {
        page.inputEmail(arg0);
    }
}
