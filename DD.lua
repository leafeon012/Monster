gg.setVisible(false)

ip= gg.makeRequest('https://docterhakase.000webhostapp.com/encs.php').content
if ip == "no"
then
gg.setVisible(false)
gg.alert("등록이 되지 않은 아이피입니다.")
gg.setVisible(true)
os.exit()
else
gg.setVisible(false)
gg.alert("정상적으로 등록된 아이피입니다.")
end

gg.makeRequest(ip)
