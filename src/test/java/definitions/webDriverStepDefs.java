package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;

import static support.TestContext.getDriver;

public class webDriverStepDefs {
    @Given("RM navigate to {string}")
    public void rmNavigateTo(String sURL) {
        //getDriver().get("https://www.google.com");
        switch (sURL) {
            case "Google":
                getDriver().get("https://www.google.com");
                break;
            case "Portnov":
                getDriver().get("https://www.portnov.com");
                break;
            case "ask-int":
                getDriver().get("http://ask-int.portnov.com/");
                break;
            default:
                System.out.println("no URL found");
        }
    }

    @Then("RM get page information")
    public void rmGetPageInformation() {
        System.out.println("The page title is: " + getDriver().getTitle());
        System.out.println("The page URL is: " + getDriver().getCurrentUrl());
        System.out.println("The window handler is: " + getDriver().getWindowHandle());
    }

    @And("RM maximize the window")
    public void rmMaximizeTheWindow() {
        getDriver().manage().window().maximize();
    }
}
