from addsql import *
from Data_cleaning import *



#ZB
@app.route("/")
def index_view():
    return render_template("zB.html")

# 首页
@app.route("/index",methods=["POST","GET"])
def main_index():
    if request.method == "GET":
        return render_template("index.html")
    else:
        #框里的值
        data = request.form.get("shuju")
        print(data)
        #下拉框的值
        Choice = request.form.get("xiala")
        print(Choice)
        dic = []
        data = BI.Exponential_reduction(data,Choice)
        for x, y in zip(data,range(len(data))):
            text = {}
            text["encryption_index"] = x[0]
            text["True_value"] = x[1]
            dic.append(text)
        print(dic)
        jsonStr = json.dumps(dic)
        return jsonStr
# 一级功能类目采集选项

# @app.route("/Category_acquisition", methods=["POST", "GET"])
# def gn1():
#     if request.method == "GET":
#         return render_template("Category_acquisition.html")
#     else:
#         # 得到所有一级大盘类目数据
#         udata = request.form.get("text", "")
#         # print(udata)
#         IPS = BI.Collection_category_ID1(udata)
#         dic = {}
#
#         for x in IPS:
#             dic[x] = 0
#         ip = "https://sycm.taobao.com/mc/common/getShopCate.json?leaf=true&edition=std,pro,vip&_=1544781219715&token="
#         return render_template("Category_acquisition.html", l=dic, lianjie=ip)
#

# 提取类目采集框内值
# @app.route("/gn2", methods=["POST"])
# def gn2():
#     l = []
#     mat = []
#     data = request.form.get("text2")
#     l.append(data)
#     data1 = request.form.get("text3")
#     l.append(data1)
#     data2 = request.form.get("text4")
#     l.append(data2)
#     for x in l:
#         if x != "":
#             mat.append(x)
#     mat = BI.Merge_cateid2(mat)
#     data = request.form.get("text5")
#     cate_name,cateid = BI.Category_collection(data, mat)
#
#     for x in cateid:
#         cate_id_add_sql(x[0],int(x[1]))
#     for y in cate_name:
#         cate_name_add_sql(y[0],y[1],y[2])
#
#     return render_template("Category_acquisition.html")
#行业构成
@app.route("/Market_cquisition", methods=["POST","GET"])
def gn3():
    if request.method == "GET":
        return render_template("Market_cquisition.html")
    else:
        try:
            cateid = request.form.get("cateId")
            Industry_type = request.form.get("Industry_type")
            IPS = BI.Industry_market(cateid, Industry_type)
            # print(IPS)
            ips = list(IPS.values())
            dates = list(IPS.keys())
            dic = {}
            if request.form.get("data1") or request.form.get("data2") or request.form.get("data3") or request.form.get("data4") or request.form.get("data5") or request.form.get("data6") or request.form.get("data7") or request.form.get("data8") or request.form.get("data9") or request.form.get("data10") or request.form.get("data11") or request.form.get("data12"):
                for x in range(1,13):
                    Industry_type = request.form.get("Industry_type")
                    cateid = request.form.get("cateId")
                    time = request.form.get("time" + str(x))
                    data = request.form.get("data" + str(x))
                    if data != "":
                        dic[time]= data
                for x in dic:
                    if Industry_type == "行业交易构成":
                        date = x
                        data = dic[x]
                        form = BI.Industry_composition_Decode(date, data, cateid)
                        Industry_composition_add(form)
                    elif Industry_type == "卖家分布":
                        date = x
                        data = dic[x]
                        form = BI.seller_composition_Decode(date,data,cateid)
                        Subindustry_Distribution_add(form)
        except:
            return render_template("404.html")
        return render_template("Market_cquisition.html",ips=IPS,dates=dates,cateid=cateid,Industry_type=Industry_type)
#市场排行
@app.route("/The_market_was",methods=["POST","GET"])
def hn_show():
    if request.method == "GET":
        return render_template("The_market_was.html")
    else:
        try:
            cateid = request.form.get("cateId")
            Industry_type = request.form.get("Industry_type")
            Industry_type2 = request.form.get("Industry_type2")
            if Industry_type == "商品":
                Industry_type = "item"
                if Industry_type2 == "高交易":
                    Industry_type2 = "hotsale"
                elif Industry_type2 == "高流量":
                    Industry_type2 = "hotsearch"
                elif Industry_type2 == "高意向":
                    Industry_type2 = "hotpurpose"
            elif Industry_type == "店铺":
                Industry_type = "shop"
                if Industry_type2 == "高交易":
                    Industry_type2 = "hotsale"
                elif Industry_type2 == "高流量":
                    Industry_type2 = "hotsearch"
            elif Industry_type == "品牌":
                Industry_type = "brand"
                if Industry_type2 == "高交易":
                    Industry_type2 = "hotsale"
                elif Industry_type2 == "高流量":
                    Industry_type2 = "hotsearch"
            IPS = BI.Store_ranking(cateid,Industry_type2,Industry_type)
            dic = {}
            if request.form.get("data1") or request.form.get("data2") or request.form.get("data3") or request.form.get("data4") or request.form.get("data5") or request.form.get("data6") or request.form.get("data7") or request.form.get("data8") or request.form.get("data9") or request.form.get("data10") or request.form.get("data11") or request.form.get("data12"):
                for x in range(1,13):
                    Industry_type = request.form.get("Industry_type")
                    cateid = request.form.get("cateId")
                    Industry_type2 = request.form.get("Industry_type2")
                    time = request.form.get("time" + str(x))
                    data = request.form.get("data" + str(x))
                    if data != "":
                        dic[time]= data

                mat = []
                for x in dic:
                    date = x
                    data = dic[x]
                    form = BI.Industry_ranking_Data_decoding(date,cateid,data,Industry_type,Industry_type2)
                    mat.append(form)
                form_start = mat[0]

                if len(mat) > 1:
                    for form in mat[1:]:
                        form_start = np.vstack((form_start,form))
        except:
            return render_template("Error.html")

        return render_template("The_market_was.html",ips=IPS,dates=dates,cateid=cateid,Industry_type=Industry_type,Industry_type2=Industry_type2)

#下拉
@app.route("/xl_qz",methods=["POST","GET"])
def xiala_views():
    if request.method=="POST":
        data1 = request.form.get('data1')
        print(data1)
        if data1 == "店铺":
            str = "<option>高交易</option><option>高流量</option>"
            return str
        elif data1 =="品牌":
            str = "<option>高交易</option><option>高流量</option>"
            return str
        elif data1 == "商品":
            str = " <option>高交易</option><option>高流量</option><option>高意向</option>"
            return str

#热门属性
@app.route("/Attribute",methods=["GET","POST"])
def attribute_views():
    if request.method=="GET":
        return render_template("Attribute.html")
    else:
        try:
            attribute_ip = request.form.get("data1")
            data = request.form.get("data2")
            data = BI.Hot_attributes(data, attribute_ip)
            Hot_attributes_add(data)

        except:
            return render_template("Error.html")
        return render_template("Attribute.html",data1=attribute_ip)

#搜索排行
@app.route("/Search_area",methods=["POST","GET"])
def Search_area_views():
    if request.method=="GET":
        return render_template("Search_ranking.html")
    else:
        cateId = request.form.get("cateId")
        session["cateId"]=cateId
        IPS = BI.Search_terms(cateId)
        IPS1 = BI.geographical_distribution(cateId)
        return render_template("Search_ranking.html",IPS=IPS,IPS1=IPS1,cateId=cateId)
#搜索排行 框内提取值
@app.route("/extract_Search_area",methods=["POST","GET"])
def extract():
    if request.method=="POST":
        try:
            cateId = session['cateId']
            print(cateId)
            keyword = {}

            Search_terms = request.form.get("data1")
            # 得到搜索词
            if Search_terms:
                data = BI.Search_terms_Decode(cateId,Search_terms)
                # 待存入数据库
            brand_Word = request.form.get("data2")
            # 得到品牌词
            if brand_Word:
                data = BI.brand_Word_Decode(cateId,brand_Word)
                # 待存入数据库
            Core_word = request.form.get("data3")
            if Core_word:
                data = BI.Core_word_Decode(cateId, Core_word)
            Modifiers = request.form.get("data4")
            if Modifiers:
                data = BI.Modifiers_Decode(cateId, Modifiers)
            analysis = request.form.get("data5")
            if analysis:
                keyword["地狱分析"] = analysis
        except:
            return render_template("Error.html")

        return render_template("Search_ranking.html",cateId=cateId)

#搜索分析
@app.route("/Analysis",methods=["POST","GET"])
def Analysis_views():
    if request.method == "GET":
        return render_template("Analysis.html")
    else:
        try:
            #接收前端的关键词
            key_word = request.form.get("data")
            session['key_word']=key_word

            #调用BI
            IPS = BI.Search_analysis30(key_word)
        except:
            return render_template("Error.html")

        return render_template("Analysis.html",IPS=IPS)
#接收搜索分析返回框内值
@app.route("/Fh_Anl",methods=["POST","GET"])
def Fh_anl_views():
    if request.method == "POST":
        try:
            key_word = session.get('key_word')

            return_val = request.form.get("data1")

            data = BI.Search_analysis30_Decode(key_word,return_val)
        except:
            return render_template("Error.html")

            #存入数据库
        return render_template("Analysis.html")
#竞店分析
@app.route("/Race_shop",methods=["POST","GET"])
def Race_views():
    if request.method=="GET":
        dates = ["最近30天"]
        date_name = BI.one_year_enerator()
        for date in date_name:
            dates.append(date[0])
        return render_template("Race_shop.html",dates=dates)
    else:
        try:
            dates = ["最近30天"]
            date_name = BI.one_year_enerator()
            for date in date_name:
                dates.append(date[0])
            #竞店IP
            shop_ip = request.form.get('data2')
            session["shop_ip"]=shop_ip
            #时间
            date = request.form.get('data3')
            if date != "最近30天":
                dateType = "month"
                date = BI.Time_enerator(dateType, date)

            else:
                dateType = "recent30"
                date = BI.Time_enerator(dateType, date)
            session["date"]=date
            IPS,cateID,shopID = BI.shop_Commodity_composition(shop_ip,date,dateType)
            session['cateID']=cateID
            session['shopID']=shopID
            IPS_bag = {}
            for x in IPS:
                IPS_bag[x[0]] = x[1]
            print(IPS_bag)
        except:
            return render_template("Error.html")
        return render_template("Race_shop.html",dates=dates,IPS=IPS_bag,date=date,shop_ip=shop_ip)
#提取竞店分析框内值
@app.route("/addRace_shop",methods=["POST","GET"])
def addRace_shop_views():
    if request.method == "POST":
        try:

            shop_ip=session.get("shop_ip")
            dates = ["最近30天"]
            date_name = BI.one_year_enerator()
            for date in date_name:
                dates.append(date[0])
            date = session.get("date")
            cateID = session.get['cateID']
            shopID = session.get['shopID']
            if request.form.get("x1") or request.form.get("x2") or request.form.get("x3") or request.form.get("x4") or request.form.get("x5"):
                if request.form.get("x1"):
                    data1=request.form.get("x1")
                    data1=BI.Commodity_composition_Decode(cateID,shopID,data1,date)
                    print(data1)
                    #待存入数据库
                elif request.form.get("x2"):
                    data2 = request.form.get("x2")
                    data1 = BI.Commodity_composition_Decode(cateID,shopID,data2, date)
                elif request.form.get("x3"):
                    data3 = request.form.get("x3")
                    data1 = BI.Commodity_composition_Decode(cateID,shopID,data3, date)
                elif request.form.get("x4"):
                    data4 = request.form.get("x4")
                    data1 = BI.Commodity_composition_Decode(cateID,shopID,data4, date)
                elif request.form.get("x5"):
                    data5 = request.form.get("x5")
                    data1 = BI.Trend_of_competition_product_Decode(cateID,shopID,data5, date)
        except:
            return render_template("Error.html")
        return render_template("Race_shop.html",dates=dates,shop_ip=shop_ip)

#竞品分析
@app.route("/Competing_goods",methods=["POST","GET"])
def Competing_goods_views():
    if request.method=="GET":
        return render_template("Competing_goods.html")
    else:
        try:
            # cateID = request.form.get("cateId")
            item_ip = request.form.get("IP")
            #此data是ips
            data,cate_ID,item_ID = BI.Keyword_competition(item_ip)
            session["cate_ID"] = cate_ID
            session["item_ID"] = item_ID
            words = []
            for cow in data:
                text = {}
                text['时间'] = cow[0]
                text[cow[1]] = cow[2]
                text[cow[3]] = cow[4]
                words.append(text)
            print(words)
        except:
            return render_template("Error.html")
        return render_template("Competing_goods.html",words=words)

#接受 竞品60条数据
@app.route("/Competing",methods=["POST","GET"])
def Competing_views():
    if request.method=="POST":
        try:
            for x in range(1,61):
                if request.form.get("x"+str(x)):
                    data = request.form.get("x"+str(x))
                    cate_ID = session.get['cate_ID']
                    item_ID = session.get['item_ID']
                    data = BI.Keyword_competition_Decode(data,cate_ID,item_ID)
                    #待传入数据库
        except:
            return render_template("Error.html")
        return render_template("Competing_goods.html")
# 竞品2
@app.route("/Competing_goods2",methods=["POST","GET"])
def Competing_goodsviews():
    if request.method=="GET":
        return render_template("Competing_goods2.html")
    else:
        try:
            item_ip = request.form.get("IP")

            data, cateID,item_ID = BI.Source_of_entry_product(item_ip)
            session["cateID"] = cateID
            session["itemID"] = item_ID
        except:
            return render_template("Error.html")

        return render_template("Competing_goods2.html",data=data)
#接收竞2框内值
@app.route("/goods2",methods=["POST","GET"])
def goods_views():
    if request.method=="POST":

        try:
            if request.form.get("data1") or request.form.get("data2") or request.form.get("data3") or request.form.get("data4") or request.form.get("data5") or request.form.get("data6") or request.form.get("data7") or request.form.get("data8") or request.form.get("data9") or request.form.get("data10") or request.form.get("data11") or request.form.get("data12") or request.form.get("data13"):

                for x in range(1,14):

                    print(x)
                    #提取cateID
                    cateID = session.get('cateID')
                    print(cateID)
                    #提取ID
                    itemID = session.get("itemID")
                    #提取时间值

                    times = request.form.get("time"+str(x))

                    #提取框内值
                    if request.form.get("data"+str(x)):
                        datas = request.form.get("data"+str(x))
                        print(itemID)
                        print(cateID)

                        print(times)
                        print(datas)
                        data = BI.Source_of_entry_product_Decode(cateID,itemID,datas,times)
                        print(data)

                        # 交接逻辑 存入数据库
        except:
            return render_template("Error.html")
        return render_template("Competing_goods2.html")

#竞品牌分析

@app.route("/brand",methods=["POST","GET"])
def Compeviews():
    if request.method=="GET":
        dates = ["最近30天"]
        date_name = BI.one_year_enerator()
        for date in date_name:
            dates.append(date[0])
        return render_template("brand.html",dates=dates)
    else:
        try:
            Brand_ip = request.form.get("data2")
            session["Brand_ip"] = Brand_ip
            date = request.form.get("data3")
            session["date"]=date
            if date != "最近30天":
                dateType = "month"
            else:
                dateType = "recent30"
            IPS, Brand_id,cateID = BI.Competitive_brand(Brand_ip, date, dateType)
            session['cateID']=cateID
            mat = []
            for cow in IPS:
                dic = {cow[0]:cow[1]}
                mat.append(dic)
            IPS = mat
            session["Brand_id"] = Brand_id
        except:
            return render_template("Error.html")

        return render_template("brand.html",IPS=IPS,date=date,Brand_ip=Brand_ip)



#接收竞品牌2框内值
@app.route("/brand2",methods=["POST","GET"])
def good_views():
    if request.method=="POST":
        try:
            bag = {}
            Brand_ip = session.get("Brand_ip")
            date = session.get("date")
            cateID = session.get('cateID')
            for x in range(1,14):
                if request.form.get("x"+str(x)) or request.form.get("date"+str(x)) :
                   #框内值
                    data = request.form.get("knz"+str(x))

                    title = request.form.get("date" + str(x))
                    brand_id = session.get("Brand_id")
                    if data!="":
                        bag[title] = data
            print(bag)
            for x in bag:
                print(x)
                if x == "热销TOP店铺榜:":
                    datac = BI.compete_Brand_Tradeshop_top(cateID,bag[x], date, brand_id)
                #     待存入数据库
                elif x == "流量TOP店铺榜:":
                    datac = BI.compete_Brand_flowshop_top(cateID,bag[x], date, brand_id)
                    #     待存入数据库
                elif x == '热销TOP商品榜:':

                    datac = BI.Competitive_Brand_Tradeshop_Commodities(cateID,bag[x], date, brand_id)
                elif x == "流量TOP商品榜:":
                    datac = BI.Competitive_Brand_Flow_Commodities(cateID,bag[x], date, brand_id)
                elif x == "类目构成:":
                    datac = BI.Competitive_Brand_Category_Composition(cateID,bag[x], date, brand_id)
                elif x == "年龄客群构成:":
                    datac = BI.Brand_Age_Clients(cateID,bag[x], date, brand_id)
                elif x == "年龄客群占比构成:":
                    datac = BI.Brand_Age_Clients_Proportion(cateID,bag[x], date, brand_id)
                elif x == "年龄交易指数构成:":
                    datac = BI.Brand_Age_Trading_index(cateID,bag[x], date, brand_id)
                elif x == "年龄支付转化率指数构成:":
                    datac = BI.Brand_Age_Payment_Conversion_Rate(cateID,bag[x], date, brand_id)
                elif x == "性别客群构成:":
                    datac = BI.Brand_Gender_Clients(cateID,bag[x], date, brand_id)
                elif x == "性别客群占比构成:":
                    datac = BI.Brand_Gender_Clients_Proportion(cateID,bag[x], date, brand_id)
                elif x == "性别交易指数构成:":
                    datac = BI.Brand_Gender_Trading_index(cateID,bag[x], date, brand_id)
                elif x == "性别支付转化率指数构成:":
                    datac = BI.Payment_Conversion_Rate(cateID,bag[x], date, brand_id)

                    #交接逻辑 存入数据库
            dates = ["最近30天"]
            date_name = BI.one_year_enerator()
            for date in date_name:
                dates.append(date[0])
        except:
            return render_template("Error.html")
        return render_template("brand.html",Brand_ip=Brand_ip,dates=dates,date=date)
#测试
@app.route("/test",methods=["POST","GET"])
def test_views():
    if request.method=="GET":
        return render_template("index.html")
    else:
        data = request.form.get("test")
        data = Hot_attributes(data)
        print(data)

        return render_template("index.html")
#行业趋势
@app.route("/Industry_trends_map",methods=["POST","GET"])
def Industry_trends_views():
    if request.method=="GET":
        return render_template("Industry_trends_map.html")
    else:
        name = request.form.get("data1")
        print(name)
        data = Industry_trend_cleaning(name)
        print(data)
        data = json.dumps(data)
        return data
#热门属性
@app.route("/Hot_property",methods=["POST","GET"])
def hot_property_views():
    if request.method=="GET":

        return render_template("Hot_property.html")
    else:
        data = request.form.get("data1")
        print(data)
        data = Hot_attributes(data)
        session['data']=data
        data = list(data.keys())
        print(data)
        return render_template("Hot_property.html",data=data)
#接收热门属性框内值 返回json数据
@app.route("/Hot_property_add",methods=["POST","GET"])
def ccviews():
    if request.method=="POST":
        type_ = request.form.get("data")
        data = session.get("data")
        data = data[type_]
        names = []
        for x in data:
            names.append(x["name"])
        print(data)
        print(names)
        print(type_)
        data = [data,names,type_]
        print(data)
        data = json.dumps(data)
        return data
#市场分布
@app.route("/Market_distribution",methods=["POST","GET"])
def Market_distribution_views():
    if request.method=="GET":
        return render_template("Market_distribution.html")
    else:
        name = request.form.get("data1")
        xiala = request.form.get("data2")
        print(xiala)

        print(name)
#人群定位
@app.route("/The_crowd_positioning",methods=["POST","GET"])
def The_crowd_positioning_views():
    if request.method=="GET":
        return render_template("The_crowd_positioning.html")
    else:
        name = request.form.get("data1")
        print(name)
#404
@app.errorhandler(404)
def a(e):
    return render_template("404.html"),404


if __name__=="__main__":
    # 家里主机IP
    # app.run(debug=True,host="192.168.0.106")
    #wife
    app.run(debug=Flask,host="192.168.43.112")
    #DN
    # app.run(debug=False,host="176.47.2.41")
    # 罗辑(公司)主机IP
    # app.run(debug=True, host="192.168.2.166")
    # 罗辑2
    # app.run(debug=True, host="192.168.1.4")


