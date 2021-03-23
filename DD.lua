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

gg.alert([[2021.03.23 업데이트 내역

- 냥코 생성기 기능이 추가 되었습니다.
- 냥코 제거기 기능이 추가 되었습니다.
- 유닛 코드 이미지 파일 다운로드 기능이 추가 되었습니다.
- 캣츠아이 개수 조작 기능이 추가 되었습니다.]])

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

io.open("/sdcard/Android/data/doc.txt","w"):write([[
3257
Var #A1A20C0C|a1a20c0c|4|d347c60a|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7c0c
Var #A1A20C10|a1a20c10|4|d347c60a|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7c10
Var #A1A20C14|a1a20c14|4|d347c60a|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7c14
Var #A1A20C18|a1a20c18|4|d347c60a|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7c18
Var #A1A20C1C|a1a20c1c|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7c1c
Var #A1A20C20|a1a20c20|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7c20
Var #A1A20C24|a1a20c24|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7c24
Var #A1A20C28|a1a20c28|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7c28
Var #A1A20C2C|a1a20c2c|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7c2c
Var #A1A20C30|a1a20c30|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7c30
Var #A1A20C34|a1a20c34|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7c34
Var #A1A20C38|a1a20c38|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7c38
Var #A1A20C3C|a1a20c3c|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7c3c
Var #A1A20C40|a1a20c40|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7c40
Var #A1A20C44|a1a20c44|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7c44
Var #A1A20C48|a1a20c48|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7c48
Var #A1A20C4C|a1a20c4c|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7c4c
Var #A1A20C50|a1a20c50|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7c50
Var #A1A20C54|a1a20c54|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7c54
Var #A1A20C58|a1a20c58|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7c58
Var #A1A20C5C|a1a20c5c|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7c5c
Var #A1A20C60|a1a20c60|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7c60
Var #A1A20C64|a1a20c64|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7c64
Var #A1A20C68|a1a20c68|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7c68
Var #A1A20C6C|a1a20c6c|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7c6c
Var #A1A20C70|a1a20c70|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7c70
Var #A1A20C74|a1a20c74|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7c74
Var #A1A20C78|a1a20c78|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7c78
Var #A1A20C7C|a1a20c7c|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7c7c
Var #A1A20C80|a1a20c80|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7c80
Var #A1A20C84|a1a20c84|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7c84
Var #A1A20C88|a1a20c88|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7c88
Var #A1A20C8C|a1a20c8c|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7c8c
Var #A1A20C90|a1a20c90|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7c90
Var #A1A20C94|a1a20c94|4|d347c60a|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7c94
Var #A1A20C98|a1a20c98|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7c98
Var #A1A20C9C|a1a20c9c|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7c9c
Var #A1A20CA0|a1a20ca0|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7ca0
Var #A1A20CA4|a1a20ca4|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7ca4
Var #A1A20CA8|a1a20ca8|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7ca8
Var #A1A20CAC|a1a20cac|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7cac
Var #A1A20CB0|a1a20cb0|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7cb0
Var #A1A20CB4|a1a20cb4|4|d347c60a|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7cb4
Var #A1A20CB8|a1a20cb8|4|d347c60a|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7cb8
Var #A1A20CBC|a1a20cbc|4|d347c60a|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7cbc
Var #A1A20CC0|a1a20cc0|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7cc0
Var #A1A20CC4|a1a20cc4|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7cc4
Var #A1A20CC8|a1a20cc8|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7cc8
Var #A1A20CCC|a1a20ccc|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7ccc
Var #A1A20CD0|a1a20cd0|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7cd0
Var #A1A20CD4|a1a20cd4|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7cd4
Var #A1A20CD8|a1a20cd8|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7cd8
Var #A1A20CDC|a1a20cdc|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7cdc
Var #A1A20CE0|a1a20ce0|4|d347c60a|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7ce0
Var #A1A20CE4|a1a20ce4|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7ce4
Var #A1A20CE8|a1a20ce8|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7ce8
Var #A1A20CEC|a1a20cec|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7cec
Var #A1A20CF0|a1a20cf0|4|d347c60a|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7cf0
Var #A1A20CF4|a1a20cf4|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7cf4
Var #A1A20CF8|a1a20cf8|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7cf8
Var #A1A20CFC|a1a20cfc|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7cfc
Var #A1A20D00|a1a20d00|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7d00
Var #A1A20D04|a1a20d04|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7d04
Var #A1A20D08|a1a20d08|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7d08
Var #A1A20D0C|a1a20d0c|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7d0c
Var #A1A20D10|a1a20d10|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7d10
Var #A1A20D14|a1a20d14|4|d347c60a|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7d14
Var #A1A20D18|a1a20d18|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7d18
Var #A1A20D1C|a1a20d1c|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7d1c
Var #A1A20D20|a1a20d20|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7d20
Var #A1A20D24|a1a20d24|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7d24
Var #A1A20D28|a1a20d28|4|d347c60a|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7d28
Var #A1A20D2C|a1a20d2c|4|d347c60a|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7d2c
Var #A1A20D30|a1a20d30|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7d30
Var #A1A20D34|a1a20d34|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7d34
Var #A1A20D38|a1a20d38|4|d347c60a|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7d38
Var #A1A20D3C|a1a20d3c|4|d347c60a|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7d3c
Var #A1A20D40|a1a20d40|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7d40
Var #A1A20D44|a1a20d44|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7d44
Var #A1A20D48|a1a20d48|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7d48
Var #A1A20D4C|a1a20d4c|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7d4c
Var #A1A20D50|a1a20d50|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7d50
Var #A1A20D54|a1a20d54|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7d54
Var #A1A20D58|a1a20d58|4|d347c60a|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7d58
Var #A1A20D5C|a1a20d5c|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7d5c
Var #A1A20D60|a1a20d60|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7d60
Var #A1A20D64|a1a20d64|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7d64
Var #A1A20D68|a1a20d68|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7d68
Var #A1A20D6C|a1a20d6c|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7d6c
Var #A1A20D70|a1a20d70|4|d347c60a|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7d70
Var #A1A20D74|a1a20d74|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7d74
Var #A1A20D78|a1a20d78|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7d78
Var #A1A20D7C|a1a20d7c|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7d7c
Var #A1A20D80|a1a20d80|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7d80
Var #A1A20D84|a1a20d84|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7d84
Var #A1A20D88|a1a20d88|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7d88
Var #A1A20D8C|a1a20d8c|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7d8c
Var #A1A20D90|a1a20d90|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7d90
Var #A1A20D94|a1a20d94|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7d94
Var #A1A20D98|a1a20d98|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7d98
Var #A1A20D9C|a1a20d9c|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7d9c
Var #A1A20DA0|a1a20da0|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7da0
Var #A1A20DA4|a1a20da4|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7da4
Var #A1A20DA8|a1a20da8|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7da8
Var #A1A20DAC|a1a20dac|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7dac
Var #A1A20DB0|a1a20db0|4|d347c60a|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7db0
Var #A1A20DB4|a1a20db4|4|d347c60a|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7db4
Var #A1A20DB8|a1a20db8|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7db8
Var #A1A20DBC|a1a20dbc|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7dbc
Var #A1A20DC0|a1a20dc0|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7dc0
Var #A1A20DC4|a1a20dc4|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7dc4
Var #A1A20DC8|a1a20dc8|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7dc8
Var #A1A20DCC|a1a20dcc|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7dcc
Var #A1A20DD0|a1a20dd0|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7dd0
Var #A1A20DD4|a1a20dd4|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7dd4
Var #A1A20DD8|a1a20dd8|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7dd8
Var #A1A20DDC|a1a20ddc|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7ddc
Var #A1A20DE0|a1a20de0|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7de0
Var #A1A20DE4|a1a20de4|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7de4
Var #A1A20DE8|a1a20de8|4|d347c60a|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7de8
Var #A1A20DEC|a1a20dec|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7dec
Var #A1A20DF0|a1a20df0|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7df0
Var #A1A20DF4|a1a20df4|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7df4
Var #A1A20DF8|a1a20df8|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7df8
Var #A1A20DFC|a1a20dfc|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7dfc
Var #A1A20E00|a1a20e00|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7e00
Var #A1A20E04|a1a20e04|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7e04
Var #A1A20E08|a1a20e08|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7e08
Var #A1A20E0C|a1a20e0c|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7e0c
Var #A1A20E10|a1a20e10|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7e10
Var #A1A20E14|a1a20e14|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7e14
Var #A1A20E18|a1a20e18|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7e18
Var #A1A20E1C|a1a20e1c|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7e1c
Var #A1A20E20|a1a20e20|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7e20
Var #A1A20E24|a1a20e24|4|d347c60a|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7e24
Var #A1A20E28|a1a20e28|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7e28
Var #A1A20E2C|a1a20e2c|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7e2c
Var #A1A20E30|a1a20e30|4|d347c60a|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7e30
Var #A1A20E34|a1a20e34|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7e34
Var #A1A20E38|a1a20e38|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7e38
Var #A1A20E3C|a1a20e3c|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7e3c
Var #A1A20E40|a1a20e40|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7e40
Var #A1A20E44|a1a20e44|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7e44
Var #A1A20E48|a1a20e48|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7e48
Var #A1A20E4C|a1a20e4c|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7e4c
Var #A1A20E50|a1a20e50|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7e50
Var #A1A20E54|a1a20e54|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7e54
Var #A1A20E58|a1a20e58|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7e58
Var #A1A20E5C|a1a20e5c|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7e5c
Var #A1A20E60|a1a20e60|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7e60
Var #A1A20E64|a1a20e64|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7e64
Var #A1A20E68|a1a20e68|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7e68
Var #A1A20E6C|a1a20e6c|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7e6c
Var #A1A20E70|a1a20e70|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7e70
Var #A1A20E74|a1a20e74|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7e74
Var #A1A20E78|a1a20e78|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7e78
Var #A1A20E7C|a1a20e7c|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7e7c
Var #A1A20E80|a1a20e80|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7e80
Var #A1A20E84|a1a20e84|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7e84
Var #A1A20E88|a1a20e88|4|d347c60a|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7e88
Var #A1A20E8C|a1a20e8c|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7e8c
Var #A1A20E90|a1a20e90|4|d347c60a|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7e90
Var #A1A20E94|a1a20e94|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7e94
Var #A1A20E98|a1a20e98|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7e98
Var #A1A20E9C|a1a20e9c|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7e9c
Var #A1A20EA0|a1a20ea0|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7ea0
Var #A1A20EA4|a1a20ea4|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7ea4
Var #A1A20EA8|a1a20ea8|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7ea8
Var #A1A20EAC|a1a20eac|4|d347c60a|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7eac
Var #A1A20EB0|a1a20eb0|4|d347c60a|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7eb0
Var #A1A20EB4|a1a20eb4|4|d347c60a|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7eb4
Var #A1A20EB8|a1a20eb8|4|d347c60a|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7eb8
Var #A1A20EBC|a1a20ebc|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7ebc
Var #A1A20EC0|a1a20ec0|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7ec0
Var #A1A20EC4|a1a20ec4|4|d347c60a|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7ec4
Var #A1A20EC8|a1a20ec8|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7ec8
Var #A1A20ECC|a1a20ecc|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7ecc
Var #A1A20ED0|a1a20ed0|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7ed0
Var #A1A20ED4|a1a20ed4|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7ed4
Var #A1A20ED8|a1a20ed8|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7ed8
Var #A1A20EDC|a1a20edc|4|d347c60a|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7edc
Var #A1A20EE0|a1a20ee0|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7ee0
Var #A1A20EE4|a1a20ee4|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7ee4
Var #A1A20EE8|a1a20ee8|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7ee8
Var #A1A20EEC|a1a20eec|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7eec
Var #A1A20EF0|a1a20ef0|4|d347c60a|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7ef0
Var #A1A20EF4|a1a20ef4|4|d347c60a|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7ef4
Var #A1A20EF8|a1a20ef8|4|d347c60a|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7ef8
Var #A1A20EFC|a1a20efc|4|d347c60a|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7efc
Var #A1A20F00|a1a20f00|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7f00
Var #A1A20F04|a1a20f04|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7f04
Var #A1A20F08|a1a20f08|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7f08
Var #A1A20F0C|a1a20f0c|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7f0c
Var #A1A20F10|a1a20f10|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7f10
Var #A1A20F14|a1a20f14|4|d347c60a|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7f14
Var #A1A20F18|a1a20f18|4|d347c60a|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7f18
Var #A1A20F1C|a1a20f1c|4|d347c60a|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7f1c
Var #A1A20F20|a1a20f20|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7f20
Var #A1A20F24|a1a20f24|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7f24
Var #A1A20F28|a1a20f28|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7f28
Var #A1A20F2C|a1a20f2c|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7f2c
Var #A1A20F30|a1a20f30|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7f30
Var #A1A20F34|a1a20f34|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7f34
Var #A1A20F38|a1a20f38|4|d347c60a|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7f38
Var #A1A20F3C|a1a20f3c|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7f3c
Var #A1A20F40|a1a20f40|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7f40
Var #A1A20F44|a1a20f44|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7f44
Var #A1A20F48|a1a20f48|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7f48
Var #A1A20F4C|a1a20f4c|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7f4c
Var #A1A20F50|a1a20f50|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7f50
Var #A1A20F54|a1a20f54|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7f54
Var #A1A20F58|a1a20f58|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7f58
Var #A1A20F5C|a1a20f5c|4|d347c60a|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7f5c
Var #A1A20F60|a1a20f60|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7f60
Var #A1A20F64|a1a20f64|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7f64
Var #A1A20F68|a1a20f68|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7f68
Var #A1A20F6C|a1a20f6c|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7f6c
Var #A1A20F70|a1a20f70|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7f70
Var #A1A20F74|a1a20f74|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7f74
Var #A1A20F78|a1a20f78|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7f78
Var #A1A20F7C|a1a20f7c|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7f7c
Var #A1A20F80|a1a20f80|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7f80
Var #A1A20F84|a1a20f84|4|d347c60a|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7f84
Var #A1A20F88|a1a20f88|4|d347c60a|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7f88
Var #A1A20F8C|a1a20f8c|4|d347c60a|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7f8c
Var #A1A20F90|a1a20f90|4|d347c60a|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7f90
Var #A1A20F94|a1a20f94|4|d347c60a|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7f94
Var #A1A20F98|a1a20f98|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7f98
Var #A1A20F9C|a1a20f9c|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7f9c
Var #A1A20FA0|a1a20fa0|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7fa0
Var #A1A20FA4|a1a20fa4|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7fa4
Var #A1A20FA8|a1a20fa8|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7fa8
Var #A1A20FAC|a1a20fac|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7fac
Var #A1A20FB0|a1a20fb0|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7fb0
Var #A1A20FB4|a1a20fb4|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7fb4
Var #A1A20FB8|a1a20fb8|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7fb8
Var #A1A20FBC|a1a20fbc|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7fbc
Var #A1A20FC0|a1a20fc0|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7fc0
Var #A1A20FC4|a1a20fc4|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7fc4
Var #A1A20FC8|a1a20fc8|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7fc8
Var #A1A20FCC|a1a20fcc|4|d347c60a|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7fcc
Var #A1A20FD0|a1a20fd0|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7fd0
Var #A1A20FD4|a1a20fd4|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7fd4
Var #A1A20FD8|a1a20fd8|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7fd8
Var #A1A20FDC|a1a20fdc|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7fdc
Var #A1A20FE0|a1a20fe0|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7fe0
Var #A1A20FE4|a1a20fe4|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7fe4
Var #A1A20FE8|a1a20fe8|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7fe8
Var #A1A20FEC|a1a20fec|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7fec
Var #A1A20FF0|a1a20ff0|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7ff0
Var #A1A20FF4|a1a20ff4|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7ff4
Var #A1A20FF8|a1a20ff8|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7ff8
Var #A1A20FFC|a1a20ffc|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|7ffc
Var #A1A21000|a1a21000|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|8000
Var #A1A21004|a1a21004|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|8004
Var #A1A21008|a1a21008|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|8008
Var #A1A2100C|a1a2100c|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|800c
Var #A1A21010|a1a21010|4|d347c60a|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|8010
Var #A1A21014|a1a21014|4|d347c60a|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|8014
Var #A1A21018|a1a21018|4|d347c60a|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|8018
Var #A1A2101C|a1a2101c|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|801c
Var #A1A21020|a1a21020|4|d347c60a|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|8020
Var #A1A21024|a1a21024|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|8024
Var #A1A21028|a1a21028|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|8028
Var #A1A2102C|a1a2102c|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|802c
Var #A1A21030|a1a21030|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|8030
Var #A1A21034|a1a21034|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|8034
Var #A1A21038|a1a21038|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|8038
Var #A1A2103C|a1a2103c|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|803c
Var #A1A21040|a1a21040|4|d347c60a|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|8040
Var #A1A21044|a1a21044|4|d347c60a|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|8044
Var #A1A21048|a1a21048|4|d347c60a|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|8048
Var #A1A2104C|a1a2104c|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|804c
Var #A1A21050|a1a21050|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|8050
Var #A1A21054|a1a21054|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|8054
Var #A1A21058|a1a21058|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|8058
Var #A1A2105C|a1a2105c|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|805c
Var #A1A21060|a1a21060|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|8060
Var #A1A21064|a1a21064|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|8064
Var #A1A21068|a1a21068|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|8068
Var #A1A2106C|a1a2106c|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|806c
Var #A1A21070|a1a21070|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|8070
Var #A1A21074|a1a21074|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|8074
Var #A1A21078|a1a21078|4|d347c60a|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|8078
Var #A1A2107C|a1a2107c|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|807c
Var #A1A21080|a1a21080|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|8080
Var #A1A21084|a1a21084|4|d347c60a|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|8084
Var #A1A21088|a1a21088|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|8088
Var #A1A2108C|a1a2108c|4|d347c60a|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|808c
Var #A1A21090|a1a21090|4|d347c60a|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|8090
Var #A1A21094|a1a21094|4|d347c60a|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|8094
Var #A1A21098|a1a21098|4|d347c60a|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|8098
Var #A1A2109C|a1a2109c|4|d347c60a|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|809c
Var #A1A210A0|a1a210a0|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|80a0
Var #A1A210A4|a1a210a4|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|80a4
Var #A1A210A8|a1a210a8|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|80a8
Var #A1A210AC|a1a210ac|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|80ac
Var #A1A210B0|a1a210b0|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|80b0
Var #A1A210B4|a1a210b4|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|80b4
Var #A1A210B8|a1a210b8|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|80b8
Var #A1A210BC|a1a210bc|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|80bc
Var #A1A210C0|a1a210c0|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|80c0
Var #A1A210C4|a1a210c4|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|80c4
Var #A1A210C8|a1a210c8|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|80c8
Var #A1A210CC|a1a210cc|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|80cc
Var #A1A210D0|a1a210d0|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|80d0
Var #A1A210D4|a1a210d4|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|80d4
Var #A1A210D8|a1a210d8|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|80d8
Var #A1A210DC|a1a210dc|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|80dc
Var #A1A210E0|a1a210e0|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|80e0
Var #A1A210E4|a1a210e4|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|80e4
Var #A1A210E8|a1a210e8|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|80e8
Var #A1A210EC|a1a210ec|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|80ec
Var #A1A210F0|a1a210f0|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|80f0
Var #A1A210F4|a1a210f4|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|80f4
Var #A1A210F8|a1a210f8|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|80f8
Var #A1A210FC|a1a210fc|4|d347c60a|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|80fc
Var #A1A21100|a1a21100|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|8100
Var #A1A21104|a1a21104|4|d347c60a|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|8104
Var #A1A21108|a1a21108|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|8108
Var #A1A2110C|a1a2110c|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|810c
Var #A1A21110|a1a21110|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|8110
Var #A1A21114|a1a21114|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|8114
Var #A1A21118|a1a21118|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|8118
Var #A1A2111C|a1a2111c|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|811c
Var #A1A21120|a1a21120|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|8120
Var #A1A21124|a1a21124|4|d347c60a|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|8124
Var #A1A21128|a1a21128|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|8128
Var #A1A2112C|a1a2112c|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|812c
Var #A1A21130|a1a21130|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|8130
Var #A1A21134|a1a21134|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|8134
Var #A1A21138|a1a21138|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|8138
Var #A1A2113C|a1a2113c|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|813c
Var #A1A21140|a1a21140|4|d347c60a|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|8140
Var #A1A21144|a1a21144|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|8144
Var #A1A21148|a1a21148|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|8148
Var #A1A2114C|a1a2114c|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|814c
Var #A1A21150|a1a21150|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|8150
Var #A1A21154|a1a21154|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|8154
Var #A1A21158|a1a21158|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|8158
Var #A1A2115C|a1a2115c|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|815c
Var #A1A21160|a1a21160|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|8160
Var #A1A21164|a1a21164|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|8164
Var #A1A21168|a1a21168|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|8168
Var #A1A2116C|a1a2116c|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|816c
Var #A1A21170|a1a21170|4|d347c60a|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|8170
Var #A1A21174|a1a21174|4|d347c60a|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|8174
Var #A1A21178|a1a21178|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|8178
Var #A1A2117C|a1a2117c|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|817c
Var #A1A21180|a1a21180|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|8180
Var #A1A21184|a1a21184|4|d347c60a|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|8184
Var #A1A21188|a1a21188|4|d347c60a|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|8188
Var #A1A2118C|a1a2118c|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|818c
Var #A1A21190|a1a21190|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|8190
Var #A1A21194|a1a21194|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|8194
Var #A1A21198|a1a21198|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|8198
Var #A1A2119C|a1a2119c|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|819c
Var #A1A211A0|a1a211a0|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|81a0
Var #A1A211A4|a1a211a4|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|81a4
Var #A1A211A8|a1a211a8|4|d347c60a|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|81a8
Var #A1A211AC|a1a211ac|4|d347c60a|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|81ac
Var #A1A211B0|a1a211b0|4|d347c60a|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|81b0
Var #A1A211B4|a1a211b4|4|d347c60a|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|81b4
Var #A1A211B8|a1a211b8|4|d347c60a|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|81b8
Var #A1A211BC|a1a211bc|4|d347c60a|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|81bc
Var #A1A211C0|a1a211c0|4|d347c60a|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|81c0
Var #A1A211C4|a1a211c4|4|d347c60a|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|81c4
Var #A1A211C8|a1a211c8|4|d347c60a|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|81c8
Var #A1A211CC|a1a211cc|4|d347c60a|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|81cc
Var #A1A211D0|a1a211d0|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|81d0
Var #A1A211D4|a1a211d4|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|81d4
Var #A1A211D8|a1a211d8|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|81d8
Var #A1A211DC|a1a211dc|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|81dc
Var #A1A211E0|a1a211e0|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|81e0
Var #A1A211E4|a1a211e4|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|81e4
Var #A1A211E8|a1a211e8|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|81e8
Var #A1A211EC|a1a211ec|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|81ec
Var #A1A211F0|a1a211f0|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|81f0
Var #A1A211F4|a1a211f4|4|d347c60a|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|81f4
Var #A1A211F8|a1a211f8|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|81f8
Var #A1A211FC|a1a211fc|4|d347c60a|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|81fc
Var #A1A21200|a1a21200|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|8200
Var #A1A21204|a1a21204|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|8204
Var #A1A21208|a1a21208|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|8208
Var #A1A2120C|a1a2120c|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|820c
Var #A1A21210|a1a21210|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|8210
Var #A1A21214|a1a21214|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|8214
Var #A1A21218|a1a21218|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|8218
Var #A1A2121C|a1a2121c|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|821c
Var #A1A21220|a1a21220|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|8220
Var #A1A21224|a1a21224|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|8224
Var #A1A21228|a1a21228|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|8228
Var #A1A2122C|a1a2122c|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|822c
Var #A1A21230|a1a21230|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|8230
Var #A1A21234|a1a21234|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|8234
Var #A1A21238|a1a21238|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|8238
Var #A1A2123C|a1a2123c|4|d347c60a|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|823c
Var #A1A21240|a1a21240|4|d347c60a|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|8240
Var #A1A21244|a1a21244|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|8244
Var #A1A21248|a1a21248|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|8248
Var #A1A2124C|a1a2124c|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|824c
Var #A1A21250|a1a21250|4|d347c60a|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|8250
Var #A1A21254|a1a21254|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|8254
Var #A1A21258|a1a21258|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|8258
Var #A1A2125C|a1a2125c|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|825c
Var #A1A21260|a1a21260|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|8260
Var #A1A21264|a1a21264|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|8264
Var #A1A21268|a1a21268|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|8268
Var #A1A2126C|a1a2126c|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|826c
Var #A1A21270|a1a21270|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|8270
Var #A1A21274|a1a21274|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|8274
Var #A1A21278|a1a21278|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|8278
Var #A1A2127C|a1a2127c|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|827c
Var #A1A21280|a1a21280|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|8280
Var #A1A21284|a1a21284|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|8284
Var #A1A21288|a1a21288|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|8288
Var #A1A2128C|a1a2128c|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|828c
Var #A1A21290|a1a21290|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|8290
Var #A1A21294|a1a21294|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|8294
Var #A1A21298|a1a21298|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|8298
Var #A1A2129C|a1a2129c|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|829c
Var #A1A212A0|a1a212a0|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|82a0
Var #A1A212A4|a1a212a4|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|82a4
Var #A1A212A8|a1a212a8|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|82a8
Var #A1A212AC|a1a212ac|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|82ac
Var #A1A212B0|a1a212b0|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|82b0
Var #A1A212B4|a1a212b4|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|82b4
Var #A1A212B8|a1a212b8|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|82b8
Var #A1A212BC|a1a212bc|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|82bc
Var #A1A212C0|a1a212c0|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|82c0
Var #A1A212C4|a1a212c4|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|82c4
Var #A1A212C8|a1a212c8|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|82c8
Var #A1A212CC|a1a212cc|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|82cc
Var #A1A212D0|a1a212d0|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|82d0
Var #A1A212D4|a1a212d4|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|82d4
Var #A1A212D8|a1a212d8|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|82d8
Var #A1A212DC|a1a212dc|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|82dc
Var #A1A212E0|a1a212e0|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|82e0
Var #A1A212E4|a1a212e4|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|82e4
Var #A1A212E8|a1a212e8|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|82e8
Var #A1A212EC|a1a212ec|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|82ec
Var #A1A212F0|a1a212f0|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|82f0
Var #A1A212F4|a1a212f4|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|82f4
Var #A1A212F8|a1a212f8|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|82f8
Var #A1A212FC|a1a212fc|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|82fc
Var #A1A21300|a1a21300|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|8300
Var #A1A21304|a1a21304|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|8304
Var #A1A21308|a1a21308|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|8308
Var #A1A2130C|a1a2130c|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|830c
Var #A1A21310|a1a21310|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|8310
Var #A1A21314|a1a21314|4|d347c60a|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|8314
Var #A1A21318|a1a21318|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|8318
Var #A1A2131C|a1a2131c|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|831c
Var #A1A21320|a1a21320|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|8320
Var #A1A21324|a1a21324|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|8324
Var #A1A21328|a1a21328|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|8328
Var #A1A2132C|a1a2132c|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|832c
Var #A1A21330|a1a21330|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|8330
Var #A1A21334|a1a21334|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|8334
Var #A1A21338|a1a21338|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|8338
Var #A1A2133C|a1a2133c|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|833c
Var #A1A21340|a1a21340|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|8340
Var #A1A21344|a1a21344|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|8344
Var #A1A21348|a1a21348|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|8348
Var #A1A2134C|a1a2134c|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|834c
Var #A1A21350|a1a21350|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|8350
Var #A1A21354|a1a21354|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|8354
Var #A1A21358|a1a21358|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|8358
Var #A1A2135C|a1a2135c|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|835c
Var #A1A21360|a1a21360|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|8360
Var #A1A21364|a1a21364|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|8364
Var #A1A21368|a1a21368|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|8368
Var #A1A2136C|a1a2136c|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|836c
Var #A1A21370|a1a21370|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|8370
Var #A1A21374|a1a21374|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|8374
Var #A1A21378|a1a21378|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|8378
Var #A1A2137C|a1a2137c|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|837c
Var #A1A21380|a1a21380|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|8380
Var #A1A21384|a1a21384|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|8384
Var #A1A21388|a1a21388|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|8388
Var #A1A2138C|a1a2138c|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|838c
Var #A1A21390|a1a21390|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|8390
Var #A1A21394|a1a21394|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|8394
Var #A1A21398|a1a21398|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|8398
Var #A1A2139C|a1a2139c|4|d347c60a|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|839c
Var #A1A213A0|a1a213a0|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|83a0
Var #A1A213A4|a1a213a4|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|83a4
Var #A1A213A8|a1a213a8|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|83a8
Var #A1A213AC|a1a213ac|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|83ac
Var #A1A213B0|a1a213b0|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|83b0
Var #A1A213B4|a1a213b4|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|83b4
Var #A1A213B8|a1a213b8|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|83b8
Var #A1A213BC|a1a213bc|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|83bc
Var #A1A213C0|a1a213c0|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|83c0
Var #A1A213C4|a1a213c4|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|83c4
Var #A1A213C8|a1a213c8|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|83c8
Var #A1A213CC|a1a213cc|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|83cc
Var #A1A213D0|a1a213d0|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|83d0
Var #A1A213D4|a1a213d4|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|83d4
Var #A1A213D8|a1a213d8|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|83d8
Var #A1A213DC|a1a213dc|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|83dc
Var #A1A213E0|a1a213e0|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|83e0
Var #A1A213E4|a1a213e4|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|83e4
Var #A1A213E8|a1a213e8|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|83e8
Var #A1A213EC|a1a213ec|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|83ec
Var #A1A213F0|a1a213f0|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|83f0
Var #A1A213F4|a1a213f4|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|83f4
Var #A1A213F8|a1a213f8|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|83f8
Var #A1A213FC|a1a213fc|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|83fc
Var #A1A21400|a1a21400|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|8400
Var #A1A21404|a1a21404|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|8404
Var #A1A21408|a1a21408|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|8408
Var #A1A2140C|a1a2140c|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|840c
Var #A1A21410|a1a21410|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|8410
Var #A1A21414|a1a21414|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|8414
Var #A1A21418|a1a21418|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|8418
Var #A1A2141C|a1a2141c|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|841c
Var #A1A21420|a1a21420|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|8420
Var #A1A21424|a1a21424|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|8424
Var #A1A21428|a1a21428|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|8428
Var #A1A2142C|a1a2142c|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|842c
Var #A1A21430|a1a21430|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|8430
Var #A1A21434|a1a21434|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|8434
Var #A1A21438|a1a21438|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|8438
Var #A1A2143C|a1a2143c|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|843c
Var #A1A21440|a1a21440|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|8440
Var #A1A21444|a1a21444|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|8444
Var #A1A21448|a1a21448|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|8448
Var #A1A2144C|a1a2144c|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|844c
Var #A1A21450|a1a21450|4|d347c60a|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|8450
Var #A1A21454|a1a21454|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|8454
Var #A1A21458|a1a21458|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|8458
Var #A1A2145C|a1a2145c|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|845c
Var #A1A21460|a1a21460|4|d347c60a|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|8460
Var #A1A21464|a1a21464|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|8464
Var #A1A21468|a1a21468|4|d347c60a|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|8468
Var #A1A2146C|a1a2146c|4|d347c60a|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|846c
Var #A1A21470|a1a21470|4|d347c60a|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|8470
Var #A1A21474|a1a21474|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|8474
Var #A1A21478|a1a21478|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|8478
Var #A1A2147C|a1a2147c|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|847c
Var #A1A21480|a1a21480|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|8480
Var #A1A21484|a1a21484|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|8484
Var #A1A21488|a1a21488|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|8488
Var #A1A2148C|a1a2148c|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|848c
Var #A1A21490|a1a21490|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|8490
Var #A1A21494|a1a21494|4|d347c60a|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|8494
Var #A1A21498|a1a21498|4|d347c60a|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|8498
Var #A1A2149C|a1a2149c|4|d347c60a|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|849c
Var #A1A214A0|a1a214a0|4|d347c60a|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|84a0
Var #A1A214A4|a1a214a4|4|d347c60a|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|84a4
Var #A1A214A8|a1a214a8|4|d347c60a|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|84a8
Var #A1A214AC|a1a214ac|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|84ac
Var #A1A214B0|a1a214b0|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|84b0
Var #A1A214B4|a1a214b4|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|84b4
Var #A1A214B8|a1a214b8|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|84b8
Var #A1A214BC|a1a214bc|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|84bc
Var #A1A214C0|a1a214c0|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|84c0
Var #A1A214C4|a1a214c4|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|84c4
Var #A1A214C8|a1a214c8|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|84c8
Var #A1A214CC|a1a214cc|4|d347c60a|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|84cc
Var #A1A214D0|a1a214d0|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|84d0
Var #A1A214D4|a1a214d4|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|84d4
Var #A1A214D8|a1a214d8|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|84d8
Var #A1A214DC|a1a214dc|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|84dc
Var #A1A214E0|a1a214e0|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|84e0
Var #A1A214E4|a1a214e4|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|84e4
Var #A1A214E8|a1a214e8|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|84e8
Var #A1A214EC|a1a214ec|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|84ec
Var #A1A214F0|a1a214f0|4|d347c60a|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|84f0
Var #A1A214F4|a1a214f4|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|84f4
Var #A1A214F8|a1a214f8|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|84f8
Var #A1A214FC|a1a214fc|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|84fc
Var #A1A21500|a1a21500|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|8500
Var #A1A21504|a1a21504|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|8504
Var #A1A21508|a1a21508|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|8508
Var #A1A2150C|a1a2150c|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|850c
Var #A1A21510|a1a21510|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|8510
Var #A1A21514|a1a21514|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|8514
Var #A1A21518|a1a21518|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|8518
Var #A1A2151C|a1a2151c|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|851c
Var #A1A21520|a1a21520|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|8520
Var #A1A21524|a1a21524|4|d347c60a|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|8524
Var #A1A21528|a1a21528|4|d347c60a|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|8528
Var #A1A2152C|a1a2152c|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|852c
Var #A1A21530|a1a21530|4|d347c60a|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|8530
Var #A1A21534|a1a21534|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|8534
Var #A1A21538|a1a21538|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|8538
Var #A1A2153C|a1a2153c|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|853c
Var #A1A21540|a1a21540|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|8540
Var #A1A21544|a1a21544|4|d347c60a|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|8544
Var #A1A21548|a1a21548|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|8548
Var #A1A2154C|a1a2154c|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|854c
Var #A1A21550|a1a21550|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|8550
Var #A1A21554|a1a21554|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|8554
Var #A1A21558|a1a21558|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|8558
Var #A1A2155C|a1a2155c|4|d347c60b|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-1/lib/x86/libnative-lib.so:bss|855c
]])

function Main()
local menu= gg.choice({
"[ 메뉴 ] 레어뽑기 확률 조작",
"[ 메뉴 ] 콜라보뽑기 확률 조작",
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
"캣츠아이 개수 조작",
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
{[1]='', [2]='', [3]='', [4]='', [5]=''})
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
gg.loadList("/sdcard/Android/data/doc.txt")
gg.loadResults(gg.getListItems("/sdcard/Android/data/doc.txt"))
local qresult = gg.getResults(999)

gg.addListItems(qresult)
	_address = qresult[1].address
	_value = qresult[1].value
	gg.setValues({{address = _address+4*harpp[1]-4, flags = gg.TYPE_DWORD, value = _value-1}})
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
        table.insert(t3, {address=v.address+0xB1ED4C,flags=gg.TYPE_DWORD,value=harpp[1],freeze=false})
	table.insert(t3, {address=v.address+0xB1ED50,flags=gg.TYPE_DWORD,value=0,freeze=false})
	table.insert(t3, {address=v.address+0xB1ED54,flags=gg.TYPE_DWORD,value=harpp[1],freeze=false})
	table.insert(t3, {address=v.address+0xB1ED58,flags=gg.TYPE_DWORD,value=0,freeze=false})
	table.insert(t3, {address=v.address+0xB1ED5C,flags=gg.TYPE_DWORD,value=harpp[1],freeze=false})
	table.insert(t3, {address=v.address+0xB1ED60,flags=gg.TYPE_DWORD,value=0,freeze=false})
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
gg.loadList("/sdcard/Android/data/doc.txt")
gg.loadResults(gg.getListItems("/sdcard/Android/data/doc.txt"))
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
gg.setRanges(gg.REGION_ANONYMOUS)
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
gg.searchNumber("1,179,403,647;65,793;196,611;1;52;9,448,224;2,097,204;2,621,448;1,835,037:49", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("1,179,403,647", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
local t = gg.getResults(7)
gg.addListItems(t)
local t3 = {}
for i, v in ipairs(t) do
table.insert(t3, {address=v.address+0x90A288,flags=gg.TYPE_DWORD,value=48,freeze=false})
table.insert(t3, {address=v.address+0x90A28C,flags=gg.TYPE_DWORD,value=48,freeze=false})
table.insert(t3, {address=v.address+0x90A290,flags=gg.TYPE_DWORD,value=48,freeze=false})
table.insert(t3, {address=v.address+0x90A294,flags=gg.TYPE_DWORD,value=48,freeze=false})
table.insert(t3, {address=v.address+0x90A298,flags=gg.TYPE_DWORD,value=48,freeze=false})
table.insert(t3, {address=v.address+0x90A29C,flags=gg.TYPE_DWORD,value=48,freeze=false})
table.insert(t3, {address=v.address+0x90A2A0,flags=gg.TYPE_DWORD,value=48,freeze=false})
table.insert(t3, {address=v.address+0x90A2A4,flags=gg.TYPE_DWORD,value=48,freeze=false})
table.insert(t3, {address=v.address+0x90A2A8,flags=gg.TYPE_DWORD,value=48,freeze=false})
table.insert(t3, {address=v.address+0x90A2AC,flags=gg.TYPE_DWORD,value=0,freeze=false})
table.insert(t3, {address=v.address+0x90A2B0,flags=gg.TYPE_DWORD,value=0,freeze=false})
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
gg.searchNumber("1,179,403,647;65,793;196,611;1;52;9,448,224;2,097,204;2,621,448;1,835,037:49", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("1,179,403,647", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.processPause()
local t = gg.getResults(7)
gg.addListItems(t)
local t3 = {}
for i, v in ipairs(t) do
	table.insert(t3, {address=v.address+0xAEA95C,flags=gg.TYPE_DWORD,value=harpp[1],freeze=false})
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
gg.searchNumber("1,179,403,647;65,793;196,611;1;52;9,448,224;2,097,204;2,621,448;1,835,037:49", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("1,179,403,647", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.processPause()
local t = gg.getResults(7)
gg.addListItems(t)
local t3 = {}
for i, v in ipairs(t) do
	table.insert(t3, {address=v.address+0xA99078,flags=gg.TYPE_DWORD,value=harpp[1],freeze=false})
	table.insert(t3, {address=v.address+0xA9907C,flags=gg.TYPE_DWORD,value=0,freeze=false})
	table.insert(t3, {address=v.address+0xA99080,flags=gg.TYPE_DWORD,value=harpp[1],freeze=false})
	table.insert(t3, {address=v.address+0xA99084,flags=gg.TYPE_DWORD,value=0,freeze=false})
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
현재 일정은 [ 드래곤 엠퍼러스 ] 입니다.]]))
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
gg.searchNumber("433;150:5", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
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
gg.setRanges(gg.REGION_ANONYMOUS)
gg.clearList()
gg.clearResults()
gg.searchNumber("433;150:5", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
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
gg.setRanges(gg.REGION_ANONYMOUS)
gg.clearList()
gg.clearResults()
gg.searchNumber("433;150:5", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
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
gg.setRanges(gg.REGION_ANONYMOUS)
gg.clearList()
gg.clearResults()
gg.searchNumber("433;150:5", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
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
gg.setRanges(gg.REGION_ANONYMOUS)
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
gg.setRanges(gg.REGION_ANONYMOUS)
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
gg.setRanges(gg.REGION_ANONYMOUS)
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
gg.setRanges(gg.REGION_ANONYMOUS)
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

