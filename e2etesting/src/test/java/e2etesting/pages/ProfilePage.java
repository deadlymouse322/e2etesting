package e2etesting.pages;

import com.codeborne.selenide.SelenideElement;
import org.openqa.selenium.By;

import static com.codeborne.selenide.Selenide.$;

public class ProfilePage {

    SelenideElement changeUserPassButton = $(By.xpath("/html/body/div[1]/div/main/div[7]/form/div[2]/button"));
    SelenideElement changeBdButton = $(By.xpath("/html/body/div[1]/div/main/div[5]/form/div[2]/button"));
    public void clickChangeUserPassButton() {
        changeUserPassButton.click();
    }

    public void clickChangeBdPassButton() {
        changeBdButton.click();
    }
}
