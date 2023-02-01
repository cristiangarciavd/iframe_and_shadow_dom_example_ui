"""Test Shadow DOM with selenium interaction"""
import warnings
from core.main.drivers.chrome_web_driver import ChromeWebDriver
from ui.shadow_locators import ShadowDOM
from ui.iframe_locators import IFrame
from selenium.webdriver.support.wait import WebDriverWait as WDW
from selenium.webdriver.support import expected_conditions as EC

class TestShadow():
  """Test Shadow DOM class
  """


  script = 'return arguments[0].shadowRoot'

  def setup_method(self, method):
    warnings.filterwarnings(action="ignore", message="unclosed", category=ResourceWarning)
    warnings.filterwarnings(action="ignore", category=DeprecationWarning)
    self.driver = ChromeWebDriver.initialize()
    self.driver.maximize_window()
    self.driver.implicitly_wait(5)
    self.vars = {}
  
  def teardown_method(self, method):
    self.driver.quit()
  
  def expand_shadow_element(self, element):
    shadow_root = self.driver.execute_script(self.script, element)
    return shadow_root

  def test_shadow(self):
    self.driver.get("https://embed.plnkr.co/fVIYs97WzjwjYnuDE75u/")
    WDW(self.driver, 15).until(
            EC.visibility_of(self.driver.find_element(*IFrame.EXTERNAL_I_FRAME)))
    iframe_ext = self.driver.find_element(*IFrame.EXTERNAL_I_FRAME)
    self.driver.switch_to.frame(iframe_ext)
    iframe_int = self.driver.find_element(*IFrame.INTERNAL_I_FRAME)
    self.driver.switch_to.frame(iframe_int)
    shadow_host = self.driver.find_element(*ShadowDOM.SHADOW_HOST)
    shadow_root = self.expand_shadow_element(shadow_host)
    text_to_verify = shadow_root.find_element(*ShadowDOM.SHADOW_DOM_ELEMENT).text

    assert text_to_verify == "Inside Shadow DOM"
