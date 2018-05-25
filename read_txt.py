from selenium import webdriver
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
from selenium.webdriver.common.by import By
from public import Login


class LoginTest(object):

    def open_browser(self):
        driver = webdriver.Chrome()
        driver.implicitly_wait(10)
        driver.get('https://mail.163.com/')
        WebDriverWait(driver, 5, 0.5).until(EC.presence_of_all_elements_located((By.ID, 'x-URS-iframe')))
        driver.switch_to.frame('x-URS-iframe')
        return driver

    def read_file(self):
        f = open('user.txt', 'r')
        lines = f.readlines()
        f.close()
        for line in lines:
            username = line.split(',')[0]
            password = line.split(',')[1]
            driver = self.open_browser()
            Login().use_login(driver, username, password)
            driver.quit()


login_test = LoginTest()
login_test.read_file()