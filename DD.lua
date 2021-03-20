gg.setVisible(false)

local Passwords = {"냥코레인저스","박사"}
local Menu = gg.prompt({"인증 코드를 입력해주십시오"},nil,{"text"})
if not Menu then 
return 
end
for l , I in pairs(Passwords) do
if Menu[1] == I then A = true
end
end
if A ~= true then gg.alert("인증에 실패했습니다.")
return
else
gg.alert("인증에 성공했습니다.")
end

gg.alert(os.date([[박사 치트 V.10.3.0

- 온라인 서버에서 지속적으로 업데이트 됩니다.
- 오류 전달은 냥코레인저스 갤러리로 부탁드립니다.]]))

gg.alert([[2021.3.20 업데이트

- 레어 뽑기 확률 조작 기능이 추가되었습니다.]])


function Main()
local menu= gg.choice({
"[ 메뉴 ] 레어뽑기 확률 조작",
"XP 개수 조작",
"통조림 개수 조작",
"아이템 개수 조작",
"전투 즉시 승리",
"스크립트 종료"}, nil, ([[현재 최신버전입니다.]]))
if menu == 1 then MENU2() end
if menu == 2 then T1() end
if menu == 3 then T2() end
if menu == 4 then T3() end
if menu == 5 then T4() end
if menu == 6 then T5() end
HOMEDM=-1
end


function T1()
harpp = gg.prompt({'원하는 수치를 입력해주세요 (99999999개 미만으로)'}, nil, {'number'})
if harpp == nil then
else
gg.setRanges(gg.REGION_CODE_APP)
gg.clearList()
gg.clearResults()
gg.searchNumber("1,179,403,647;65,793;196,611;1;52;9,448,224;2,097,204;2,621,448;1,835,037:49", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("1,179,403,647", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.processPause()
local t = gg.getResults(7)
gg.addListItems(t)
local t3 = {}
for i, v in ipairs(t) do
	table.insert(t3, {address=v.address+0x909E20,flags=gg.TYPE_DWORD,value=harpp[1],freeze=false})
	table.insert(t3, {address=v.address+0x909E24,flags=gg.TYPE_DWORD,value=0,freeze=false})
end
gg.addListItems(t3)
revert = gg.getListItems()
gg.setValues(t3)
gg.processResume()
gg.toast("적용이 완료되었습니다.")
end
end

function T2()
harpp = gg.prompt({'원하는 수치를 입력해주세요 (20000개 미만으로)'}, nil, {'number'})
if harpp == nil then
else
gg.setRanges(gg.REGION_CODE_APP)
gg.clearList()
gg.clearResults()
gg.searchNumber("1,179,403,647;65,793;196,611;1;52;9,448,224;2,097,204;2,621,448;1,835,037:49", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("1,179,403,647", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.processPause()
local t = gg.getResults(7)
gg.addListItems(t)
local t3 = {}
for i, v in ipairs(t) do
	table.insert(t3, {address=v.address+0x909D34,flags=gg.TYPE_DWORD,value=harpp[1],freeze=false})
	table.insert(t3, {address=v.address+0x909D38,flags=gg.TYPE_DWORD,value=0,freeze=false})
end
gg.addListItems(t3)
revert = gg.getListItems()
gg.setValues(t3)
gg.processResume()
gg.toast("적용이 완료되었습니다.")
end
end

function T3()
harpp = gg.prompt({'원하는 수치를 입력해주세요 (999개 미만으로)'}, nil, {'number'})
if harpp == nil then
else
gg.setRanges(gg.REGION_CODE_APP)
gg.clearList()
gg.clearResults()
gg.searchNumber("1,179,403,647;65,793;196,611;1;52;9,448,224;2,097,204;2,621,448;1,835,037:49", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("1,179,403,647", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.processPause()
local t = gg.getResults(7)
gg.addListItems(t)
local t3 = {}
for i, v in ipairs(t) do
	table.insert(t3, {address=v.address+0x90E1F8,flags=gg.TYPE_DWORD,value=harpp[1],freeze=false})
	table.insert(t3, {address=v.address+0x90E1FC,flags=gg.TYPE_DWORD,value=0,freeze=false})
	table.insert(t3, {address=v.address+0x90E200,flags=gg.TYPE_DWORD,value=harpp[1],freeze=false})
	table.insert(t3, {address=v.address+0x90E204,flags=gg.TYPE_DWORD,value=0,freeze=false})
	table.insert(t3, {address=v.address+0x90E208,flags=gg.TYPE_DWORD,value=harpp[1],freeze=false})
	table.insert(t3, {address=v.address+0x90E20C,flags=gg.TYPE_DWORD,value=0,freeze=false})
	table.insert(t3, {address=v.address+0x90E210,flags=gg.TYPE_DWORD,value=harpp[1],freeze=false})
	table.insert(t3, {address=v.address+0x90E214,flags=gg.TYPE_DWORD,value=0,freeze=false})
	table.insert(t3, {address=v.address+0x90E218,flags=gg.TYPE_DWORD,value=harpp[1],freeze=false})
	table.insert(t3, {address=v.address+0x90E21C,flags=gg.TYPE_DWORD,value=0,freeze=false})
	table.insert(t3, {address=v.address+0x90E220,flags=gg.TYPE_DWORD,value=harpp[1],freeze=false})
	table.insert(t3, {address=v.address+0x90E224,flags=gg.TYPE_DWORD,value=0,freeze=false})
end
gg.addListItems(t3)
revert = gg.getListItems()
gg.setValues(t3)
gg.processResume()
gg.toast("적용이 완료되었습니다.")
end
end

function T4()
gg.setRanges(gg.REGION_CODE_APP)
gg.clearList()
gg.clearResults()
gg.searchNumber("1,179,403,647;65,793;196,611;1;52;9,448,224;2,097,204;2,621,448;1,835,037:49", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("1,179,403,647", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
local t = gg.getResults(7)
gg.addListItems(t)
local t3 = {}
for i, v in ipairs(t) do
table.insert(t3, {address=v.address+0x93CB6C,flags=gg.TYPE_DWORD,value=0,freeze=false})
end
gg.addListItems(t3)
revert = gg.getListItems()
gg.setValues(t3)
gg.toast("적용이 완료되었습니다.")
end

function T5()
print([[오류 전달은 냥코레인저스 갤러리로 부탁드립니다.]])
gg.clearResults()
gg.clearList()
gg.setVisible(true)
os.exit()
end

function MENU2()
menu1= gg.choice({
"Only Rare",
"Only Super Rare",
"Only Ultra Super Rare",
"Only Legend Rare",
"메인 메뉴로 이동"}, nil, ([[레전드레어가 없는 시리즈에서 Only Legend Rare 기능을 사용하면 고양이만 나옵니다.
현재 일정은 [ 하이퍼 고양이 ] 축제입니다.]]))
if menu1 == 1 then P1() end
if menu1 == 2 then P2() end
if menu1 == 3 then P3() end
if menu1 == 4 then P4() end
if menu1 == 5 then Main() end
HOMEDM=-1
end

function P1()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.clearList()
gg.clearResults()
gg.searchNumber("542;150:5", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("150", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.processPause()
local t = gg.getResults(7)
gg.addListItems(t)
local t3 = {}
for i, v in ipairs(t) do
	table.insert(t3, {address=v.address+0x10,flags=gg.TYPE_DWORD,value=0,freeze=false})
	table.insert(t3, {address=v.address+0x14,flags=gg.TYPE_DWORD,value=10000,freeze=false})
            table.insert(t3, {address=v.address+0x18,flags=gg.TYPE_DWORD,value=0,freeze=false})
	table.insert(t3, {address=v.address+0x1C,flags=gg.TYPE_DWORD,value=0,freeze=false})
             table.insert(t3, {address=v.address+0x20,flags=gg.TYPE_DWORD,value=0,freeze=false})
	table.insert(t3, {address=v.address+0x24,flags=gg.TYPE_DWORD,value=0,freeze=false})
end
gg.addListItems(t3)
revert = gg.getListItems()
gg.setValues(t3)
gg.processResume()
gg.toast("적용이 완료되었습니다.")
end

function P2()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.clearList()
gg.clearResults()
gg.searchNumber("542;150:5", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("150", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.processPause()
local t = gg.getResults(7)
gg.addListItems(t)
local t3 = {}
for i, v in ipairs(t) do
	table.insert(t3, {address=v.address+0x10,flags=gg.TYPE_DWORD,value=0,freeze=false})
	table.insert(t3, {address=v.address+0x14,flags=gg.TYPE_DWORD,value=0,freeze=false})
            table.insert(t3, {address=v.address+0x18,flags=gg.TYPE_DWORD,value=10000,freeze=false})
	table.insert(t3, {address=v.address+0x1C,flags=gg.TYPE_DWORD,value=0,freeze=false})
             table.insert(t3, {address=v.address+0x20,flags=gg.TYPE_DWORD,value=0,freeze=false})
	table.insert(t3, {address=v.address+0x24,flags=gg.TYPE_DWORD,value=0,freeze=false})
end
gg.addListItems(t3)
revert = gg.getListItems()
gg.setValues(t3)
gg.processResume()
gg.toast("적용이 완료되었습니다.")
end
function P3()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.clearList()
gg.clearResults()
gg.searchNumber("542;150:5", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("150", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.processPause()
local t = gg.getResults(7)
gg.addListItems(t)
local t3 = {}
for i, v in ipairs(t) do
	table.insert(t3, {address=v.address+0x10,flags=gg.TYPE_DWORD,value=0,freeze=false})
	table.insert(t3, {address=v.address+0x14,flags=gg.TYPE_DWORD,value=0,freeze=false})
            table.insert(t3, {address=v.address+0x18,flags=gg.TYPE_DWORD,value=0,freeze=false})
	table.insert(t3, {address=v.address+0x1C,flags=gg.TYPE_DWORD,value=10000,freeze=false})
             table.insert(t3, {address=v.address+0x20,flags=gg.TYPE_DWORD,value=0,freeze=false})
	table.insert(t3, {address=v.address+0x24,flags=gg.TYPE_DWORD,value=0,freeze=false})
end
gg.addListItems(t3)
revert = gg.getListItems()
gg.setValues(t3)
gg.processResume()
gg.toast("적용이 완료되었습니다.")
end

function P4()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.clearList()
gg.clearResults()
gg.searchNumber("542;150:5", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("150", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.processPause()
local t = gg.getResults(7)
gg.addListItems(t)
local t3 = {}
for i, v in ipairs(t) do
	table.insert(t3, {address=v.address+0x10,flags=gg.TYPE_DWORD,value=0,freeze=false})
	table.insert(t3, {address=v.address+0x14,flags=gg.TYPE_DWORD,value=0,freeze=false})
            table.insert(t3, {address=v.address+0x18,flags=gg.TYPE_DWORD,value=0,freeze=false})
	table.insert(t3, {address=v.address+0x1C,flags=gg.TYPE_DWORD,value=0,freeze=false})
             table.insert(t3, {address=v.address+0x20,flags=gg.TYPE_DWORD,value=10000,freeze=false})
	table.insert(t3, {address=v.address+0x24,flags=gg.TYPE_DWORD,value=0,freeze=false})
end
gg.addListItems(t3)
revert = gg.getListItems()
gg.setValues(t3)
gg.processResume()
gg.toast("적용이 완료되었습니다.")
end

while (true) do
if gg.isVisible(true) then
HOMEDM=1
gg.setVisible(false)
end
if HOMEDM == 1 then
Main()
end
end

