# -*- coding: utf-8 -*-

# Define your item pipelines here
#
# Don't forget to add your pipeline to the ITEM_PIPELINES setting
# See: https://doc.scrapy.org/en/latest/topics/item-pipeline.html
import json

class Sun0796Pipeline(object):
    def __init__(self):
        self.f = open('sun0796.json','wb')

    def process_item(self, item, spider):
        data = json.dumps(dict(item), ensure_ascii=False, indent=4) + ','
        self.f.write(data.encode('utf-8'))
        return item

    def close_spider(self, spider):
        self.f.close()
