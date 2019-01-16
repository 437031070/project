from addsql import *
import BI
import datetime
from dateutil.relativedelta import relativedelta
import time
# 行业概况
def Industry_profile_cleaning(cateid):
    Industry_data = Industry_composition_show(cateid)
    Subindustry_data = Subindustry_Distribution_show(cateid)
    form = []
    for cow in Industry_data:
        for cow1 in Subindustry_data:
            if cow[2] == cow1[2] and cow[3] == cow1[3]:
                text = list(cow)
                text.append(cow1[4])
                text.append(cow1[5])
                text.append(cow1[6])
                text.append(cow1[7])
                form.append(text)
    form = np.array(form)
    print(form)
    return form
# 行业趋势
def Industry_trend_cleaning(name):
    Industry_data = Industry_composition_show(name,"cateName")
    Subindustry_data = Subindustry_Distribution_show(name,"cateName")
    form = []
    for cow in Industry_data:
        for cow1 in Subindustry_data:
            if cow[2] == cow1[2] and cow[3] == cow1[3]:
                text = list(cow)
                text.append(cow1[4])
                text.append(cow1[5])
                text.append(cow1[6])
                text.append(cow1[7])
                form.append(text)
    form = np.array(form)
    print(form)
    dates = BI.one_year_enerator()
    date_data = []
    market_share = []
    Degree_competition = []
    for date in dates[::-1]:
        print(date[0])
        print(form[::,2])
        if date[0] in form[::,2]:
            date_data.append(date[0])
            for cow in form:
                if date[0] == cow[2]:
                    market_share.append(cow[-6])
                    Degree_competition.append(cow[-1])
    data = {}

    # date = form[::,2]
    # market_share = form[::,-6]
    # Degree_competition = form[::,-1]
    data["date"] = list(date_data)
    data["market_share"] = list(market_share)
    data["Degree_competition"] = list(Degree_competition)
    return data
# 热门属性
def Hot_attributes(cateid):
    print(cateid)
    # Hot_attributes_show(data, dtype)
    Hot_attributes_data = Hot_attribute_show(cateid, "cateid")
    title = Hot_attributes_data[::,2]
    title = set(title)
    data = {}
    for x in title:
        text = []
        for cow in Hot_attributes_data:
            if x == cow[2]:
                text.append({"value":cow[-1],"name":cow[4]})
        data[x] = text
    return data
# 市场分布
# 合并不足等后期优化
def Market_distribution(cateID, date):
    Shop_hotsearch_data = Shop_hotsearch_show(cateID)
    Shop_hotsale_data = Shop_hotsale_show(cateID)
    # print(Shop_hotsearch_data[0])
    # print(Shop_hotsale_data[0])
    # print(Shop_hotsearch_data.shape)
    # print(Shop_hotsale_data.shape)
    dates = date.split("-")
    year = dates[0]
    month = dates[1]
    form = []
    for cow in Shop_hotsale_data:
        for cow1 in Shop_hotsearch_data:
            if cow[4] == cow1[4] and cow[3] == cow1[3] and cow[3] == date:
                text = []
                text.append(int(cow[-2]))
                text.append(int(cow1[-3]))
                text.append(cow[4])
                text.append(float(cow[-1]))
                text.append(round(int(cow[-2])/((int(cow1[-3]) * float(cow[-1]))), 2))
                text.append(int(cow1[-2]))
                text.append(round(int(cow1[-2])/int(cow1[-3]), 4))
                form.append(text)
            else:
                pass
    data = np.array(form)
    # print(data.shape)
    max_Customer = max(data[::,4])
    mat = [{"max_Customer":max_Customer}, {"data":form}]
    # print(form)
    # print(max_Customer)
    # print(mat)
    return mat


