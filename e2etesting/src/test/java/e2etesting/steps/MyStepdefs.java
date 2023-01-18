package e2etesting.steps;

import e2etesting.pages.BasicPage;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;

public class MyStepdefs {

    BasicPage page = new BasicPage();
    @Given("open page {string}")
    public void openPage(String arg0) {
        page.openPage(arg0);
    }

    @Then("close browser")
    public void closeBrowser() {
        page.closeBrowser();
    }

    @Then("Click {string} button")
    public void clickButton(String arg0) {
        page.clickButton(arg0);
    }

    @Then("Current page changed to {string}")
    public void currentPageChangedTo(String arg0) {
        page.currentPageChangedTo(arg0);
    }

    @Then("Click {string} button a")
    public void clickButtonA(String arg0) {
        page.clickButtonA(arg0);
    }

    @Then("Message {string}")
    public void message(String arg0) {
        page.message(arg0);
    }

    @Then("Error is visible")
    public void errorIsVisible() {
        page.errorIsVisible();
    }

    @Then("button a {string} visible")
    public void buttonAVisible(String arg0) {
        page.buttonAVisible(arg0);
    }

    @Then("button {string} visible")
    public void buttonVisible(String arg0) {
        page.buttonVisible(arg0);
    }

    @And("text {string} is visible")
    public void textIsVisible(String arg0) {
        page.textIsVisible(arg0);
    }

    @Then("Message small {string}")
    public void messageSmall(String arg0) {
        page.messageSmall(arg0);
    }
}
