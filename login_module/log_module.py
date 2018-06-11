import xlsxwriter
import time


class XlLogInfo(object):
    """登录日志写入excel"""

    def __init__(self, path=''):
        fname = path + time.strftime('%Y-%m-%d',time.gmtime())
        self.xl = xlsxwriter.Workbook(fname+'.xls')
        self.row = 0
        self.style = self.xl.add_format({'bg_color': 'red'})

    def xl_init(self,sheetname,*title):
        self.sheet = self.xl.add_worksheet(sheetname)
        self.sheet.set_column('A:D',30)
        self.xl_write(*title)

    def xl_write(self,*args):
        col = 0
        style = ''
        if 'error' in args:
            style = self.style
        for val in args:
            self.sheet.write_string(self.row,col,val,style)
            col += 1
        self.row += 1

    def log_close(self):
        self.xl.close()


if __name__ == "__main__":
    log = XlLogInfo()
    log.xl_init('Sheet1','uname','pwd','result','detail')
    log.log_close()