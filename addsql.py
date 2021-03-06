import datetime
import numpy as np
from flask import Flask, render_template, request, make_response, redirect, Response,session
import BI
from flask_sqlalchemy import SQLAlchemy
from sqlalchemy import and_,or_,not_
import pymysql
import json

# from urllib.parse import quote
# from urllib import request,parse
np.set_printoptions(suppress=True)
pymysql.install_as_MySQLdb()
from pandas import DataFrame
app = Flask(__name__)
app.config['SQLALCHEMY_DATABASE_URI']="mysql://root:123456@localhost/bi"
app.config['SQLALCHEMY_COMMIT_ON_TEARDOWN']=True
app.config['SECRET_KEY']="SASDAS"
db = SQLAlchemy(app)
# 行业构成
class Industry_composition(db.Model):
    __tablename__ = 'industry_composition'
    id = db.Column(db.Integer, primary_key=True)
    cateID = db.Column(db.String(40))
    Industry_composition = db.Column(db.String(40))
    date = db.Column(db.String(40))
    cateName = db.Column(db.String(40))
    tradeIndex = db.Column(db.String(40))
    tradeGrowthRange = db.Column(db.String(40))
    payAmtParentCateRate = db.Column(db.String(40))
    payCntParentCateRate = db.Column(db.String(40))
    Payment_amount = db.Column(db.String(40))
# #子行业分布表Subindustry_Distribution
class Subindustry_Distribution(db.Model):
    __tablename__ = 'subindustry_distribution'
    id = db.Column(db.Integer, primary_key=True)
    cateID = db.Column(db.String(40))
    Data_module = db.Column(db.String(40))
    date = db.Column(db.String(40))
    cateName = db.Column(db.String(40))
    slrCnt = db.Column(db.String(40))
    parentCateSlrRate = db.Column(db.String(40))
    tradeSlrCnt = db.Column(db.String(40))
    parentCateTradeSlrCntRate = db.Column(db.String(40))
# # #高流量店铺排行
class Shop_hotsearch(db.Model):
    __tablename__ = 'shop_hotsearch'
    id = db.Column(db.Integer, primary_key=True)
    cateID = db.Column(db.String(40))
    Data_module = db.Column(db.String(40))
    data_type = db.Column(db.String(40))
    date = db.Column(db.String(40))
    shop_title = db.Column(db.String(40))
    cateRankId = db.Column(db.String(40))
    userId = db.Column(db.String(40))
    shopUrl = db.Column(db.String(40))
    b2CShop = db.Column(db.String(40))
    uvIndex = db.Column(db.String(40))
    seIpvUvHits = db.Column(db.String(40))
    tradeIndex = db.Column(db.String(40))
    Search = db.Column(db.String(40))
    Payment_amount = db.Column(db.String(40))
    Visitor = db.Column(db.String(40))
# # #高交易店铺排行表
class Shop_hotsale(db.Model):
    __tablename__ = 'shop_hotsale'
    id = db.Column(db.Integer, primary_key=True)
    cateID = db.Column(db.String(40))
    Data_module = db.Column(db.String(40))
    data_type = db.Column(db.String(40))
    date = db.Column(db.String(40))
    shop_title = db.Column(db.String(40))
    cateRankId = db.Column(db.String(40))
    userId = db.Column(db.String(40))
    shopUrl = db.Column(db.String(40))
    b2CShop = db.Column(db.String(40))
    tradeIndex = db.Column(db.String(40))
    payRateIndex = db.Column(db.String(40))
    Conversion_rate = db.Column(db.String(40))
    Payment_amount = db.Column(db.String(40))
# # #高流量商品排行
class Item_hotsearch(db.Model):
    __tablename__ = 'item_hotsearch'
    id = db.Column(db.Integer, primary_key=True)
    cateID = db.Column(db.String(40))
    Data_module = db.Column(db.String(40))
    data_type = db.Column(db.String(40))
    date = db.Column(db.String(40))
    item_title = db.Column(db.String(40))
    itemId = db.Column(db.String(40))
    detailUrl = db.Column(db.String(40))
    cateRankId = db.Column(db.String(40))
    shop_title = db.Column(db.String(40))
    userId = db.Column(db.String(40))
    shopUrl = db.Column(db.String(40))
    uvIndex = db.Column(db.String(40))
    seIpvUvHits = db.Column(db.String(40))
    tradeIndex = db.Column(db.String(40))
    Search = db.Column(db.String(40))
    Payment_amount = db.Column(db.String(40))
    Visitor = db.Column(db.String(40))
# # #高交易商品排行
class Item_hotsale(db.Model):
    __tablename__ = 'item_hotsale'
    id = db.Column(db.Integer, primary_key=True)
    cateID = db.Column(db.String(40))
    Data_module = db.Column(db.String(40))
    data_type = db.Column(db.String(40))
    date = db.Column(db.String(40))
    item_title = db.Column(db.String(40))
    itemId = db.Column(db.String(40))
    detailUrl = db.Column(db.String(40))
    cateRankId = db.Column(db.String(40))
    shop_title = db.Column(db.String(40))
    userId = db.Column(db.String(40))
    shopUrl = db.Column(db.String(40))
    payRateIndex = db.Column(db.String(40))
    tradeIndex = db.Column(db.String(40))
    Conversion_rate = db.Column(db.String(40))
    Payment_amount = db.Column(db.String(40))
# # #高意向商品排行表
class item_hotpurpose(db.Model):
    __tablename__ = 'item_hotpurpose'
    id = db.Column(db.Integer, primary_key=True)
    cateID = db.Column(db.String(40))
    Data_module = db.Column(db.String(40))
    data_type = db.Column(db.String(40))
    date = db.Column(db.String(40))
    item_title = db.Column(db.String(40))
    itemId = db.Column(db.String(40))
    detailUrl = db.Column(db.String(40))
    cateRankId = db.Column(db.String(40))
    shop_title = db.Column(db.String(40))
    userId = db.Column(db.String(40))
    shopUrl = db.Column(db.String(40))
    cltHits = db.Column(db.String(40))
    cartHits = db.Column(db.String(40))
    tradeIndex = db.Column(db.String(40))
    Collection = db.Column(db.String(40))
    Shopping_Cart = db.Column(db.String(40))
    Payment_amount = db.Column(db.String(40))
# # #高流量品牌排行表
class Brand_hotsearch(db.Model):
    __tablename__ = 'brand_hotsearch'
    id = db.Column(db.Integer, primary_key=True)
    cateID = db.Column(db.String(40))
    Data_module = db.Column(db.String(40))
    data_type = db.Column(db.String(40))
    date = db.Column(db.String(40))
    brandName = db.Column(db.String(40))
    brandId = db.Column(db.String(40))
    cateRankId = db.Column(db.String(40))
    uvIndex = db.Column(db.String(40))
    seIpvUvHits = db.Column(db.String(40))
    tradeIndex = db.Column(db.String(40))
    Visitor = db.Column(db.String(40))
    Search = db.Column(db.String(40))
    Payment_amount = db.Column(db.String(40))
# # #高交易品牌排行表
class Brand_hotsale(db.Model):
    __tablename__ = 'brand_hotsale'
    id = db.Column(db.Integer, primary_key=True)
    cateID = db.Column(db.String(40))
    Data_module = db.Column(db.String(40))
    data_type = db.Column(db.String(40))
    date = db.Column(db.String(40))
    brandName = db.Column(db.String(40))
    brandId = db.Column(db.String(40))
    cateRankId = db.Column(db.String(40))
    payRateIndex = db.Column(db.String(40))
    tradeIndex = db.Column(db.String(40))
    Conversion_rate = db.Column(db.String(40))
    Payment_amount = db.Column(db.String(40))

# # #搜索词排行表
class Search_terms(db.Model):
    __tablename__ = 'search_terms'
    id = db.Column(db.Integer, primary_key=True)
    cateID = db.Column(db.String(40))
    Data_module = db.Column(db.String(40))
    data_type = db.Column(db.String(40))
    date = db.Column(db.String(40))
    searchWord = db.Column(db.String(40))
    hotSearchRank = db.Column(db.String(40))
    seIpvUvHits = db.Column(db.String(40))
    clickHits = db.Column(db.String(40))
    clickRate = db.Column(db.String(40))
    payRate = db.Column(db.String(40))
    p4pRefPrice = db.Column(db.String(40))
    tmClickRate = db.Column(db.String(40))
    search = db.Column(db.String(40))
    click = db.Column(db.String(40))
# # #品牌词排行表
class Brand_Word(db.Model):
    __tablename__ = 'brand_Word'
    id = db.Column(db.Integer, primary_key=True)
    cateID = db.Column(db.String(40))
    Data_module = db.Column(db.String(40))
    data_type = db.Column(db.String(40))
    date = db.Column(db.String(40))
    searchWord = db.Column(db.String(40))
    hotSearchRank = db.Column(db.String(40))
    relSeWordCnt = db.Column(db.String(40))
    avgWordSeIpvUvHits = db.Column(db.String(40))
    avgWordClickHits = db.Column(db.String(40))
    p4pRefPrice = db.Column(db.String(40))
    search = db.Column(db.String(40))
    click = db.Column(db.String(40))
# #
# # #修饰词排行表
class Modifiers_Word(db.Model):
    __tablename__ = 'modifiers_Word'
    id = db.Column(db.Integer, primary_key=True)
    cateID = db.Column(db.String(40))
    Data_module = db.Column(db.String(40))
    data_type = db.Column(db.String(40))
    date = db.Column(db.String(40))
    searchWord = db.Column(db.String(40))
    hotSearchRank = db.Column(db.String(40))
    relSeWordCnt = db.Column(db.String(40))
    avgWordSeIpvUvHits = db.Column(db.String(40))
    avgWordClickHits = db.Column(db.String(40))
    p4pRefPrice = db.Column(db.String(40))
    search = db.Column(db.String(40))
    click = db.Column(db.String(40))
# # #核心词排行
class Core_word(db.Model):
    __tablename__ = 'core_word'
    id = db.Column(db.Integer,primary_key=True)
    cateID = db.Column(db.String(40))
    Data_module = db.Column(db.String(40))
    data_type = db.Column(db.String(40))
    date = db.Column(db.String(40))
    searchWord = db.Column(db.String(40))
    hotSearchRank = db.Column(db.String(40))
    relSeWordCnt = db.Column(db.String(40))
    avgWordSeIpvUvHits = db.Column(db.String(40))
    avgWordClickHits = db.Column(db.String(40))
    p4pRefPrice = db.Column(db.String(40))
    search = db.Column(db.String(40))
    click = db.Column(db.String(40))
# # #搜索分析表
class Search_analysis30(db.Model):
    __tablename__ = 'search_analysis30'
    id = db.Column(db.Integer,primary_key=True)
    Data_module = db.Column(db.String(40))
    date = db.Column(db.String(40))
    word = db.Column(db.String(40))
    keyword = db.Column(db.String(40))
    seIpvUvHits = db.Column(db.String(40))
    spvRatio = db.Column(db.String(40))
    sePvIndex = db.Column(db.String(40))
    clickRate = db.Column(db.String(40))
    clickHits = db.Column(db.String(40))
    clickHot = db.Column(db.String(40))
    tradeIndex = db.Column(db.String(40))
    payConvRate = db.Column(db.String(40))
    onlineGoodsCnt = db.Column(db.String(40))
    tmClickRatio = db.Column(db.String(40))
    p4pAmt = db.Column(db.String(40))
    Search_frequency = db.Column(db.String(40))
    click_Popularity = db.Column(db.String(40))
    click_Number = db.Column(db.String(40))
    click_Popularity = db.Column(db.String(40))
    Payment_amount = db.Column(db.String(40))
# # #地域分析表
class Geographical_distribution(db.Model):
    __tablename__ = 'geographical_distribution'
    id = db.Column(db.Integer,primary_key=True)
    cateID = db.Column(db.String(40))
    Data_module = db.Column(db.String(40))
    date = db.Column(db.String(40))
    areaName = db.Column(db.String(40))
    slrCnt = db.Column(db.String(40))
    parentCateSlrRate = db.Column(db.String(40))
    tradeSlrCnt = db.Column(db.String(40))
    parentCateTradeSlrCntRate = db.Column(db.String(40))
# # #竞品入店来源表
class Source_of_entry_product(db.Model):
    __tablename__ = 'source_of_entry_product'
    id = db.Column(db.Integer,primary_key=True)
    cateID = db.Column(db.String(40))
    Data_module = db.Column(db.String(40))
    date = db.Column(db.String(40))
    itemID = db.Column(db.String(40))
    pageName = db.Column(db.String(40))
    rivalItem1PayByrCntIndex = db.Column(db.String(40))
    uv = db.Column(db.String(40))
    rivalItem1PayRateIndex = db.Column(db.String(40))
    rivalItem1TradeIndex = db.Column(db.String(40))
# # #竞品关键词表
# #=======================
class Keyword_competition(db.Model):
    __tablename__ = 'keyword_competition'
    id = db.Column(db.Integer, primary_key=True)
    cateID = db.Column(db.String(40))
    Data_module = db.Column(db.String(40))
    item_ID = db.Column(db.String(40))
    keyword = db.Column(db.String(40))
    type_ = db.Column(db.String(40))
    real = db.Column(db.String(40))
# # #竞店热销商品构成表
# #===========================================
class Commodity_composition(db.Model):
    __tablename__ = 'commodity_composition'
    id = db.Column(db.Integer, primary_key=True)
    cateID = db.Column(db.String(40))
    Data_module = db.Column(db.String(40))
    date = db.Column(db.String(40))
    shop_ID = db.Column(db.String(40))
    item_title = db.Column(db.String(40))
    item_detailUrl = db.Column(db.String(40))
    discountPrice = db.Column(db.String(40))
    tradeIndex = db.Column(db.String(40))
    tradeIndex_cycleCrc = db.Column(db.String(40))
    Payment_amount = db.Column(db.String(40))
# # #竞店流量商品构成表
class Flow_Commodity(db.Model):
    __tablename__ = 'flow_Commodity'
    id = db.Column(db.Integer, primary_key=True)
    cateID = db.Column(db.String(40))
    Data_module = db.Column(db.String(40))
    date = db.Column(db.String(40))
    shop_ID = db.Column(db.String(40))
    item_title = db.Column(db.String(40))
    item_detailUrl = db.Column(db.String(40))
    discountPrice = db.Column(db.String(40))
    uv = db.Column(db.String(40))
    uv_cycleCrc = db.Column(db.String(40))
    Visitor = db.Column(db.String(40))
# 竞店类目构成表
class Category_of_competition(db.Model):
    __tablename__ = 'category_of_competition1'
    id = db.Column(db.Integer, primary_key=True)
    cateID = db.Column(db.String(40))
    Data_module = db.Column(db.String(40))
    date = db.Column(db.String(40))
    shop_ID = db.Column(db.String(40))
    cateLevel1Name = db.Column(db.String(40))
    cate_Id = db.Column(db.String(40))
    cateName = db.Column(db.String(40))
    cateLevel1Id = db.Column(db.String(40))
    payAmtRatio = db.Column(db.String(40))


# # #竞店价格带构成表
class Price_band(db.Model):
    __tablename__ = 'price_band'
    id = db.Column(db.Integer, primary_key=True)
    cateID = db.Column(db.String(40))
    Data_module = db.Column(db.String(40))
    date = db.Column(db.String(40))
    shop_ID = db.Column(db.String(40))
    priceSegName = db.Column(db.String(40))
    payAmtRatio = db.Column(db.String(40))
# # #竞店入店来源表
class Trend_of_competition_product(db.Model):
    __tablename__ = 'trend_of_competition_product'
    id = db.Column(db.Integer, primary_key=True)
    cateID = db.Column(db.String(40))
    Data_module = db.Column(db.String(40))
    date = db.Column(db.String(40))
    shop_ID = db.Column(db.String(40))
    priceSegName = db.Column(db.String(40))
    rivalShop1TradeIndex = db.Column(db.String(40))
    rivalShop1UvIndex = db.Column(db.String(40))
    rivalShop1PayByrCntIndex = db.Column(db.String(40))
    rivalShop1PayRateIndex = db.Column(db.String(40))
    Payment_amount = db.Column(db.String(40))
    Visitor = db.Column(db.String(40))
    payments_Number = db.Column(db.String(40))
    Paymen_Conversion_Rate = db.Column(db.String(40))
    Customer_unit_price = db.Column(db.String(40))
# # #品牌热销店铺表
class Compete_Brand_Tradeshop_top(db.Model):
    __tablename__ = 'compete_Brand_Tradeshop_top'
    id = db.Column(db.Integer, primary_key=True)
    cateID = db.Column(db.String(40))
    Data_module = db.Column(db.String(40))
    date = db.Column(db.String(40))
    brand_id = db.Column(db.String(40))
    shop_title = db.Column(db.String(40))
    shopUrl = db.Column(db.String(40))
    userId = db.Column(db.String(40))
    tradeIndex = db.Column(db.String(40))
    payRateIndex = db.Column(db.String(40))
    tradeGrowthRange = db.Column(db.String(40))
    Conversion_rate = db.Column(db.String(40))
    Payment_amount = db.Column(db.String(40))
# # #品牌流量店铺表
class Compete_Brand_flowshop_top(db.Model):
    __tablename__ = 'compete_Brand_flowshop_top'
    id = db.Column(db.Integer, primary_key=True)
    cateID = db.Column(db.String(40))
    Data_module = db.Column(db.String(40))
    date = db.Column(db.String(40))
    brand_id = db.Column(db.String(40))
    shop_title = db.Column(db.String(40))
    shopUrl = db.Column(db.String(40))
    userId = db.Column(db.String(40))
    seIpvUvHits = db.Column(db.String(40))
    uvIndex = db.Column(db.String(40))
    tradeIndex = db.Column(db.String(40))
    Search_number = db.Column(db.String(40))
    Visitor = db.Column(db.String(40))
    Sale = db.Column(db.String(40))
# # #品牌热销商品表
class Competitive_Brand_Tradeshop_Commodities(db.Model):
    __tablename__ = 'competitive_Brand_Tradeshop_Commodities'
    id = db.Column(db.Integer, primary_key=True)
    cateID = db.Column(db.String(40))
    Data_module = db.Column(db.String(40))
    date = db.Column(db.String(40))
    brand_id = db.Column(db.String(40))
    item_title = db.Column(db.String(40))
    shop_title = db.Column(db.String(40))
    userId = db.Column(db.String(40))
    item_detailUrl = db.Column(db.String(40))
    itemId = db.Column(db.String(40))
    tradeIndex = db.Column(db.String(40))
    payRateIndex = db.Column(db.String(40))
    tradeGrowthRange = db.Column(db.String(40))
    Conversion_rate = db.Column(db.String(40))
    Payment_amount = db.Column(db.String(40))
# #品牌流量商品表
class Competitive_Brand_Flow_Commodities(db.Model):
    __tablename__ = 'competitive_Brand_Flow_Commodities'
    id = db.Column(db.Integer, primary_key=True)
    cateID = db.Column(db.String(40))
    Data_module = db.Column(db.String(40))
    date = db.Column(db.String(40))
    brand_id = db.Column(db.String(40))
    item_title = db.Column(db.String(40))
    shop_title = db.Column(db.String(40))
    userId = db.Column(db.String(40))
    item_detailUrl = db.Column(db.String(40))
    itemId = db.Column(db.String(40))
    uvIndex = db.Column(db.String(40))
    seIpvUvHits = db.Column(db.String(40))
    tradeIndex = db.Column(db.String(40))
    Search_number = db.Column(db.String(40))
    Visitor = db.Column(db.String(40))
    Sale = db.Column(db.String(40))
# # #品牌类目构成表
class Competitive_Brand_Category_Composition(db.Model):
    __tablename__ = 'competitive_Brand_Category_Composition'
    id = db.Column(db.Integer, primary_key=True)
    cateID = db.Column(db.String(40))
    Data_module = db.Column(db.String(40))
    date = db.Column(db.String(40))
    brand_id = db.Column(db.String(40))
    brandIds = db.Column(db.String(40))
    payAmt_ratio = db.Column(db.String(40))
    cateName = db.Column(db.String(40))
    uv_ratio = db.Column(db.String(40))
    payItemCnt = db.Column(db.String(40))
    paySlrCnt = db.Column(db.String(40))
# # #品牌年龄客群表
class Brand_Age_Clients(db.Model):
    __tablename__ = 'brand_Age_Clients'
    id = db.Column(db.Integer, primary_key=True)
    cateID = db.Column(db.String(40))
    Data_module = db.Column(db.String(40))
    data_type = db.Column(db.String(40))
    date = db.Column(db.String(40))
    brand_id = db.Column(db.String(40))
    Customer_index = db.Column(db.String(40))
    name = db.Column(db.String(40))
    text = db.Column(db.String(40))
    payments = db.Column(db.String(40))
# # #品牌年龄客群占比表
class Brand_Age_Clients_Proportion(db.Model):
    __tablename__ = 'brand_Age_Clients_Proportion'
    id = db.Column(db.Integer, primary_key=True)
    cateID = db.Column(db.String(40))
    Data_module = db.Column(db.String(40))
    data_type = db.Column(db.String(40))
    date = db.Column(db.String(40))
    brand_id = db.Column(db.String(40))
    Customer_index = db.Column(db.String(40))
    name = db.Column(db.String(40))
    text = db.Column(db.String(40))
# # #品牌年龄交易指数表
class Brand_Age_Trading_index(db.Model):
    __tablename__ = 'brand_Age_Trading_index'
    id = db.Column(db.Integer, primary_key=True)
    cateID = db.Column(db.String(40))
    Data_module = db.Column(db.String(40))
    data_type = db.Column(db.String(40))
    date = db.Column(db.String(40))
    brand_id = db.Column(db.String(40))
    Customer_index = db.Column(db.String(40))
    name = db.Column(db.String(40))
    text = db.Column(db.String(40))
    transaction = db.Column(db.String(40))
# # #品牌年龄支付转化率表
class Brand_Age_Payment_Conversion_Rate(db.Model):
    __tablename__ = 'brand_Age_Payment_Conversion_Rate'
    id = db.Column(db.Integer, primary_key=True)
    cateID = db.Column(db.String(40))
    Data_module = db.Column(db.String(40))
    data_type = db.Column(db.String(40))
    date = db.Column(db.String(40))
    brand_id = db.Column(db.String(40))
    Customer_index = db.Column(db.String(40))
    name = db.Column(db.String(40))
    text = db.Column(db.String(40))
    Conversion_Rate = db.Column(db.String(40))
# # # 品牌性别客群指数表

class Brand_Gender1_Clients(db.Model):
    __tablename__ = 'brand_Gender_Clients'
    id = db.Column(db.Integer, primary_key=True)
    cateID = db.Column(db.String(40))
    Data_module = db.Column(db.String(40))
    data_type = db.Column(db.String(40))
    date = db.Column(db.String(40))
    brand_id = db.Column(db.String(40))
    Customer_index = db.Column(db.String(40))
    name = db.Column(db.String(40))
    text = db.Column(db.String(40))
    payments = db.Column(db.String(40))
# # # 品牌性别客群占比
class Brand_Gender_Clients_Proportion(db.Model):
    __tablename__ = 'brand_Gender_Clients_Proportion'
    id = db.Column(db.Integer, primary_key=True)
    cateID = db.Column(db.String(40))
    Data_module = db.Column(db.String(40))
    data_type = db.Column(db.String(40))
    date = db.Column(db.String(40))
    brand_id = db.Column(db.String(40))
    Customer_index = db.Column(db.String(40))
    name = db.Column(db.String(40))
    text = db.Column(db.String(40))
# # #品牌性别交易指数表
# #========================================
#
class Brand_Gender_Clients_Proportion_one(db.Model):
    __tablename__ = 'brand_Gender_Clients_Proportion_one'
    id = db.Column(db.Integer, primary_key=True)
    cateID = db.Column(db.String(40))
    Data_module_one = db.Column(db.Integer)
    data_type_one = db.Column(db.Integer)
    date_one = db.Column(db.Integer)
    brand_id_one = db.Column(db.Integer)
    Customer_index1_one = db.Column(db.Integer)
    name_one = db.Column(db.Integer)
    text_one = db.Column(db.Integer)


# # #品牌性别支付转化率表
# #
class Brand_Gender_Clients_two(db.Model):
    __tablename__ = 'brand_Gender_Clients_two'
    id = db.Column(db.Integer, primary_key=True)
    cateID = db.Column(db.String(40))
    Data_module = db.Column(db.String(40))
    data_type = db.Column(db.String(40))
    date = db.Column(db.String(40))
    brand_id = db.Column(db.String(40))
    Customer_index = db.Column(db.String(40))
    name = db.Column(db.String(40))
    text = db.Column(db.String(40))
    Conversion_Rate = db.Column(db.String(40))

# # #热门属性表
class Hot_attributes(db.Model):
    __tablename__ = 'hot_attributes'
    id = db.Column(db.Integer, primary_key=True)
    cateID = db.Column(db.String(40))
    Data_module = db.Column(db.String(40))
    data_type = db.Column(db.String(40))
    date = db.Column(db.String(40))
    attribute_name = db.Column(db.String(40))
    payments_piece = db.Column(db.String(40))
    tradeIndex = db.Column(db.String(40))
    Sale = db.Column(db.String(40))
db.create_all()

"""查看函数"""
# 行业构成
def Industry_composition_show(data,dtype):
    if dtype == "cateid":
        data = Industry_composition.query.filter_by(cateID=data).all()
    elif dtype == "cateName":
        data = Industry_composition.query.filter_by(cateName=data).all()
    form = []
    for x in data:
        text = []
        text.append(x.cateID)
        text.append(x.Industry_composition)
        text.append(x.date)
        text.append(x.cateName)
        text.append(x.tradeIndex)
        text.append(x.tradeGrowthRange)
        text.append(x.payAmtParentCateRate)
        text.append(x.payCntParentCateRate)
        text.append(x.Payment_amount)
        form.append(text)
    form = np.array(form)
    form = np.array(list(set([tuple(t) for t in form])))
    return form
# 子行业构成
def Subindustry_Distribution_show(data,dtype):
    if dtype == "cateid":
        data = Subindustry_Distribution.query.filter_by(cateID=data).all()
    elif dtype == "cateName":
        data = Subindustry_Distribution.query.filter_by(cateName=data).all()
    form = []
    for x in data:
        # print(1)
        text = []
        text.append(x.cateID)
        text.append(x.Data_module)
        text.append(x.date)
        text.append(x.cateName)
        text.append(x.slrCnt)
        text.append(x.parentCateSlrRate)
        text.append(x.tradeSlrCnt)
        text.append(x.parentCateTradeSlrCntRate)
        form.append(text)
    form = np.array(form)
    form = np.array(list(set([tuple(t) for t in form])))
    return form
# 高流量店铺排行
def Shop_hotsearch_show(cateID):
    data = Shop_hotsearch.query.filter_by(cateID=cateID).all()
    form = []
    for x in data:
        text = []
        text.append(x.cateID)
        text.append(x.Data_module)
        text.append(x.data_type)
        text.append(x.date)
        text.append(x.shop_title)
        text.append(x.cateRankId)
        text.append(x.userId)
        text.append(x.shopUrl)
        text.append(x.b2CShop)
        text.append(x.uvIndex)
        text.append(x.seIpvUvHits)
        text.append(x.tradeIndex)
        text.append(x.Search)
        text.append(x.Payment_amount)
        text.append(x.Visitor)
        form.append(text)
    form = np.array(form)
    return form
# 高交易店铺排行
def Shop_hotsale_show(cateID):
    data = Shop_hotsale.query.filter_by(cateID=cateID).all()
    form = []
    for x in data:
        text = []
        text.append(x.cateID)
        text.append(x.Data_module)
        text.append(x.data_type)
        text.append(x.date)
        text.append(x.shop_title)
        text.append(x.cateRankId)
        text.append(x.userId)
        text.append(x.shopUrl)
        text.append(x.b2CShop)
        text.append(x.tradeIndex)
        text.append(x.payRateIndex)
        text.append(x.Conversion_rate)
        text.append(x.Payment_amount)
        form.append(text)
    form = np.array(form)
    return form


def Item_hotsearch_show(cateID):
    data = Item_hotsearch.query.filter_by(cateID=cateID).all()
    form = []
    for x in data:
        text = []
        text.append(x.cateID)
        text.append(x.Data_modul)
        text.append(x.data_type)
        text.append(x.date)
        text.append(x.item_title)
        text.append(x.itemId)
        text.append(x.detailUrl)
        text.append(x.cateRankId)
        text.append(x.shop_title)
        text.append(x.userId)
        text.append(x.shopUrl)
        text.append(x.uvIndex)
        text.append(x.seIpvUvHits)
        text.append(x.tradeIndex)
        text.append(x.Search)
        text.append(x.Payment_amount)
        text.append(x.Visitor)
        form.append(text)
    form = np.array(form)
    return form
# 高交易商品排行
def Item_hotsale_show():
    data = Item_hotsale.query.all()
    form = []
    for x in data:
        text = []
        text.append(x.cateID)
        text.append(x.Data_module)
        text.append(x.data_type)
        text.append(x.date)
        text.append(x.item_title)
        text.append(x.itemId)
        text.append(x.detailUrl)
        text.append(x.cateRankId)
        text.append(x.shop_title)
        text.append(x.userId)
        text.append(x.shopUrl)
        text.append(x.payRateIndex)
        text.append(x.tradeIndex)
        text.append(x.Conversion_rate)
        text.append(x.Payment_amount)
        form.append(text)
    form = np.array(form)
    return form
# 高流量品牌排行
def Brand_hotsearch_show():
    data = Brand_hotsale.query.all()
    form = []
    for x in data:
        text = []
        text.append(x.cateID)
        text.append(x.Data_module)
        text.append(x.data_type)
        text.append(x.date)
        text.append(x.brandName)
        text.append(x.brandId)
        text.append(x.cateRankId)
        text.append(x.uvIndex)
        text.append(x.seIpvUvHits)
        text.append(x.tradeIndex)
        text.append(x.Visitor)
        text.append(x.Search)
        text.append(x.Payment_amount)
        form.append(text)
    form = np.array(form)
    return form
# 高交易品牌排行
def Brand_hotsale_show():
    data = Brand_hotsale.query.all()
    form = []
    for x in data:
        text = []
        text.append(x.cateID)
        text.append(x.Data_module)
        text.append(x.data_type)
        text.append(x.date)
        text.append(x.brandName)
        text.append(x.brandId)
        text.append(x.payRateIndex)
        text.append(x.tradeIndex)
        text.append(x.Conversion_rate)
        text.append(x.Payment_amount)
        form.append(text)
    form = np.array(form)
    return form
# 热门属性
def Hot_attribute_show(cateID,dtype):
    if dtype == "cateid":
        print(cateID)
        data = Hot_attributes.query.filter_by(cateID=cateID).all()
    form = []
    for x in data:
        text = []
        text.append(x.cateID)
        text.append(x.Data_module)
        text.append(x.data_type)
        text.append(x.date)
        text.append(x.attribute_name)
        text.append(x.payments_piece)
        text.append(x.tradeIndex)
        text.append(x.Sale)
        form.append(text)
    form = np.array(form)
    return form

"""增加函数"""
# 行业构成
def Industry_composition_add(form):
    for cow in form:
        data = Industry_composition(cateID=cow[0], Industry_composition=cow[1],
                                    date=cow[2], cateName=cow[3], tradeIndex=cow[4], tradeGrowthRange=cow[5],
                                    payAmtParentCateRate=cow[6], payCntParentCateRate=cow[7], Payment_amount=cow[8])

        db.session.add(data)
    db.session.commit()
def Subindustry_Distribution_add(form):
    for cow in form:
        # print(cow)
        data = Subindustry_Distribution(cateID=cow[0], Data_module=cow[1],
                                    date=cow[2], cateName=cow[3],slrCnt=cow[4],
                                    parentCateSlrRate=cow[5], tradeSlrCnt=cow[6],
                                    parentCateTradeSlrCntRate=cow[7])
        db.session.add(data)
    db.session.commit()

# def Subindustry_Distribution_add(data):
#     def Industry_composition_if(data_cow):
#         stus = Industry_composition.query.filter(
#             and_(Industry_composition.cateID == str(data_cow[0]), Industry_composition.date == str(data_cow[2]),
#                  Industry_composition.cateName == str(data_cow[3])))
#         for x in stus:
#             return 1
#         return 0
#     for cow in data:
#         if Industry_composition_if(cow):
#             continue
#         else:
#             data_cow = Subindustry_Distribution(cateID=cow[0], Data_module=cow[1], date=cow[2], cateName=cow[3],slrCnt=cow[4], parentCateSlrRate=cow[5], tradeSlrCnt=cow[6],parentCateTradeSlrCntRate=cow[7])
#             db.session.add(data_cow)
#     db.session.commit()
# 高流量店铺排行
def shop_hotsearch_add(data):
    for cow in data:
        data_cow = Shop_hotsearch(cateID=cow[0], Data_module=cow[1],data_type=cow[2], date=cow[3],shop_title=cow[4], cateRankId=cow[5],userId=cow[6],shopUrl=cow[7],b2CShop=cow[8] ,uvIndex=cow[9],seIpvUvHits=cow[10],tradeIndex=cow[11],Search=cow[12],Payment_amount=cow[13],Visitor=cow[14])
        db.session.add(data_cow)
    db.session.commit()

#高交易店铺排行
def shop_hotsale_add(data):
    for cow in data:
        data_cow = Shop_hotsale(cateID=cow[0], Data_module=cow[1],data_type=cow[2], date=cow[3],shop_title=cow[4], cateRankId=cow[5],userId=cow[6],shopUrl=cow[7],b2CShop=cow[8] ,tradeIndex=cow[9],payRateIndex=cow[10],Conversion_rate=cow[11],Payment_amount=cow[12])
        db.session.add(data_cow)
    db.session.commit()

#高流量商品排行

def Item_hotsearch_add(data):
    for cow in data:
        data_cow = Item_hotsearch(cateID=cow[0], Data_module=cow[1],data_type=cow[2], date=cow[3],item_title=cow[4],
                                  itemId=cow[5],detailUrl=cow[6],cateRankId=cow[7],shop_title=cow[8],userId=cow[9],
                                  shopUrl=cow[10],uvIndex=cow[11],seIpvUvHits=cow[12],tradeIndex=cow[13],
                                  Search=cow[14],Payment_amount=cow[15],Visitor=cow[16])
        db.session.add(data_cow)
    db.session.commit()

#高交易商品排行

def Item_hotsale_add(data):
    for cow in data:
        data_cow = Item_hotsale(cateID=cow[0], Data_module=cow[1],data_type=cow[2], date=cow[3],item_title=cow[4], itemId=cow[5],
                        detailUrl=cow[6],cateRankId=cow[7],shop_title=cow[8],userId=cow[9],
                        shopUrl=cow[10],payRateIndex=cow[11],tradeIndex=cow[12],Conversion_rate=cow[13],
                        Payment_amount=cow[14])
        db.session.add(data_cow)
    db.session.commit()

#高流量品牌排行
def Brand_hotsearch_add(data):
    for cow in data:
        data_show = Brand_hotsearch(cateID=cow[0], Data_module=cow[1],data_type=cow[2], date=cow[3],brandName=cow[4],
                                    brandId=cow[5],cateRankId=cow[6],uvIndex=cow[7],seIpvUvHits=cow[8],
                                    tradeIndex=cow[9],Visitor=cow[10],Search=cow[11],Payment_amount=cow[12])
        db.session.add(data_show)
    db.session.commit()
#====================================


#高交易品牌排行
def Brand_hotsale_add(data):
    for cow in data:
        data_show = Brand_hotsale(cateID=cow[0], Data_module=cow[1],data_type=cow[2], date=cow[3],item_title=cow[4],
                         itemId=cow[5],detailUrl=cow[6],cateRankId=cow[7],payRateIndex=cow[8],tradeIndex=cow[9],
                         Conversion_rate=cow[10],Payment_amount=cow[11])
        db.session.add(data_show)
    db.session.commit()

# 热门属性
def Hot_attributes_add(data):
    for cow in data:
        data_show = Hot_attributes(cateID=cow[0], Data_module=cow[1],data_type=cow[2],
                                  date=cow[3],attribute_name=cow[4],payments_piece=cow[5],
                                   tradeIndex=cow[6], Sale=cow[7])
        db.session.add(data_show)
    db.session.commit()
#搜索排行表
def Search_terms_add(data):
    for cow in data:
        data_show = Search_terms(cateID=cow[0], Data_module=cow[1],data_type=cow[2],
                                  date=cow[3],searchWord=cow[4], hotSearchRank=cow[5], seIpvUvHits=cow[6],clickHits=cow[7],clickRate=cow[8],
                                 payRate=cow[9],p4pRefPrice=[10],tmClickRate=cow[11],search=[12],click=cow[13])
        db.session.add(data_show)
    db.session.commit()
#品牌词排行
def Brand_Word_add(data):
    for cow in data:
        data_show = Brand_Word(cateID=cow[0], Data_module=cow[1],data_type=cow[2],
                                  date=cow[3],searchWord=cow[4], hotSearchRank=cow[5], relSeWordCnt=cow[6],avgWordSeIpvUvHits=cow[7],avgWordClickHits=cow[8],
                               p4pRefPrice=cow[9],search=[10],click=cow[11])
        db.session.add(data_show)
    db.session.commit()
#修饰词排行表   Modifiers_Word
def Modifiers_Word_add(data):
    for cow in data:
        data_show = Modifiers_Word(cateID=cow[0], Data_module=cow[1],data_type=cow[2],
                                  date=cow[3],searchWord=cow[4], hotSearchRank=cow[5], relSeWordCnt=cow[6],avgWordSeIpvUvHits=cow[7],avgWordClickHits=cow[8],
                               p4pRefPrice=cow[9],search=[10],click=cow[11])
        db.session.add(data_show)
    db.session.commit()
#核心词排行
def Core_word_add(data):
    for cow in data:
        data_show = Core_word(cateID=cow[0], Data_module=cow[1],data_type=cow[2],
                                  date=cow[3],searchWord=cow[4], hotSearchRank=cow[5], relSeWordCnt=cow[6],avgWordSeIpvUvHits=cow[7],avgWordClickHits=cow[8],
                               p4pRefPrice=cow[9],search=[10],click=cow[11])
        db.session.add(data_show)
    db.session.commit()
#搜索分析表  *****此表存在问题，需要确认
# def Search_analysis30_add(data):
#     for cow in data:
#         data_show = Search_analysis30(Data_module=cow[0], date=cow[1],word=cow[2],
#                                       keyword=cow[3],seIpvUvHits=cow[4], spvRatio=cow[5], sePvIndex=cow[6],clickRate=cow[7],clickHits=cow[8],
#                                       clickHot=cow[9],tradeIndex=[10],payConvRate=cow[11],
#                                       onlineGoodsCnt=cow[12],tmClickRatio=[13],p4pAmt=[14],
#                                       Search_frequency=[15],click_Popularity=[16],click_Number=[17],click_Popularity=[18],click_Number=[19],Payment_amount=[20])
#         db.session.add(data_show)
#     db.session.commit()

#地域分析表
def Geographical_distribution_add(data):
    for cow in data:
        data_show = Geographical_distribution(cateID=cow[0], Data_module=cow[1],date=cow[2],
                                              areaName=cow[3],slrCnt=cow[4], parentCateSlrRate=cow[5], tradeSlrCnt=cow[6],parentCateTradeSlrCntRate=cow[7])
        db.session.add(data_show)
#竞品入店来源表
def Source_of_entry_product_add(data):
    for cow in data:
        data_show = Source_of_entry_product(cateID=cow[0], Data_module=cow[1], date=cow[2],
                                            itemID=cow[3], pageName=cow[4], rivalItem1PayByrCntIndex=cow[5], uv=cow[6],
                                            rivalItem1PayRateIndex=cow[7], rivalItem1TradeIndex=cow[8])
        db.session.add(data_show)
    db.session.commit()