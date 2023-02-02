"""Module for iFrame locators
"""
from selenium.webdriver.common.by import By


class IFrame:
    """iFrame locators
    """

    EXTERNAL_I_FRAME = (By.CSS_SELECTOR, 'iframe[class*="plunker"]')

    INTERNAL_I_FRAME = (By.XPATH, '//iframe[@id="preview"]')

    DOM_ELEMENT = (By.CSS_SELECTOR, 'h1')
