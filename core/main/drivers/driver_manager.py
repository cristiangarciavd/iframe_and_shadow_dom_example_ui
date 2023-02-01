"""Module to define Web Driver path
"""
try:
    from robot.api.deco import keyword
    ROBOT = False
except Exception:
    ROBOT = False
from webdriver_manager.chrome import ChromeDriverManager
from webdriver_manager.firefox import GeckoDriverManager

class DriverManager:
    """Class to define WebDriver factory
    """

    _browsers = {
        "CHROME": ChromeDriverManager(),
        "FIREFOX": GeckoDriverManager(),
    }

    @classmethod
    def get_driver(cls, browser="CHROME"):
        """Method to get a specific browser driver path

        Parameters
        ----------
        browser : str, optional
            type of browser, by default "CHROME"

        Returns
        -------
        object
            browser driver path object
        """

        return cls._browsers[browser.upper()].install()

@keyword("GET DRIVER")
def get_driver(browser):
    """This method initialices a driver instance.

    Returns:
        driver_path: return the webdriver path
    """

    return DriverManager.get_driver(browser)