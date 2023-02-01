"""Module for Shadow DOM locators
"""
from selenium.webdriver.common.by import By

class ShadowDOM:
    """Shadow DOM locators
    """
    SHADOW_HOST = (By.ID, 'container')

    SHADOW_DOM_ELEMENT = (By.CSS_SELECTOR, 'h1[id="inside"]')
