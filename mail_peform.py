from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
from time import sleep


class MailPerform(object):
    def __init__(self):
        self.driver = webdriver.Chrome()
        # 隐性等待，不影响脚本执行速度
        self.driver.implicitly_wait(10)

    def login(self):
        self.driver.get('https://mail.163.com/')
        # 显性等待，由于下方的操作要在iframe内进行，因此需要判断iframe是否加载成功
        WebDriverWait(self.driver, 5, 0.5).until(EC.presence_of_element_located((By.ID, "x-URS-iframe")))
        # 切换到iframe
        self.driver.switch_to.frame('x-URS-iframe')
        self.driver.find_element_by_name('email').clear()
        self.driver.find_element_by_name('email').send_keys('windsky10@163.com')
        self.driver.find_element_by_name('password').clear()
        self.driver.find_element_by_name('password').send_keys('xxxxxxxxxxx')
        # 此处可能会遇到验证码的问题，目前能想到的办法是通过记录cookie来解决，还有一种最简单的自己点一下然后回车下~~
        self.driver.find_element_by_id('dologin').click()
        sleep(5)
        print(self.driver.title)

    def write_letter(self):
        # 难点在于定位元素，期间有动态元素
        self.driver.find_element_by_xpath('//div[@id="dvNavTop"]//li[2]/span[2]').click()
        self.driver.find_element_by_xpath('//input[@class="nui-editableAddr-ipt"]').send_keys('13656636613@163.com')
        # 需要使用更多的属性来定位到主题框
        self.driver.find_element_by_xpath('//input[@class="nui-ipt-input" and @maxlength="256"]').send_keys('小芳测试')
        self.driver.switch_to.frame(self.driver.find_element_by_class_name('APP-editor-iframe'))
        self.driver.find_element_by_xpath('//body[@class="nui-scroll" and @contenteditable="true"]').send_keys('第一份自动化测试邮件')
        # 发送按钮是在iframe框架外的，因此需要跳出iframe框架
        self.driver.switch_to.default_content()
        self.driver.find_element_by_xpath("//span[contains(text(),'发送') and @class='nui-btn-text']").click()
        sleep(3)

    def close_driver(self):
        self.driver.quit()


if __name__ == "__main__":
    mail_perform = MailPerform()
    mail_perform.login()
    mail_perform.write_letter()
    mail_perform.close_driver()
