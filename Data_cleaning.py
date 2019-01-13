from addsql import *
import BI
import datetime
from dateutil.relativedelta import relativedelta
import time
# 行业概况
def Industry_profile_cleaning(cateid):
    Industry_data = Industry_composition_show(cateid)
    Subindustry_data = Subindustry_Distribution_show(cateid)
    # print(Industry_data)
    # print(Subindustry_data)
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
    Hot_attributes_data = Hot_attributes_show(cateid, "cateid")
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



