import xlrd


class XlUserInfo(object):
    """excel中读取用户数据（用户名和密码）"""

    def __init__(self,path):
        self.xl = xlrd.open_workbook(path)

    def get_sheet_by_name(self,name):
        sheet = self.xl.sheet_by_name(name)
        return sheet

    def get_sheet_by_index(self,index):
        sheet = self.xl.sheet_by_index(index)
        return sheet

    def int_to_string(self,val):
        if isinstance(val,float):
            val = str(int(val))
        return val

    def get_sheet_info(self,sheet):
        """
        得到表中的数据（用户名和密码）
        :param sheet: 表
        :return: 主程序中写的是由字典组成的列表，因此需要返回由字典组成的列表
        """
        key_list = ['uname','pwd']
        info_list = []
        for r in range(1,sheet.nrows):
            r_value =[self.int_to_string(val) for val in sheet.row_values(r)]
            zip_object = zip(key_list,r_value)
            user_dict = dict(zip_object)
            info_list.append(user_dict)
        return info_list


if __name__ == '__main__':
    user_info = XlUserInfo(r"C:\DATA\test\selenium_test\bdc_login\user_data.xls")
    sheet = user_info.get_sheet_by_index(0)
    info_list = user_info.get_sheet_info(sheet)
    print(info_list)