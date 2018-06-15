# -*- coding: utf-8 -*-

# Define here the models for your scraped items
#
# See documentation in:
# https://doc.scrapy.org/en/latest/topics/items.html

import scrapy


class Sun0796Item(scrapy.Item):
    # define the fields for your item here like:
    # 编号
    id = scrapy.Field()
    # 标题
    title = scrapy.Field()
    # 标题链接
    link = scrapy.Field()
    # 状态
    state = scrapy.Field()
    # 网友
    person = scrapy.Field()
    # 时间日期
    date = scrapy.Field()
    # 办理倒计时
    countdown = scrapy.Field()
