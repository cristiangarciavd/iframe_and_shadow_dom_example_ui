"""Test iFrame with selenium interaction"""
import warnings
from core.main.drivers.chrome_web_driver import ChromeWebDriver
from ui.iframe_locators import IFrame
from selenium.webdriver.support.wait import WebDriverWait as WDW
from selenium.webdriver.support import expected_conditions as EC


class TestiFrame():
  """Test iFrame class
  """


  def setup_method(self, method):
    warnings.filterwarnings(action="ignore", message="unclosed", category=ResourceWarning)
    warnings.filterwarnings(action="ignore", category=DeprecationWarning)
    self.driver = ChromeWebDriver.initialize()
    self.driver.maximize_window()
    self.vars = {}
  
  def teardown_method(self, method):
    self.driver.quit()
  
  def test_iframe(self):
    self.driver.get("https://embed.plnkr.co/fVIYs97WzjwjYnuDE75u/")
    WDW(self.driver, 15).until(
            EC.visibility_of(self.driver.find_element(*IFrame.EXTERNAL_I_FRAME)))
    iframe_ext = self.driver.find_element(*IFrame.EXTERNAL_I_FRAME)
    self.driver.switch_to.frame(iframe_ext)
    iframe_int = self.driver.find_element(*IFrame.INTERNAL_I_FRAME)
    self.driver.switch_to.frame(iframe_int)
    text_to_verify = self.driver.find_element(*IFrame.DOM_ELEMENT).text

    assert text_to_verify == "DOM element"
