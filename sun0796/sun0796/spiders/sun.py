# -*- coding: utf-8 -*-
import scrapy
from sun0796.items import Sun0796Item


class SunSpider(scrapy.Spider):
    name = 'sun'
    allowed_domains = ['d.wz.sun0769.com']
    base_url = 'http://d.wz.sun0769.com/index.php/question/huiyin?page='
    page = 0
    start_urls = [base_url+str(page)]

    def parse(self, response):
        node_list = response.xpath('//div[@class="greyframe"]/table[2]//table//tr')
        for node in node_list:
            item = Sun0796Item()
            item['id'] = node.xpath('./td[1]/text()').extract()[0] if len(node.xpath('./td[1]/text()')) else None
            item['title'] = node.xpath('./td[2]/a[2]/text()').extract()[0] if len(node.xpath('./td[2]/a[2]/text()')) else None
            item['state'] = node.xpath('./td[3]/span/text()').extract()[0] if len(node.xpath('./td[3]/span/text()')) else None
            item['person'] = node.xpath('./td[4]/text()').extract()[0] if len(node.xpath('./td[4]/text()')) else None
            item['date'] = node.xpath('./td[5]/text()').extract()[0] if len(node.xpath('./td[5]/text()')) else None
            item['countdown'] = node.xpath('./td[6]/text()').extract()[0] if len(node.xpath('./td[6]/text()')) else None

            yield item
        if self.page < 130920:
            self.page += 30
            yield scrapy.Request(self.base_url+str(self.page), callback=self.parse)





