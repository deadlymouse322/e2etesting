package e2etesting.pages;

import com.codeborne.selenide.Condition;
import org.openqa.selenium.By;

import static com.codeborne.selenide.Selenide.$;
import static com.codeborne.selenide.Selenide.closeWebDriver;
import static com.codeborne.selenide.Selenide.open;
import static com.codeborne.selenide.Selenide.webdriver;
import static com.codeborne.selenide.WebDriverConditions.url;

public class BasicPage {

    public void openPage(String arg0) {
        open(arg0);
    }

    public void closeBrowser() {
        closeWebDriver();
    }

    public void clickButton(String arg0) {
        $(By.xpath("//button[text()='" + arg0 + "']")).click();
    }

    public void currentPageChangedTo(String arg0) {
        webdriver().shouldHave(url(arg0));
    }

    public void clickButtonA(String arg0) {
        $(By.xpath("//a[contains(string(), \"" + arg0 + "\")]")).click();
    }

    public void message(String arg0) {
        $(By.xpath("//div[contains(string(), \"" + arg0 + "\")]")).shouldBe(Condition.visible);
    }

    public void errorIsVisible() {
        $(By.xpath("//div[@class='alert alert-danger alert-dismissible fade show']")).shouldBe(Condition.visible);
    }

    public void buttonAVisible(String arg0) {
        $(By.xpath("//a[contains(string(), \"" + arg0 + "\")]")).shouldBe(Condition.visible);
    }

    public void buttonVisible(String arg0) {
        $(By.xpath("//button[contains(string(), \"" + arg0 + "\")]")).shouldBe(Condition.visible);
    }

    public void textIsVisible(String arg0) {
        $(By.xpath("//h1[text()='"+arg0+"']")).shouldBe(Condition.visible);
    }

    public void messageSmall(String arg0) {
        $(By.xpath("/html/body/div[1]/div/main/div[2]/div/div[2]/div/div/div[1]/small[text()='"+arg0+"']")).shouldBe(Condition.visible);
    }
}
