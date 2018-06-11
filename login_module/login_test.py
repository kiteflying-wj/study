from selenium import webdriver
from selenium.webdriver.support.ui import WebDriverWait
import time

from bdc_login.user_data import XlUserInfo
from bdc_login.log_module import XlLogInfo


class TestLogin(object):
    def get_ele_times(self,driver,times,fun):
        return WebDriverWait(driver, times).until(fun)

    def open_brower(self):
        driver = webdriver.Chrome()
        driver.maximize_window()
        return driver

    def get_url(self,d,url):
        d.get(url)

    def find_element(self, d, ele_dict):
        if 'text_id' in ele_dict:
            ele_login = self.get_ele_times(d, 5, lambda d: d.find_element_by_link_text(ele_dict['text_id']))
            ele_login.click()
        uname_ele = d.find_element_by_id(ele_dict['uname_id'])
        pwd_ele = d.find_element_by_id(ele_dict['pwd_id'])
        login_ele = d.find_element_by_id(ele_dict['login_id'])
        return uname_ele,pwd_ele,login_ele

    def send_values(self,ele_tuple,data_dict):
        key_list = ['uname','pwd']
        i = 0
        for key in key_list:
            ele_tuple[i].clear()
            ele_tuple[i].send_keys(data_dict[key])
            i += 1
        ele_tuple[2].click()
        time.sleep(2)

    def close_brower(self,d):
        d.close()

    def check_result(self,d,ele_dict,data_dict,log):
        flag = False
        try:
            check_ele = d.find_element_by_class_name(ele_dict['check_class'])
            print('account and pwd error')
            print('uname=%s:pwd=%s:error:%s'% (data_dict['uname'],data_dict['pwd'],check_ele.text))
            log.xl_write(data_dict['uname'],data_dict['pwd'],'error',check_ele.text)
        except:
            flag = True
            print('login success!!')
            print('uname=%s:pwd=%s:success'.format(data_dict['uname'], data_dict['pwd']))
            log.xl_write(data_dict['uname'], data_dict['pwd'], 'success')
        return flag

    def logout(self,d,ele_dict):
        logout_ele = d.find_element_by_link_text(ele_dict['logout_text'])
        logout_ele.click()
        if 'confirm_alter' in ele_dict:
            confirm_ele = self.get_ele_times(d,5,lambda d:d.find_element_by_link_text(ele_dict['confirm_alter']))
            confirm_ele.click()

    def get_user_info(self,path):
        xl = XlUserInfo(path)
        sheet = xl.get_sheet_by_index(0)
        info_list = xl.get_sheet_info(sheet)
        return info_list

    def test_login(self,ele_dict):
        d = self.open_brower()
        self.get_url(d,ele_dict['url'])

        log = XlLogInfo()
        log.xl_init('Sheet1','uname','pwd','result','msg')

        ele_tuple = self.find_element(d,ele_dict)
        data_list =self.get_user_info(ele_dict['path'])
        for arg in data_list:
            self.send_values(ele_tuple,arg)
            flag = self.check_result(d,ele_dict,arg,log)
            if flag:
                self.logout(d,ele_dict)
                ele_tuple = self.find_element(d, ele_dict)

        self.close_brower(d)


if __name__ == '__main__':
    test_login = TestLogin()

    ele_dict = {'url': 'http://172.16.16.235:8380/bdc/login.html',
                'uname_id': 'userName',
                'pwd_id': 'password',
                'login_id': 'btnLogin',
                'check_class':'form-error-text',
                'logout_text':'注销',
                'confirm_alter':'确 定',
                'path': r"C:\DATA\test\selenium_test\bdc_login\user_data.xls"
                }
    # data_dict = {'uname':'23301271010','pwd':'*Aptx4869*'}
    # data_list = [{'uname':'23301271010','pwd':'*Aptx4869*'},
    #              {'uname':'2330127101011','pwd':'*Aptx4869*'}]

    test_login.test_login(ele_dict)