package e2etesting.steps;

import e2etesting.pages.ProfilePage;
import io.cucumber.java.en.Then;

public class ProfileStepdefs {

    ProfilePage page = new ProfilePage();
    @Then("Click change user pass button")
    public void clickChangeUserPassButton() {
        page.clickChangeUserPassButton();
    }

    @Then("Click change bd pass button")
    public void clickChangeBdPassButton() {
        page.clickChangeBdPassButton();
    }
}
