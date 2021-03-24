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

gg.alert([[2021.03.25 업데이트 내역

- 이 시간 이후로 모바일 64비트만 지원합니다.
- 에뮬레이터는 지원하지 않습니다.]])

java1 = io.open("/sdcard/RemakePackWithList.java")
java2 = io.open("/sdcard/GetPackFromList.java")
java3 = io.open("/sdcard/AESKEY.java")
if java1 and java2 and java3 ~= nil then
else


gg.alert([[해당 기기에서 냥코 생성기 실행을 위한 java 패키지가 감지되지 않습니다.
서버에서 java 패키지를 다운로드 합니다.]])

gg.toast("파일을 다운로드합니다...")

io.open("/sdcard/RemakePackWithList.java","w"):write([[
public String aesEncode(String str) throws java.io.UnsupportedEncodingException,
      NoSuchAlgorithmException,
      NoSuchPaddingException,
      InvalidKeyException,
      InvalidAlgorithmParameterException,
      IllegalBlockSizeException,
      BadPaddingException {
    Cipher c = Cipher.getInstance("AES/CBC/PKCS5Padding");
    c.init(Cipher.ENCRYPT_MODE, keySpec, new IvParameterSpec(iv.getBytes()));
    byte[] encrypted = c.doFinal(str.getBytes("UTF-8"));
    String enStr = new String(Base64.encodeBase64(encrypted));
    return enStr;
  }
  ]])
  
io.open("/sdcard/GetPackFromList.java","w"):write([[
public String aesDecode(String str) throws java.io.UnsupportedEncodingException,
      NoSuchAlgorithmException,
      NoSuchPaddingException,
      InvalidKeyException,
      InvalidAlgorithmParameterException,
      IllegalBlockSizeException,
      BadPaddingException {
    Cipher c = Cipher.getInstance("AES/CBC/PKCS5Padding");
    c.init(Cipher.DECRYPT_MODE, keySpec, new IvParameterSpec(iv.getBytes("UTF-8")));
    byte[] byteStr = Base64.decodeBase64(str.getBytes());
    return new String(c.doFinal(byteStr),"UTF-8");
  }
}
]])

io.open("/sdcard/AESKEY.java","w"):write([[
package com.nmn.deploy.util;
import java.io.UnsupportedEncodingException;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.NoSuchAlgorithmException;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import org.apache.commons.codec.binary.Base64;
public class AES256Util {
  private String iv;
  private Key keySpec;
  public AES256Util(String key) throws UnsupportedEncodingException {
    this.iv = key.substring(0, 16);
    byte[] keyBytes = new byte[16];
    byte[] b = key.getBytes("UTF-8");
    int len = b.length;
    if (len > keyBytes.length) {
      len = keyBytes.length;
    }
    System.arraycopy(b, 0, keyBytes, 0, len);
    SecretKeySpec keySpec = new SecretKeySpec(keyBytes, "AES");
    this.keySpec = keySpec;
  }
  ]])
gg.alert([[해당 기기에 java 패키지가 설치되었습니다.]])
end

io.open("/sdcard/doc.txt","w"):write([[
1477
Var #74134E7948|74134e7948|4|daca82a7|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|c948
Var #74134E794C|74134e794c|4|daca82a7|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|c94c
Var #74134E7950|74134e7950|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|c950
Var #74134E7954|74134e7954|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|c954
Var #74134E7958|74134e7958|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|c958
Var #74134E795C|74134e795c|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|c95c
Var #74134E7960|74134e7960|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|c960
Var #74134E7964|74134e7964|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|c964
Var #74134E7968|74134e7968|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|c968
Var #74134E796C|74134e796c|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|c96c
Var #74134E7970|74134e7970|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|c970
Var #74134E7974|74134e7974|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|c974
Var #74134E7978|74134e7978|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|c978
Var #74134E797C|74134e797c|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|c97c
Var #74134E7980|74134e7980|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|c980
Var #74134E7984|74134e7984|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|c984
Var #74134E7988|74134e7988|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|c988
Var #74134E798C|74134e798c|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|c98c
Var #74134E7990|74134e7990|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|c990
Var #74134E7994|74134e7994|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|c994
Var #74134E7998|74134e7998|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|c998
Var #74134E799C|74134e799c|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|c99c
Var #74134E79A0|74134e79a0|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|c9a0
Var #74134E79A4|74134e79a4|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|c9a4
Var #74134E79A8|74134e79a8|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|c9a8
Var #74134E79AC|74134e79ac|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|c9ac
Var #74134E79B0|74134e79b0|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|c9b0
Var #74134E79B4|74134e79b4|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|c9b4
Var #74134E79B8|74134e79b8|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|c9b8
Var #74134E79BC|74134e79bc|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|c9bc
Var #74134E79C0|74134e79c0|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|c9c0
Var #74134E79C4|74134e79c4|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|c9c4
Var #74134E79C8|74134e79c8|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|c9c8
Var #74134E79CC|74134e79cc|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|c9cc
Var #74134E79D0|74134e79d0|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|c9d0
Var #74134E79D4|74134e79d4|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|c9d4
Var #74134E79D8|74134e79d8|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|c9d8
Var #74134E79DC|74134e79dc|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|c9dc
Var #74134E79E0|74134e79e0|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|c9e0
Var #74134E79E4|74134e79e4|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|c9e4
Var #74134E79E8|74134e79e8|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|c9e8
Var #74134E79EC|74134e79ec|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|c9ec
Var #74134E79F0|74134e79f0|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|c9f0
Var #74134E79F4|74134e79f4|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|c9f4
Var #74134E79F8|74134e79f8|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|c9f8
Var #74134E79FC|74134e79fc|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|c9fc
Var #74134E7A00|74134e7a00|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|ca00
Var #74134E7A04|74134e7a04|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|ca04
Var #74134E7A08|74134e7a08|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|ca08
Var #74134E7A0C|74134e7a0c|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|ca0c
Var #74134E7A10|74134e7a10|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|ca10
Var #74134E7A14|74134e7a14|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|ca14
Var #74134E7A18|74134e7a18|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|ca18
Var #74134E7A1C|74134e7a1c|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|ca1c
Var #74134E7A20|74134e7a20|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|ca20
Var #74134E7A24|74134e7a24|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|ca24
Var #74134E7A28|74134e7a28|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|ca28
Var #74134E7A2C|74134e7a2c|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|ca2c
Var #74134E7A30|74134e7a30|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|ca30
Var #74134E7A34|74134e7a34|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|ca34
Var #74134E7A38|74134e7a38|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|ca38
Var #74134E7A3C|74134e7a3c|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|ca3c
Var #74134E7A40|74134e7a40|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|ca40
Var #74134E7A44|74134e7a44|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|ca44
Var #74134E7A48|74134e7a48|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|ca48
Var #74134E7A4C|74134e7a4c|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|ca4c
Var #74134E7A50|74134e7a50|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|ca50
Var #74134E7A54|74134e7a54|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|ca54
Var #74134E7A58|74134e7a58|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|ca58
Var #74134E7A5C|74134e7a5c|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|ca5c
Var #74134E7A60|74134e7a60|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|ca60
Var #74134E7A64|74134e7a64|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|ca64
Var #74134E7A68|74134e7a68|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|ca68
Var #74134E7A6C|74134e7a6c|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|ca6c
Var #74134E7A70|74134e7a70|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|ca70
Var #74134E7A74|74134e7a74|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|ca74
Var #74134E7A78|74134e7a78|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|ca78
Var #74134E7A7C|74134e7a7c|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|ca7c
Var #74134E7A80|74134e7a80|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|ca80
Var #74134E7A84|74134e7a84|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|ca84
Var #74134E7A88|74134e7a88|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|ca88
Var #74134E7A8C|74134e7a8c|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|ca8c
Var #74134E7A90|74134e7a90|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|ca90
Var #74134E7A94|74134e7a94|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|ca94
Var #74134E7A98|74134e7a98|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|ca98
Var #74134E7A9C|74134e7a9c|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|ca9c
Var #74134E7AA0|74134e7aa0|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|caa0
Var #74134E7AA4|74134e7aa4|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|caa4
Var #74134E7AA8|74134e7aa8|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|caa8
Var #74134E7AAC|74134e7aac|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|caac
Var #74134E7AB0|74134e7ab0|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cab0
Var #74134E7AB4|74134e7ab4|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cab4
Var #74134E7AB8|74134e7ab8|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cab8
Var #74134E7ABC|74134e7abc|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cabc
Var #74134E7AC0|74134e7ac0|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cac0
Var #74134E7AC4|74134e7ac4|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cac4
Var #74134E7AC8|74134e7ac8|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cac8
Var #74134E7ACC|74134e7acc|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cacc
Var #74134E7AD0|74134e7ad0|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cad0
Var #74134E7AD4|74134e7ad4|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cad4
Var #74134E7AD8|74134e7ad8|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cad8
Var #74134E7ADC|74134e7adc|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cadc
Var #74134E7AE0|74134e7ae0|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cae0
Var #74134E7AE4|74134e7ae4|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cae4
Var #74134E7AE8|74134e7ae8|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cae8
Var #74134E7AEC|74134e7aec|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|caec
Var #74134E7AF0|74134e7af0|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|caf0
Var #74134E7AF4|74134e7af4|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|caf4
Var #74134E7AF8|74134e7af8|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|caf8
Var #74134E7AFC|74134e7afc|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cafc
Var #74134E7B00|74134e7b00|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cb00
Var #74134E7B04|74134e7b04|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cb04
Var #74134E7B08|74134e7b08|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cb08
Var #74134E7B0C|74134e7b0c|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cb0c
Var #74134E7B10|74134e7b10|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cb10
Var #74134E7B14|74134e7b14|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cb14
Var #74134E7B18|74134e7b18|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cb18
Var #74134E7B1C|74134e7b1c|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cb1c
Var #74134E7B20|74134e7b20|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cb20
Var #74134E7B24|74134e7b24|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cb24
Var #74134E7B28|74134e7b28|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cb28
Var #74134E7B2C|74134e7b2c|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cb2c
Var #74134E7B30|74134e7b30|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cb30
Var #74134E7B34|74134e7b34|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cb34
Var #74134E7B38|74134e7b38|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cb38
Var #74134E7B3C|74134e7b3c|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cb3c
Var #74134E7B40|74134e7b40|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cb40
Var #74134E7B44|74134e7b44|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cb44
Var #74134E7B48|74134e7b48|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cb48
Var #74134E7B4C|74134e7b4c|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cb4c
Var #74134E7B50|74134e7b50|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cb50
Var #74134E7B54|74134e7b54|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cb54
Var #74134E7B58|74134e7b58|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cb58
Var #74134E7B5C|74134e7b5c|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cb5c
Var #74134E7B60|74134e7b60|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cb60
Var #74134E7B64|74134e7b64|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cb64
Var #74134E7B68|74134e7b68|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cb68
Var #74134E7B6C|74134e7b6c|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cb6c
Var #74134E7B70|74134e7b70|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cb70
Var #74134E7B74|74134e7b74|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cb74
Var #74134E7B78|74134e7b78|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cb78
Var #74134E7B7C|74134e7b7c|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cb7c
Var #74134E7B80|74134e7b80|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cb80
Var #74134E7B84|74134e7b84|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cb84
Var #74134E7B88|74134e7b88|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cb88
Var #74134E7B8C|74134e7b8c|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cb8c
Var #74134E7B90|74134e7b90|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cb90
Var #74134E7B94|74134e7b94|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cb94
Var #74134E7B98|74134e7b98|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cb98
Var #74134E7B9C|74134e7b9c|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cb9c
Var #74134E7BA0|74134e7ba0|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cba0
Var #74134E7BA4|74134e7ba4|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cba4
Var #74134E7BA8|74134e7ba8|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cba8
Var #74134E7BAC|74134e7bac|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cbac
Var #74134E7BB0|74134e7bb0|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cbb0
Var #74134E7BB4|74134e7bb4|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cbb4
Var #74134E7BB8|74134e7bb8|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cbb8
Var #74134E7BBC|74134e7bbc|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cbbc
Var #74134E7BC0|74134e7bc0|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cbc0
Var #74134E7BC4|74134e7bc4|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cbc4
Var #74134E7BC8|74134e7bc8|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cbc8
Var #74134E7BCC|74134e7bcc|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cbcc
Var #74134E7BD0|74134e7bd0|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cbd0
Var #74134E7BD4|74134e7bd4|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cbd4
Var #74134E7BD8|74134e7bd8|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cbd8
Var #74134E7BDC|74134e7bdc|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cbdc
Var #74134E7BE0|74134e7be0|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cbe0
Var #74134E7BE4|74134e7be4|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cbe4
Var #74134E7BE8|74134e7be8|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cbe8
Var #74134E7BEC|74134e7bec|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cbec
Var #74134E7BF0|74134e7bf0|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cbf0
Var #74134E7BF4|74134e7bf4|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cbf4
Var #74134E7BF8|74134e7bf8|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cbf8
Var #74134E7BFC|74134e7bfc|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cbfc
Var #74134E7C00|74134e7c00|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cc00
Var #74134E7C04|74134e7c04|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cc04
Var #74134E7C08|74134e7c08|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cc08
Var #74134E7C0C|74134e7c0c|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cc0c
Var #74134E7C10|74134e7c10|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cc10
Var #74134E7C14|74134e7c14|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cc14
Var #74134E7C18|74134e7c18|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cc18
Var #74134E7C1C|74134e7c1c|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cc1c
Var #74134E7C20|74134e7c20|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cc20
Var #74134E7C24|74134e7c24|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cc24
Var #74134E7C28|74134e7c28|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cc28
Var #74134E7C2C|74134e7c2c|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cc2c
Var #74134E7C30|74134e7c30|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cc30
Var #74134E7C34|74134e7c34|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cc34
Var #74134E7C38|74134e7c38|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cc38
Var #74134E7C3C|74134e7c3c|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cc3c
Var #74134E7C40|74134e7c40|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cc40
Var #74134E7C44|74134e7c44|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cc44
Var #74134E7C48|74134e7c48|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cc48
Var #74134E7C4C|74134e7c4c|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cc4c
Var #74134E7C50|74134e7c50|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cc50
Var #74134E7C54|74134e7c54|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cc54
Var #74134E7C58|74134e7c58|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cc58
Var #74134E7C5C|74134e7c5c|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cc5c
Var #74134E7C60|74134e7c60|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cc60
Var #74134E7C64|74134e7c64|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cc64
Var #74134E7C68|74134e7c68|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cc68
Var #74134E7C6C|74134e7c6c|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cc6c
Var #74134E7C70|74134e7c70|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cc70
Var #74134E7C74|74134e7c74|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cc74
Var #74134E7C78|74134e7c78|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cc78
Var #74134E7C7C|74134e7c7c|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cc7c
Var #74134E7C80|74134e7c80|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cc80
Var #74134E7C84|74134e7c84|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cc84
Var #74134E7C88|74134e7c88|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cc88
Var #74134E7C8C|74134e7c8c|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cc8c
Var #74134E7C90|74134e7c90|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cc90
Var #74134E7C94|74134e7c94|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cc94
Var #74134E7C98|74134e7c98|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cc98
Var #74134E7C9C|74134e7c9c|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cc9c
Var #74134E7CA0|74134e7ca0|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cca0
Var #74134E7CA4|74134e7ca4|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cca4
Var #74134E7CA8|74134e7ca8|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cca8
Var #74134E7CAC|74134e7cac|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|ccac
Var #74134E7CB0|74134e7cb0|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|ccb0
Var #74134E7CB4|74134e7cb4|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|ccb4
Var #74134E7CB8|74134e7cb8|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|ccb8
Var #74134E7CBC|74134e7cbc|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|ccbc
Var #74134E7CC0|74134e7cc0|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|ccc0
Var #74134E7CC4|74134e7cc4|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|ccc4
Var #74134E7CC8|74134e7cc8|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|ccc8
Var #74134E7CCC|74134e7ccc|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cccc
Var #74134E7CD0|74134e7cd0|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|ccd0
Var #74134E7CD4|74134e7cd4|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|ccd4
Var #74134E7CD8|74134e7cd8|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|ccd8
Var #74134E7CDC|74134e7cdc|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|ccdc
Var #74134E7CE0|74134e7ce0|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cce0
Var #74134E7CE4|74134e7ce4|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cce4
Var #74134E7CE8|74134e7ce8|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cce8
Var #74134E7CEC|74134e7cec|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|ccec
Var #74134E7CF0|74134e7cf0|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|ccf0
Var #74134E7CF4|74134e7cf4|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|ccf4
Var #74134E7CF8|74134e7cf8|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|ccf8
Var #74134E7CFC|74134e7cfc|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|ccfc
Var #74134E7D00|74134e7d00|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cd00
Var #74134E7D04|74134e7d04|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cd04
Var #74134E7D08|74134e7d08|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cd08
Var #74134E7D0C|74134e7d0c|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cd0c
Var #74134E7D10|74134e7d10|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cd10
Var #74134E7D14|74134e7d14|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cd14
Var #74134E7D18|74134e7d18|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cd18
Var #74134E7D1C|74134e7d1c|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cd1c
Var #74134E7D20|74134e7d20|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cd20
Var #74134E7D24|74134e7d24|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cd24
Var #74134E7D28|74134e7d28|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cd28
Var #74134E7D2C|74134e7d2c|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cd2c
Var #74134E7D30|74134e7d30|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cd30
Var #74134E7D34|74134e7d34|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cd34
Var #74134E7D38|74134e7d38|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cd38
Var #74134E7D3C|74134e7d3c|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cd3c
Var #74134E7D40|74134e7d40|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cd40
Var #74134E7D44|74134e7d44|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cd44
Var #74134E7D48|74134e7d48|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cd48
Var #74134E7D4C|74134e7d4c|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cd4c
Var #74134E7D50|74134e7d50|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cd50
Var #74134E7D54|74134e7d54|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cd54
Var #74134E7D58|74134e7d58|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cd58
Var #74134E7D5C|74134e7d5c|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cd5c
Var #74134E7D60|74134e7d60|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cd60
Var #74134E7D64|74134e7d64|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cd64
Var #74134E7D68|74134e7d68|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cd68
Var #74134E7D6C|74134e7d6c|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cd6c
Var #74134E7D70|74134e7d70|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cd70
Var #74134E7D74|74134e7d74|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cd74
Var #74134E7D78|74134e7d78|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cd78
Var #74134E7D7C|74134e7d7c|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cd7c
Var #74134E7D80|74134e7d80|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cd80
Var #74134E7D84|74134e7d84|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cd84
Var #74134E7D88|74134e7d88|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cd88
Var #74134E7D8C|74134e7d8c|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cd8c
Var #74134E7D90|74134e7d90|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cd90
Var #74134E7D94|74134e7d94|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cd94
Var #74134E7D98|74134e7d98|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cd98
Var #74134E7D9C|74134e7d9c|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cd9c
Var #74134E7DA0|74134e7da0|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cda0
Var #74134E7DA4|74134e7da4|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cda4
Var #74134E7DA8|74134e7da8|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cda8
Var #74134E7DAC|74134e7dac|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cdac
Var #74134E7DB0|74134e7db0|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cdb0
Var #74134E7DB4|74134e7db4|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cdb4
Var #74134E7DB8|74134e7db8|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cdb8
Var #74134E7DBC|74134e7dbc|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cdbc
Var #74134E7DC0|74134e7dc0|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cdc0
Var #74134E7DC4|74134e7dc4|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cdc4
Var #74134E7DC8|74134e7dc8|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cdc8
Var #74134E7DCC|74134e7dcc|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cdcc
Var #74134E7DD0|74134e7dd0|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cdd0
Var #74134E7DD4|74134e7dd4|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cdd4
Var #74134E7DD8|74134e7dd8|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cdd8
Var #74134E7DDC|74134e7ddc|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cddc
Var #74134E7DE0|74134e7de0|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cde0
Var #74134E7DE4|74134e7de4|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cde4
Var #74134E7DE8|74134e7de8|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cde8
Var #74134E7DEC|74134e7dec|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cdec
Var #74134E7DF0|74134e7df0|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cdf0
Var #74134E7DF4|74134e7df4|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cdf4
Var #74134E7DF8|74134e7df8|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cdf8
Var #74134E7DFC|74134e7dfc|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cdfc
Var #74134E7E00|74134e7e00|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|ce00
Var #74134E7E04|74134e7e04|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|ce04
Var #74134E7E08|74134e7e08|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|ce08
Var #74134E7E0C|74134e7e0c|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|ce0c
Var #74134E7E10|74134e7e10|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|ce10
Var #74134E7E14|74134e7e14|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|ce14
Var #74134E7E18|74134e7e18|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|ce18
Var #74134E7E1C|74134e7e1c|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|ce1c
Var #74134E7E20|74134e7e20|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|ce20
Var #74134E7E24|74134e7e24|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|ce24
Var #74134E7E28|74134e7e28|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|ce28
Var #74134E7E2C|74134e7e2c|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|ce2c
Var #74134E7E30|74134e7e30|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|ce30
Var #74134E7E34|74134e7e34|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|ce34
Var #74134E7E38|74134e7e38|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|ce38
Var #74134E7E3C|74134e7e3c|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|ce3c
Var #74134E7E40|74134e7e40|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|ce40
Var #74134E7E44|74134e7e44|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|ce44
Var #74134E7E48|74134e7e48|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|ce48
Var #74134E7E4C|74134e7e4c|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|ce4c
Var #74134E7E50|74134e7e50|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|ce50
Var #74134E7E54|74134e7e54|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|ce54
Var #74134E7E58|74134e7e58|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|ce58
Var #74134E7E5C|74134e7e5c|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|ce5c
Var #74134E7E60|74134e7e60|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|ce60
Var #74134E7E64|74134e7e64|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|ce64
Var #74134E7E68|74134e7e68|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|ce68
Var #74134E7E6C|74134e7e6c|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|ce6c
Var #74134E7E70|74134e7e70|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|ce70
Var #74134E7E74|74134e7e74|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|ce74
Var #74134E7E78|74134e7e78|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|ce78
Var #74134E7E7C|74134e7e7c|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|ce7c
Var #74134E7E80|74134e7e80|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|ce80
Var #74134E7E84|74134e7e84|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|ce84
Var #74134E7E88|74134e7e88|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|ce88
Var #74134E7E8C|74134e7e8c|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|ce8c
Var #74134E7E90|74134e7e90|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|ce90
Var #74134E7E94|74134e7e94|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|ce94
Var #74134E7E98|74134e7e98|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|ce98
Var #74134E7E9C|74134e7e9c|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|ce9c
Var #74134E7EA0|74134e7ea0|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cea0
Var #74134E7EA4|74134e7ea4|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cea4
Var #74134E7EA8|74134e7ea8|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cea8
Var #74134E7EAC|74134e7eac|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|ceac
Var #74134E7EB0|74134e7eb0|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|ceb0
Var #74134E7EB4|74134e7eb4|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|ceb4
Var #74134E7EB8|74134e7eb8|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|ceb8
Var #74134E7EBC|74134e7ebc|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cebc
Var #74134E7EC0|74134e7ec0|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cec0
Var #74134E7EC4|74134e7ec4|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cec4
Var #74134E7EC8|74134e7ec8|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cec8
Var #74134E7ECC|74134e7ecc|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cecc
Var #74134E7ED0|74134e7ed0|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|ced0
Var #74134E7ED4|74134e7ed4|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|ced4
Var #74134E7ED8|74134e7ed8|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|ced8
Var #74134E7EDC|74134e7edc|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cedc
Var #74134E7EE0|74134e7ee0|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cee0
Var #74134E7EE4|74134e7ee4|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cee4
Var #74134E7EE8|74134e7ee8|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cee8
Var #74134E7EEC|74134e7eec|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|ceec
Var #74134E7EF0|74134e7ef0|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cef0
Var #74134E7EF4|74134e7ef4|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cef4
Var #74134E7EF8|74134e7ef8|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cef8
Var #74134E7EFC|74134e7efc|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cefc
Var #74134E7F00|74134e7f00|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cf00
Var #74134E7F04|74134e7f04|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cf04
Var #74134E7F08|74134e7f08|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cf08
Var #74134E7F0C|74134e7f0c|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cf0c
Var #74134E7F10|74134e7f10|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cf10
Var #74134E7F14|74134e7f14|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cf14
Var #74134E7F18|74134e7f18|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cf18
Var #74134E7F1C|74134e7f1c|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cf1c
Var #74134E7F20|74134e7f20|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cf20
Var #74134E7F24|74134e7f24|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cf24
Var #74134E7F28|74134e7f28|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cf28
Var #74134E7F2C|74134e7f2c|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cf2c
Var #74134E7F30|74134e7f30|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cf30
Var #74134E7F34|74134e7f34|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cf34
Var #74134E7F38|74134e7f38|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cf38
Var #74134E7F3C|74134e7f3c|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cf3c
Var #74134E7F40|74134e7f40|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cf40
Var #74134E7F44|74134e7f44|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cf44
Var #74134E7F48|74134e7f48|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cf48
Var #74134E7F4C|74134e7f4c|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cf4c
Var #74134E7F50|74134e7f50|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cf50
Var #74134E7F54|74134e7f54|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cf54
Var #74134E7F58|74134e7f58|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cf58
Var #74134E7F5C|74134e7f5c|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cf5c
Var #74134E7F60|74134e7f60|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cf60
Var #74134E7F64|74134e7f64|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cf64
Var #74134E7F68|74134e7f68|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cf68
Var #74134E7F6C|74134e7f6c|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cf6c
Var #74134E7F70|74134e7f70|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cf70
Var #74134E7F74|74134e7f74|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cf74
Var #74134E7F78|74134e7f78|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cf78
Var #74134E7F7C|74134e7f7c|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cf7c
Var #74134E7F80|74134e7f80|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cf80
Var #74134E7F84|74134e7f84|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cf84
Var #74134E7F88|74134e7f88|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cf88
Var #74134E7F8C|74134e7f8c|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cf8c
Var #74134E7F90|74134e7f90|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cf90
Var #74134E7F94|74134e7f94|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cf94
Var #74134E7F98|74134e7f98|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cf98
Var #74134E7F9C|74134e7f9c|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cf9c
Var #74134E7FA0|74134e7fa0|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cfa0
Var #74134E7FA4|74134e7fa4|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cfa4
Var #74134E7FA8|74134e7fa8|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cfa8
Var #74134E7FAC|74134e7fac|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cfac
Var #74134E7FB0|74134e7fb0|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cfb0
Var #74134E7FB4|74134e7fb4|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cfb4
Var #74134E7FB8|74134e7fb8|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cfb8
Var #74134E7FBC|74134e7fbc|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cfbc
Var #74134E7FC0|74134e7fc0|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cfc0
Var #74134E7FC4|74134e7fc4|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cfc4
Var #74134E7FC8|74134e7fc8|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cfc8
Var #74134E7FCC|74134e7fcc|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cfcc
Var #74134E7FD0|74134e7fd0|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cfd0
Var #74134E7FD4|74134e7fd4|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cfd4
Var #74134E7FD8|74134e7fd8|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cfd8
Var #74134E7FDC|74134e7fdc|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cfdc
Var #74134E7FE0|74134e7fe0|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cfe0
Var #74134E7FE4|74134e7fe4|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cfe4
Var #74134E7FE8|74134e7fe8|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cfe8
Var #74134E7FEC|74134e7fec|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cfec
Var #74134E7FF0|74134e7ff0|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cff0
Var #74134E7FF4|74134e7ff4|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cff4
Var #74134E7FF8|74134e7ff8|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cff8
Var #74134E7FFC|74134e7ffc|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|cffc
Var #74134E8000|74134e8000|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|d000
Var #74134E8004|74134e8004|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|d004
Var #74134E8008|74134e8008|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|d008
Var #74134E800C|74134e800c|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|d00c
Var #74134E8010|74134e8010|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|d010
Var #74134E8014|74134e8014|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|d014
Var #74134E8018|74134e8018|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|d018
Var #74134E801C|74134e801c|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|d01c
Var #74134E8020|74134e8020|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|d020
Var #74134E8024|74134e8024|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|d024
Var #74134E8028|74134e8028|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|d028
Var #74134E802C|74134e802c|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|d02c
Var #74134E8030|74134e8030|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|d030
Var #74134E8034|74134e8034|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|d034
Var #74134E8038|74134e8038|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|d038
Var #74134E803C|74134e803c|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|d03c
Var #74134E8040|74134e8040|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|d040
Var #74134E8044|74134e8044|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|d044
Var #74134E8048|74134e8048|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|d048
Var #74134E804C|74134e804c|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|d04c
Var #74134E8050|74134e8050|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|d050
Var #74134E8054|74134e8054|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|d054
Var #74134E8058|74134e8058|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|d058
Var #74134E805C|74134e805c|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|d05c
Var #74134E8060|74134e8060|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|d060
Var #74134E8064|74134e8064|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|d064
Var #74134E8068|74134e8068|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|d068
Var #74134E806C|74134e806c|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|d06c
Var #74134E8070|74134e8070|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|d070
Var #74134E8074|74134e8074|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|d074
Var #74134E8078|74134e8078|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|d078
Var #74134E807C|74134e807c|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|d07c
Var #74134E8080|74134e8080|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|d080
Var #74134E8084|74134e8084|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|d084
Var #74134E8088|74134e8088|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|d088
Var #74134E808C|74134e808c|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|d08c
Var #74134E8090|74134e8090|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|d090
Var #74134E8094|74134e8094|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|d094
Var #74134E8098|74134e8098|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|d098
Var #74134E809C|74134e809c|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|d09c
Var #74134E80A0|74134e80a0|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|d0a0
Var #74134E80A4|74134e80a4|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|d0a4
Var #74134E80A8|74134e80a8|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|d0a8
Var #74134E80AC|74134e80ac|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|d0ac
Var #74134E80B0|74134e80b0|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|d0b0
Var #74134E80B4|74134e80b4|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|d0b4
Var #74134E80B8|74134e80b8|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|d0b8
Var #74134E80BC|74134e80bc|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|d0bc
Var #74134E80C0|74134e80c0|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|d0c0
Var #74134E80C4|74134e80c4|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|d0c4
Var #74134E80C8|74134e80c8|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|d0c8
Var #74134E80CC|74134e80cc|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|d0cc
Var #74134E80D0|74134e80d0|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|d0d0
Var #74134E80D4|74134e80d4|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|d0d4
Var #74134E80D8|74134e80d8|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|d0d8
Var #74134E80DC|74134e80dc|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|d0dc
Var #74134E80E0|74134e80e0|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|d0e0
Var #74134E80E4|74134e80e4|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|d0e4
Var #74134E80E8|74134e80e8|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|d0e8
Var #74134E80EC|74134e80ec|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|d0ec
Var #74134E80F0|74134e80f0|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|d0f0
Var #74134E80F4|74134e80f4|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|d0f4
Var #74134E80F8|74134e80f8|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|d0f8
Var #74134E80FC|74134e80fc|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|d0fc
Var #74134E8100|74134e8100|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|d100
Var #74134E8104|74134e8104|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|d104
Var #74134E8108|74134e8108|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|d108
Var #74134E810C|74134e810c|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|d10c
Var #74134E8110|74134e8110|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|d110
Var #74134E8114|74134e8114|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|d114
Var #74134E8118|74134e8118|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|d118
Var #74134E811C|74134e811c|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|d11c
Var #74134E8120|74134e8120|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|d120
Var #74134E8124|74134e8124|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|d124
Var #74134E8128|74134e8128|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|d128
Var #74134E812C|74134e812c|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|d12c
Var #74134E8130|74134e8130|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|d130
Var #74134E8134|74134e8134|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|d134
Var #74134E8138|74134e8138|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|d138
Var #74134E813C|74134e813c|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|d13c
Var #74134E8140|74134e8140|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|d140
Var #74134E8144|74134e8144|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|d144
Var #74134E8148|74134e8148|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|d148
Var #74134E814C|74134e814c|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|d14c
Var #74134E8150|74134e8150|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|d150
Var #74134E8154|74134e8154|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|d154
Var #74134E8158|74134e8158|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|d158
Var #74134E815C|74134e815c|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|d15c
Var #74134E8160|74134e8160|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|d160
Var #74134E8164|74134e8164|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|d164
Var #74134E8168|74134e8168|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|d168
Var #74134E816C|74134e816c|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|d16c
Var #74134E8170|74134e8170|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|d170
Var #74134E8174|74134e8174|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|d174
Var #74134E8178|74134e8178|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|d178
Var #74134E817C|74134e817c|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|d17c
Var #74134E8180|74134e8180|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|d180
Var #74134E8184|74134e8184|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|d184
Var #74134E8188|74134e8188|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|d188
Var #74134E818C|74134e818c|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|d18c
Var #74134E8190|74134e8190|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|d190
Var #74134E8194|74134e8194|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|d194
Var #74134E8198|74134e8198|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|d198
Var #74134E819C|74134e819c|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|d19c
Var #74134E81A0|74134e81a0|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|d1a0
Var #74134E81A4|74134e81a4|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|d1a4
Var #74134E81A8|74134e81a8|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|d1a8
Var #74134E81AC|74134e81ac|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|d1ac
Var #74134E81B0|74134e81b0|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|d1b0
Var #74134E81B4|74134e81b4|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|d1b4
Var #74134E81B8|74134e81b8|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|d1b8
Var #74134E81BC|74134e81bc|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|d1bc
Var #74134E81C0|74134e81c0|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|d1c0
Var #74134E81C4|74134e81c4|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|d1c4
Var #74134E81C8|74134e81c8|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|d1c8
Var #74134E81CC|74134e81cc|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|d1cc
Var #74134E81D0|74134e81d0|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|d1d0
Var #74134E81D4|74134e81d4|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|d1d4
Var #74134E81D8|74134e81d8|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|d1d8
Var #74134E81DC|74134e81dc|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|d1dc
Var #74134E81E0|74134e81e0|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|d1e0
Var #74134E81E4|74134e81e4|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|d1e4
Var #74134E81E8|74134e81e8|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|d1e8
Var #74134E81EC|74134e81ec|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|d1ec
Var #74134E81F0|74134e81f0|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|d1f0
Var #74134E81F4|74134e81f4|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|d1f4
Var #74134E81F8|74134e81f8|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|d1f8
Var #74134E81FC|74134e81fc|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|d1fc
Var #74134E8200|74134e8200|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|d200
Var #74134E8204|74134e8204|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|d204
Var #74134E8208|74134e8208|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|d208
Var #74134E820C|74134e820c|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|d20c
Var #74134E8210|74134e8210|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|d210
Var #74134E8214|74134e8214|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|d214
Var #74134E8218|74134e8218|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|d218
Var #74134E821C|74134e821c|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|d21c
Var #74134E8220|74134e8220|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|d220
Var #74134E8224|74134e8224|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|d224
Var #74134E8228|74134e8228|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|d228
Var #74134E822C|74134e822c|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|d22c
Var #74134E8230|74134e8230|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|d230
Var #74134E8234|74134e8234|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|d234
Var #74134E8238|74134e8238|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|d238
Var #74134E823C|74134e823c|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|d23c
Var #74134E8240|74134e8240|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|d240
Var #74134E8244|74134e8244|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|d244
Var #74134E8248|74134e8248|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|d248
Var #74134E824C|74134e824c|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|d24c
Var #74134E8250|74134e8250|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|d250
Var #74134E8254|74134e8254|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|d254
Var #74134E8258|74134e8258|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|d258
Var #74134E825C|74134e825c|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|d25c
Var #74134E8260|74134e8260|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|d260
Var #74134E8264|74134e8264|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|d264
Var #74134E8268|74134e8268|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|d268
Var #74134E826C|74134e826c|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|d26c
Var #74134E8270|74134e8270|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|d270
Var #74134E8274|74134e8274|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|d274
Var #74134E8278|74134e8278|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|d278
Var #74134E827C|74134e827c|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|d27c
Var #74134E8280|74134e8280|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|d280
Var #74134E8284|74134e8284|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|d284
Var #74134E8288|74134e8288|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|d288
Var #74134E828C|74134e828c|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|d28c
Var #74134E8290|74134e8290|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|d290
Var #74134E8294|74134e8294|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|d294
Var #74134E8298|74134e8298|4|daca82a6|0|0|0|0|rw-p|/data/app/~~CEpzcTgzLhnPsxFZEwNn0A==/jp.co.ponos.battlecatskr-_ERUnC2k8RAIp7PAI2_1Ig==/lib/arm64/libnative-lib.so:bss|d298
]])

function Main()
local menu= gg.choice({
"[ 메뉴 ] 레어 뽑기 확률 조작",
"[ 메뉴 ] 콜라보 뽑기 확률 조작",
"냥코 생성기",
"냥코 제거기",
"유닛 코드 이미지 파일 다운로드",
"XP 개수 조작",
"통조림 개수 조작",
"아이템 개수 조작",
"개다래 개수 조작",
"스토리 모드 올클리어",
"냥코 클럽 시간 조작",
"티켓 개수 조작",
"전투 즉시 승리",
"캣츠아이 개수 조작 (업데이트중)",
"스크립트 종료"}, nil, ([[현재 최신버전입니다.]]))
if menu == 1 then MENU2() end
if menu == 2 then MENU3() end
if menu == 3 then MAKER() end
if menu == 4 then REMOVER() end
if menu == 5 then Image() end
if menu == 6 then T1() end
if menu == 7 then T2() end
if menu == 8 then T3() end
if menu == 9 then Apple() end
if menu == 10 then All() end
if menu == 11 then Club() end
if menu == 12 then Ticket() end
if menu == 13 then T4() end
if menu == 14 then CatEye() end
if menu == 15 then T5() end
HOMEDM=-1
end

function CatEye()
harpp = gg.prompt({'캣츠아이 (EX) ', '캣츠아이 (레어) ', '캣츠아이 (슈퍼 레어)', '캣츠아이 (울트라 슈퍼 레어)', '캣츠아이 (레전드 레어)'},
{[1]='0 이상의 값 (빈칸 안됨)', [2]='0 이상의 값 (빈칸 안됨)', [3]='0 이상의 값 (빈칸 안됨)', [4]='0 이상의 값 (빈칸 안됨)', [5]='0 이상의 값 (빈칸 안됨)'})
if harpp == nil then
else
gg.setRanges(gg.REGION_CODE_APP)
gg.clearList()
gg.clearResults()
gg.searchNumber("1,179,403,647;65,794;11,993,091;736,784;64;8,342,360;3,670,080:53", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("1,179,403,647", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.processPause()
local t = gg.getResults(7) 
gg.addListItems(t)
local t3 = {} 
for i, v in ipairs(t) do
	table.insert(t3, {address=v.address+0xB1ED24,flags=gg.TYPE_DWORD,value=harpp[1],freeze=false})
	table.insert(t3, {address=v.address+0xB1ED28,flags=gg.TYPE_DWORD,value=0,freeze=false})
	table.insert(t3, {address=v.address+0xB1ED2C,flags=gg.TYPE_DWORD,value=harpp[2],freeze=false})
	table.insert(t3, {address=v.address+0xB1ED30,flags=gg.TYPE_DWORD,value=0,freeze=false})
	table.insert(t3, {address=v.address+0xB1ED34,flags=gg.TYPE_DWORD,value=harpp[3],freeze=false})
	table.insert(t3, {address=v.address+0xB1ED38,flags=gg.TYPE_DWORD,value=0,freeze=false})
	table.insert(t3, {address=v.address+0xB1ED3C,flags=gg.TYPE_DWORD,value=harpp[4],freeze=false})
	table.insert(t3, {address=v.address+0xB1ED40,flags=gg.TYPE_DWORD,value=0,freeze=false})
	table.insert(t3, {address=v.address+0xB1ED44,flags=gg.TYPE_DWORD,value=harpp[5],freeze=false})
	table.insert(t3, {address=v.address+0xB1ED48,flags=gg.TYPE_DWORD,value=0,freeze=false})
end
gg.addListItems(t3)
revert = gg.getListItems()
gg.setValues(t3)
gg.processResume()
gg.toast("적용이 완료되었습니다.")
end
end

function REMOVER()
harpp = gg.prompt({'삭제할 캐릭터의 유닛 코드를 입력해주세요 (한번에 한 마리만)'}, nil, {'number'})
if harpp == nil then
else
gg.loadList("/sdcard/doc.txt")
gg.loadResults(gg.getListItems("/sdcard/doc.txt"))
local qresult = gg.getResults(999)

gg.addListItems(qresult)
	_address = qresult[1].address
	_value = qresult[1].value
	gg.setValues({{address = _address+4*harpp[1]-4, flags = gg.TYPE_DWORD, value = _value+1}})
gg.toast("적용이 완료되었습니다.")
gg.clearList()
gg.clearResults()
end
end

function Image()
gg.clearResults() 
gg.clearList()
gg.alert("이미지 파일 다운로드를 시작합니다.")
gg.toast("파일을 다운로드중입니다...")
data = gg.makeRequest("https://docterhakase2.000webhostapp.com/DocterHakase.png").content
io.open("/sdcard/UnitNumber.png","w+"):write(data):close();
gg.alert([[다운로드가 완료되었습니다.
/storage/emulated/0/UnitNumber.png 파일을 확인하세요.]])
end

function T1()
harpp = gg.prompt({'원하는 수치를 입력해주세요 (99999999개 미만으로)'}, nil, {'number'})
if harpp == nil then
else
gg.setRanges(gg.REGION_CODE_APP)
gg.clearList()
gg.clearResults()
gg.searchNumber("1,179,403,647;65,794;11,993,091;736,784;64;8,342,360;3,670,080:53", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("1,179,403,647", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.processPause()
local t = gg.getResults(7)
gg.addListItems(t)
local t3 = {}
for i, v in ipairs(t) do
	table.insert(t3, {address=v.address+0x800AA8,flags=gg.TYPE_DWORD,value=harpp[1],freeze=false})
	table.insert(t3, {address=v.address+0x800AAC,flags=gg.TYPE_DWORD,value=0,freeze=false})
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
gg.searchNumber("1,179,403,647;65,794;11,993,091;736,784;64;8,342,360;3,670,080:53", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("1,179,403,647", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.processPause()
local t = gg.getResults(7)
gg.addListItems(t)
local t3 = {}
for i, v in ipairs(t) do
	table.insert(t3, {address=v.address+0x8009A8,flags=gg.TYPE_DWORD,value=harpp[1],freeze=false})
	table.insert(t3, {address=v.address+0x8009AC,flags=gg.TYPE_DWORD,value=0,freeze=false})
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
gg.searchNumber("1,179,403,647;65,794;11,993,091;736,784;64;8,342,360;3,670,080:53", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("1,179,403,647", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.processPause()
local t = gg.getResults(7)
gg.addListItems(t)
local t3 = {}
for i, v in ipairs(t) do
	table.insert(t3, {address=v.address+0x804F40,flags=gg.TYPE_DWORD,value=harpp[1],freeze=false})
	table.insert(t3, {address=v.address+0x804F44,flags=gg.TYPE_DWORD,value=0,freeze=false})
	table.insert(t3, {address=v.address+0x804F48,flags=gg.TYPE_DWORD,value=harpp[1],freeze=false})
	table.insert(t3, {address=v.address+0x804F4C,flags=gg.TYPE_DWORD,value=0,freeze=false})
	table.insert(t3, {address=v.address+0x804F50,flags=gg.TYPE_DWORD,value=harpp[1],freeze=false})
	table.insert(t3, {address=v.address+0x804F54,flags=gg.TYPE_DWORD,value=0,freeze=false})
	table.insert(t3, {address=v.address+0x804F58,flags=gg.TYPE_DWORD,value=harpp[1],freeze=false})
	table.insert(t3, {address=v.address+0x804F5C,flags=gg.TYPE_DWORD,value=0,freeze=false})
	table.insert(t3, {address=v.address+0x804F60,flags=gg.TYPE_DWORD,value=harpp[1],freeze=false})
	table.insert(t3, {address=v.address+0x804F64,flags=gg.TYPE_DWORD,value=0,freeze=false})
	table.insert(t3, {address=v.address+0x804F68,flags=gg.TYPE_DWORD,value=harpp[1],freeze=false})
	table.insert(t3, {address=v.address+0x804F6C,flags=gg.TYPE_DWORD,value=0,freeze=false})
    
end
gg.addListItems(t3)
revert = gg.getListItems()
gg.setValues(t3)
gg.processResume()
gg.toast("적용이 완료되었습니다.")
end
end

function MAKER()
harpp = gg.prompt({'원하는 캐릭터의 유닛 코드를 입력해주세요 (한번에 한 마리만)'}, nil, {'number'})
if harpp == nil then
else
gg.loadList("/sdcard/doc.txt")
gg.loadResults(gg.getListItems("/sdcard/doc.txt"))
local qresult = gg.getResults(999)

gg.addListItems(qresult)
	_address = qresult[1].address
	_value = qresult[1].value
	gg.setValues({{address = _address+4*harpp[1]-4, flags = gg.TYPE_DWORD, value = _value}})
gg.toast("적용이 완료되었습니다.")
gg.clearList()
gg.clearResults()
end
end


function Apple()
harpp = gg.prompt({'원하는 수치를 입력해주세요 (8개 미만으로)'}, nil, {'number'})
if harpp == nil then
else
gg.setRanges(gg.REGION_OTHER)
gg.clearList()
gg.clearResults()
gg.searchNumber("129;129;0;1;2;3;4;5;6;7;8;9;10;11;12;13;14::505", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.processPause()
local t = gg.getResults(70)
gg.addListItems(t)
local t3 = {}
for i, v in ipairs(t) do
	table.insert(t3, {address=v.address-0x44,flags=gg.TYPE_DWORD,value=harpp[1],freeze=false})
	table.insert(t3, {address=v.address-0x3C,flags=gg.TYPE_DWORD,value=harpp[1],freeze=false})
	table.insert(t3, {address=v.address-0x34,flags=gg.TYPE_DWORD,value=harpp[1],freeze=false})
	table.insert(t3, {address=v.address-0x2C,flags=gg.TYPE_DWORD,value=harpp[1],freeze=false})
	table.insert(t3, {address=v.address-0x24,flags=gg.TYPE_DWORD,value=harpp[1],freeze=false})
	table.insert(t3, {address=v.address-0x1C,flags=gg.TYPE_DWORD,value=harpp[1],freeze=false})
	table.insert(t3, {address=v.address-0x14,flags=gg.TYPE_DWORD,value=harpp[1],freeze=false})
	table.insert(t3, {address=v.address-0xC,flags=gg.TYPE_DWORD,value=harpp[1],freeze=false})
	table.insert(t3, {address=v.address-0x4,flags=gg.TYPE_DWORD,value=harpp[1],freeze=false})
	table.insert(t3, {address=v.address+0x4,flags=gg.TYPE_DWORD,value=harpp[1],freeze=false})
	table.insert(t3, {address=v.address+0xC,flags=gg.TYPE_DWORD,value=harpp[1],freeze=false})
	table.insert(t3, {address=v.address+0x14,flags=gg.TYPE_DWORD,value=harpp[1],freeze=false})
	table.insert(t3, {address=v.address+0x1C,flags=gg.TYPE_DWORD,value=harpp[1],freeze=false})
	table.insert(t3, {address=v.address+0x24,flags=gg.TYPE_DWORD,value=harpp[1],freeze=false})
	table.insert(t3, {address=v.address+0x2C,flags=gg.TYPE_DWORD,value=harpp[1],freeze=false})
end
gg.addListItems(t3)
revert = gg.getListItems()
gg.setValues(t3)
gg.processResume()
gg.toast("적용이 완료되었습니다.")
end
end

function All()
gg.setRanges(gg.REGION_CODE_APP)
gg.clearList()
gg.clearResults()
gg.searchNumber("1,179,403,647;65,794;11,993,091;736,784;64;8,342,360;3,670,080:53", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("1,179,403,647", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
local t = gg.getResults(7)
gg.addListItems(t)
local t3 = {}
for i, v in ipairs(t) do
table.insert(t3, {address=v.address+0x800FC4,flags=gg.TYPE_DWORD,value=48,freeze=false})
table.insert(t3, {address=v.address+0x800FC8,flags=gg.TYPE_DWORD,value=48,freeze=false})
table.insert(t3, {address=v.address+0x800FCC,flags=gg.TYPE_DWORD,value=48,freeze=false})
table.insert(t3, {address=v.address+0x800FD0,flags=gg.TYPE_DWORD,value=48,freeze=false})
table.insert(t3, {address=v.address+0x800FD4,flags=gg.TYPE_DWORD,value=48,freeze=false})
table.insert(t3, {address=v.address+0x800FD8,flags=gg.TYPE_DWORD,value=48,freeze=false})
table.insert(t3, {address=v.address+0x800FDC,flags=gg.TYPE_DWORD,value=48,freeze=false})
table.insert(t3, {address=v.address+0x800FE0,flags=gg.TYPE_DWORD,value=48,freeze=false})
table.insert(t3, {address=v.address+0x800FE4,flags=gg.TYPE_DWORD,value=48,freeze=false})
table.insert(t3, {address=v.address+0x800FE8,flags=gg.TYPE_DWORD,value=48,freeze=false})
table.insert(t3, {address=v.address+0x800FEC,flags=gg.TYPE_DWORD,value=0,freeze=false})
end
gg.addListItems(t3)
revert = gg.getListItems()
gg.setValues(t3)
gg.toast("적용이 완료되었습니다.")
end

function Club()
harpp = gg.prompt({'원하는 수치를 입력해주세요 (5분 = 10000)'}, nil, {'number'})
if harpp == nil then
else
gg.setRanges(gg.REGION_CODE_APP)
gg.clearList()
gg.clearResults()
gg.searchNumber("1,179,403,647;65,794;11,993,091;736,784;64;8,342,360;3,670,080:53", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("1,179,403,647", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.processPause()
local t = gg.getResults(7)
gg.addListItems(t)
local t3 = {}
for i, v in ipairs(t) do
	table.insert(t3, {address=v.address+0xA19DCC,flags=gg.TYPE_DWORD,value=harpp[1],freeze=false})
end
gg.addListItems(t3)
revert = gg.getListItems()
gg.setValues(t3)
gg.processResume()
gg.toast("적용이 완료되었습니다.")
end
end

function Ticket()
harpp = gg.prompt({'원하는 수치를 입력해주세요 (999개 미만으로)'}, nil, {'number'})
if harpp == nil then
else
gg.setRanges(gg.REGION_CODE_APP)
gg.clearList()
gg.clearResults()
gg.searchNumber("1,179,403,647;65,794;11,993,091;736,784;64;8,342,360;3,670,080:53", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("1,179,403,647", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.processPause()
local t = gg.getResults(7)
gg.addListItems(t)
local t3 = {}
for i, v in ipairs(t) do
	table.insert(t3, {address=v.address+0x9C6BE0,flags=gg.TYPE_DWORD,value=harpp[1],freeze=false})
	table.insert(t3, {address=v.address+0x9C6BE4,flags=gg.TYPE_DWORD,value=0,freeze=false})
	table.insert(t3, {address=v.address+0x9C6BE8,flags=gg.TYPE_DWORD,value=harpp[1],freeze=false})
	table.insert(t3, {address=v.address+0x9C6BEC,flags=gg.TYPE_DWORD,value=0,freeze=false})
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
gg.searchNumber("1,179,403,647;65,794;11,993,091;736,784;64;8,342,360;3,670,080:53", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("1,179,403,647", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
local t = gg.getResults(7)
gg.addListItems(t)
local t3 = {}
for i, v in ipairs(t) do
table.insert(t3, {address=v.address+0x8338DC,flags=gg.TYPE_DWORD,value=0,freeze=false})
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
현재 일정은 [ 엘리멘탈 픽시즈 ] 입니다.]]))
if menu1 == 1 then P1() end
if menu1 == 2 then P2() end
if menu1 == 3 then P3() end
if menu1 == 4 then P4() end
if menu1 == 5 then Main() end
HOMEDM=-1
end


function P1()
gg.setRanges(gg.REGION_OTHER)
gg.clearList()
gg.clearResults()
gg.searchNumber("538;150:5", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("150", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.processPause()
local p = gg.getResults(7)
gg.addListItems(p)
local p3 = {}
for i, v in ipairs(p) do
	table.insert(p3, {address=v.address+0x10,flags=gg.TYPE_DWORD,value=0,freeze=false})
	table.insert(p3, {address=v.address+0x14,flags=gg.TYPE_DWORD,value=10000,freeze=false})
            table.insert(p3, {address=v.address+0x18,flags=gg.TYPE_DWORD,value=0,freeze=false})
	table.insert(p3, {address=v.address+0x1C,flags=gg.TYPE_DWORD,value=0,freeze=false})
             table.insert(p3, {address=v.address+0x20,flags=gg.TYPE_DWORD,value=0,freeze=false})
	table.insert(p3, {address=v.address+0x24,flags=gg.TYPE_DWORD,value=0,freeze=false})
end
gg.addListItems(p3)
revert = gg.getListItems()
gg.setValues(p3)
gg.processResume()
gg.toast("적용이 완료되었습니다.")
end

function P2()
gg.setRanges(gg.REGION_OTHER)
gg.clearList()
gg.clearResults()
gg.searchNumber("538;150:5", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("150", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.processPause()
local p = gg.getResults(7)
gg.addListItems(p)
local p3 = {}
for i, v in ipairs(p) do
	table.insert(p3, {address=v.address+0x10,flags=gg.TYPE_DWORD,value=0,freeze=false})
	table.insert(p3, {address=v.address+0x14,flags=gg.TYPE_DWORD,value=0,freeze=false})
            table.insert(p3, {address=v.address+0x18,flags=gg.TYPE_DWORD,value=10000,freeze=false})
	table.insert(p3, {address=v.address+0x1C,flags=gg.TYPE_DWORD,value=0,freeze=false})
             table.insert(p3, {address=v.address+0x20,flags=gg.TYPE_DWORD,value=0,freeze=false})
	table.insert(p3, {address=v.address+0x24,flags=gg.TYPE_DWORD,value=0,freeze=false})
end
gg.addListItems(p3)
revert = gg.getListItems()
gg.setValues(p3)
gg.processResume()
gg.toast("적용이 완료되었습니다.")
end

function P3()
gg.setRanges(gg.REGION_OTHER)
gg.clearList()
gg.clearResults()
gg.searchNumber("538;150:5", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("150", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.processPause()
local p = gg.getResults(7)
gg.addListItems(p)
local p3 = {}
for i, v in ipairs(p) do
	table.insert(p3, {address=v.address+0x10,flags=gg.TYPE_DWORD,value=0,freeze=false})
	table.insert(p3, {address=v.address+0x14,flags=gg.TYPE_DWORD,value=0,freeze=false})
            table.insert(p3, {address=v.address+0x18,flags=gg.TYPE_DWORD,value=0,freeze=false})
	table.insert(p3, {address=v.address+0x1C,flags=gg.TYPE_DWORD,value=10000,freeze=false})
             table.insert(p3, {address=v.address+0x20,flags=gg.TYPE_DWORD,value=0,freeze=false})
	table.insert(p3, {address=v.address+0x24,flags=gg.TYPE_DWORD,value=0,freeze=false})
end
gg.addListItems(p3)
revert = gg.getListItems()
gg.setValues(p3)
gg.processResume()
gg.toast("적용이 완료되었습니다.")
end

function P4()
gg.setRanges(gg.REGION_OTHER)
gg.clearList()
gg.clearResults()
gg.searchNumber("538;150:5", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("150", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.processPause()
local p = gg.getResults(7)
gg.addListItems(p)
local p3 = {}
for i, v in ipairs(p) do
	table.insert(p3, {address=v.address+0x10,flags=gg.TYPE_DWORD,value=0,freeze=false})
	table.insert(p3, {address=v.address+0x14,flags=gg.TYPE_DWORD,value=0,freeze=false})
            table.insert(p3, {address=v.address+0x18,flags=gg.TYPE_DWORD,value=0,freeze=false})
	table.insert(p3, {address=v.address+0x1C,flags=gg.TYPE_DWORD,value=0,freeze=false})
             table.insert(p3, {address=v.address+0x20,flags=gg.TYPE_DWORD,value=10000,freeze=false})
	table.insert(p3, {address=v.address+0x24,flags=gg.TYPE_DWORD,value=0,freeze=false})
end
gg.addListItems(p3)
revert = gg.getListItems()
gg.setValues(p3)
gg.processResume()
gg.toast("적용이 완료되었습니다.")
end

function MENU3()
menu1= gg.choice({
"Only Rare",
"Only Super Rare",
"Only Ultra Super Rare",
"Only Legend Rare",
"메인 메뉴로 이동"}, nil, ([[레전드레어가 없는 시리즈에서 Only Legend Rare 기능을 사용하면 고양이만 나옵니다.
현재 일정은 [ 하츠네 미쿠 2021 ] 입니다.]]))
if menu1 == 1 then K1() end
if menu1 == 2 then K2() end
if menu1 == 3 then K3() end
if menu1 == 4 then K4() end
if menu1 == 5 then Main() end
HOMEDM=-1
end

function K1()
gg.setRanges(gg.REGION_OTHER)
gg.clearList()
gg.clearResults()
gg.searchNumber("584;150:5", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
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

function K2()
gg.setRanges(gg.REGION_OTHER)
gg.clearList()
gg.clearResults()
gg.searchNumber("584;150:5", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
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

function K3()
gg.setRanges(gg.REGION_OTHER)
gg.clearList()
gg.clearResults()
gg.searchNumber("584;150:5", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
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

function K4()
gg.setRanges(gg.REGION_OTHER)
gg.clearList()
gg.clearResults()
gg.searchNumber("584;150:5", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
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

