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

gg.alert(os.date([[박사 치트 V.10.3.0

- 온라인 서버에서 지속적으로 업데이트 됩니다.
- 오류 전달은 냥코레인저스 갤러리로 부탁드립니다.]]))

gg.alert([[2021.03.29 업데이트 내역

- 레어 뽑기 확률 조작 시리즈가 변경 되었습니다.]])

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

io.open("/sdcard/to3.txt","w"):write([[
27362
Var #94359480|94359480|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de480
Var #94359484|94359484|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de484
Var #94359488|94359488|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de488
Var #9435948C|9435948c|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de48c
Var #94359490|94359490|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de490
Var #94359494|94359494|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de494
Var #94359498|94359498|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de498
Var #9435949C|9435949c|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de49c
Var #943594A0|943594a0|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de4a0
Var #943594A4|943594a4|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de4a4
Var #943594A8|943594a8|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de4a8
Var #943594AC|943594ac|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de4ac
Var #943594B0|943594b0|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de4b0
Var #943594B4|943594b4|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de4b4
Var #943594B8|943594b8|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de4b8
Var #943594BC|943594bc|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de4bc
Var #943594C0|943594c0|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de4c0
Var #943594C4|943594c4|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de4c4
Var #943594C8|943594c8|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de4c8
Var #943594CC|943594cc|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de4cc
Var #943594D0|943594d0|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de4d0
Var #943594D4|943594d4|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de4d4
Var #943594D8|943594d8|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de4d8
Var #943594DC|943594dc|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de4dc
Var #943594E0|943594e0|4|2|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de4e0
Var #943594E4|943594e4|4|1|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de4e4
Var #943594E8|943594e8|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de4e8
Var #943594EC|943594ec|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de4ec
Var #943594F0|943594f0|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de4f0
Var #943594F4|943594f4|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de4f4
Var #943594F8|943594f8|4|1|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de4f8
Var #943594FC|943594fc|4|1|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de4fc
Var #94359500|94359500|4|1|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de500
Var #94359504|94359504|4|1|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de504
Var #94359508|94359508|4|1|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de508
Var #9435950C|9435950c|4|1|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de50c
Var #94359510|94359510|4|1|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de510
Var #94359514|94359514|4|1|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de514
Var #94359518|94359518|4|1|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de518
Var #9435951C|9435951c|4|1|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de51c
Var #94359520|94359520|4|1|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de520
Var #94359524|94359524|4|1|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de524
Var #94359528|94359528|4|1|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de528
Var #9435952C|9435952c|4|1|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de52c
Var #94359530|94359530|4|1|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de530
Var #94359534|94359534|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de534
Var #94359538|94359538|4|1|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de538
Var #9435953C|9435953c|4|1|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de53c
Var #94359540|94359540|4|1|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de540
Var #94359544|94359544|4|1|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de544
Var #94359548|94359548|4|1|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de548
Var #9435954C|9435954c|4|1|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de54c
Var #94359550|94359550|4|1|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de550
Var #94359554|94359554|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de554
Var #94359558|94359558|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de558
Var #9435955C|9435955c|4|1|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de55c
Var #94359560|94359560|4|1|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de560
Var #94359564|94359564|4|1|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de564
Var #94359568|94359568|4|1|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de568
Var #9435956C|9435956c|4|1|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de56c
Var #94359570|94359570|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de570
Var #94359574|94359574|4|1|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de574
Var #94359578|94359578|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de578
Var #9435957C|9435957c|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de57c
Var #94359580|94359580|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de580
Var #94359584|94359584|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de584
Var #94359588|94359588|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de588
Var #9435958C|9435958c|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de58c
Var #94359590|94359590|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de590
Var #94359594|94359594|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de594
Var #94359598|94359598|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de598
Var #9435959C|9435959c|4|1|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de59c
Var #943595A0|943595a0|4|1|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de5a0
Var #943595A4|943595a4|4|1|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de5a4
Var #943595A8|943595a8|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de5a8
Var #943595AC|943595ac|4|1|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de5ac
Var #943595B0|943595b0|4|1|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de5b0
Var #943595B4|943595b4|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de5b4
Var #943595B8|943595b8|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de5b8
Var #943595BC|943595bc|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de5bc
Var #943595C0|943595c0|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de5c0
Var #943595C4|943595c4|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de5c4
Var #943595C8|943595c8|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de5c8
Var #943595CC|943595cc|4|1|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de5cc
Var #943595D0|943595d0|4|1|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de5d0
Var #943595D4|943595d4|4|1|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de5d4
Var #943595D8|943595d8|4|1|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de5d8
Var #943595DC|943595dc|4|1|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de5dc
Var #943595E0|943595e0|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de5e0
Var #943595E4|943595e4|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de5e4
Var #943595E8|943595e8|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de5e8
Var #943595EC|943595ec|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de5ec
Var #943595F0|943595f0|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de5f0
Var #943595F4|943595f4|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de5f4
Var #943595F8|943595f8|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de5f8
Var #943595FC|943595fc|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de5fc
Var #94359600|94359600|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de600
Var #94359604|94359604|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de604
Var #94359608|94359608|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de608
Var #9435960C|9435960c|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de60c
Var #94359610|94359610|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de610
Var #94359614|94359614|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de614
Var #94359618|94359618|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de618
Var #9435961C|9435961c|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de61c
Var #94359620|94359620|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de620
Var #94359624|94359624|4|1|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de624
Var #94359628|94359628|4|1|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de628
Var #9435962C|9435962c|4|1|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de62c
Var #94359630|94359630|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de630
Var #94359634|94359634|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de634
Var #94359638|94359638|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de638
Var #9435963C|9435963c|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de63c
Var #94359640|94359640|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de640
Var #94359644|94359644|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de644
Var #94359648|94359648|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de648
Var #9435964C|9435964c|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de64c
Var #94359650|94359650|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de650
Var #94359654|94359654|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de654
Var #94359658|94359658|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de658
Var #9435965C|9435965c|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de65c
Var #94359660|94359660|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de660
Var #94359664|94359664|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de664
Var #94359668|94359668|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de668
Var #9435966C|9435966c|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de66c
Var #94359670|94359670|4|1|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de670
Var #94359674|94359674|4|1|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de674
Var #94359678|94359678|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de678
Var #9435967C|9435967c|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de67c
Var #94359680|94359680|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de680
Var #94359684|94359684|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de684
Var #94359688|94359688|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de688
Var #9435968C|9435968c|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de68c
Var #94359690|94359690|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de690
Var #94359694|94359694|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de694
Var #94359698|94359698|4|1|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de698
Var #9435969C|9435969c|4|1|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de69c
Var #943596A0|943596a0|4|1|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de6a0
Var #943596A4|943596a4|4|1|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de6a4
Var #943596A8|943596a8|4|1|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de6a8
Var #943596AC|943596ac|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de6ac
Var #943596B0|943596b0|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de6b0
Var #943596B4|943596b4|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de6b4
Var #943596B8|943596b8|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de6b8
Var #943596BC|943596bc|4|1|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de6bc
Var #943596C0|943596c0|4|1|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de6c0
Var #943596C4|943596c4|4|1|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de6c4
Var #943596C8|943596c8|4|1|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de6c8
Var #943596CC|943596cc|4|1|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de6cc
Var #943596D0|943596d0|4|1|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de6d0
Var #943596D4|943596d4|4|1|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de6d4
Var #943596D8|943596d8|4|1|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de6d8
Var #943596DC|943596dc|4|1|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de6dc
Var #943596E0|943596e0|4|1|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de6e0
Var #943596E4|943596e4|4|1|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de6e4
Var #943596E8|943596e8|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de6e8
Var #943596EC|943596ec|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de6ec
Var #943596F0|943596f0|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de6f0
Var #943596F4|943596f4|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de6f4
Var #943596F8|943596f8|4|1|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de6f8
Var #943596FC|943596fc|4|1|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de6fc
Var #94359700|94359700|4|1|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de700
Var #94359704|94359704|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de704
Var #94359708|94359708|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de708
Var #9435970C|9435970c|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de70c
Var #94359710|94359710|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de710
Var #94359714|94359714|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de714
Var #94359718|94359718|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de718
Var #9435971C|9435971c|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de71c
Var #94359720|94359720|4|1|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de720
Var #94359724|94359724|4|1|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de724
Var #94359728|94359728|4|1|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de728
Var #9435972C|9435972c|4|1|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de72c
Var #94359730|94359730|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de730
Var #94359734|94359734|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de734
Var #94359738|94359738|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de738
Var #9435973C|9435973c|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de73c
Var #94359740|94359740|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de740
Var #94359744|94359744|4|1|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de744
Var #94359748|94359748|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de748
Var #9435974C|9435974c|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de74c
Var #94359750|94359750|4|1|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de750
Var #94359754|94359754|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de754
Var #94359758|94359758|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de758
Var #9435975C|9435975c|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de75c
Var #94359760|94359760|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de760
Var #94359764|94359764|4|1|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de764
Var #94359768|94359768|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de768
Var #9435976C|9435976c|4|1|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de76c
Var #94359770|94359770|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de770
Var #94359774|94359774|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de774
Var #94359778|94359778|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de778
Var #9435977C|9435977c|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de77c
Var #94359780|94359780|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de780
Var #94359784|94359784|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de784
Var #94359788|94359788|4|1|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de788
Var #9435978C|9435978c|4|1|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de78c
Var #94359790|94359790|4|1|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de790
Var #94359794|94359794|4|1|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de794
Var #94359798|94359798|4|1|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de798
Var #9435979C|9435979c|4|1|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de79c
Var #943597A0|943597a0|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de7a0
Var #943597A4|943597a4|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de7a4
Var #943597A8|943597a8|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de7a8
Var #943597AC|943597ac|4|1|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de7ac
Var #943597B0|943597b0|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de7b0
Var #943597B4|943597b4|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de7b4
Var #943597B8|943597b8|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de7b8
Var #943597BC|943597bc|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de7bc
Var #943597C0|943597c0|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de7c0
Var #943597C4|943597c4|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de7c4
Var #943597C8|943597c8|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de7c8
Var #943597CC|943597cc|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de7cc
Var #943597D0|943597d0|4|1|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de7d0
Var #943597D4|943597d4|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de7d4
Var #943597D8|943597d8|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de7d8
Var #943597DC|943597dc|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de7dc
Var #943597E0|943597e0|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de7e0
Var #943597E4|943597e4|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de7e4
Var #943597E8|943597e8|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de7e8
Var #943597EC|943597ec|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de7ec
Var #943597F0|943597f0|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de7f0
Var #943597F4|943597f4|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de7f4
Var #943597F8|943597f8|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de7f8
Var #943597FC|943597fc|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de7fc
Var #94359800|94359800|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de800
Var #94359804|94359804|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de804
Var #94359808|94359808|4|1|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de808
Var #9435980C|9435980c|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de80c
Var #94359810|94359810|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de810
Var #94359814|94359814|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de814
Var #94359818|94359818|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de818
Var #9435981C|9435981c|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de81c
Var #94359820|94359820|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de820
Var #94359824|94359824|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de824
Var #94359828|94359828|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de828
Var #9435982C|9435982c|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de82c
Var #94359830|94359830|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de830
Var #94359834|94359834|4|1|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de834
Var #94359838|94359838|4|1|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de838
Var #9435983C|9435983c|4|1|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de83c
Var #94359840|94359840|4|1|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de840
Var #94359844|94359844|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de844
Var #94359848|94359848|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de848
Var #9435984C|9435984c|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de84c
Var #94359850|94359850|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de850
Var #94359854|94359854|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de854
Var #94359858|94359858|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de858
Var #9435985C|9435985c|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de85c
Var #94359860|94359860|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de860
Var #94359864|94359864|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de864
Var #94359868|94359868|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de868
Var #9435986C|9435986c|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de86c
Var #94359870|94359870|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de870
Var #94359874|94359874|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de874
Var #94359878|94359878|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de878
Var #9435987C|9435987c|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de87c
Var #94359880|94359880|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de880
Var #94359884|94359884|4|1|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de884
Var #94359888|94359888|4|1|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de888
Var #9435988C|9435988c|4|1|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de88c
Var #94359890|94359890|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de890
Var #94359894|94359894|4|1|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de894
Var #94359898|94359898|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de898
Var #9435989C|9435989c|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de89c
Var #943598A0|943598a0|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de8a0
Var #943598A4|943598a4|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de8a4
Var #943598A8|943598a8|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de8a8
Var #943598AC|943598ac|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de8ac
Var #943598B0|943598b0|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de8b0
Var #943598B4|943598b4|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de8b4
Var #943598B8|943598b8|4|1|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de8b8
Var #943598BC|943598bc|4|1|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de8bc
Var #943598C0|943598c0|4|1|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de8c0
Var #943598C4|943598c4|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de8c4
Var #943598C8|943598c8|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de8c8
Var #943598CC|943598cc|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de8cc
Var #943598D0|943598d0|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de8d0
Var #943598D4|943598d4|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de8d4
Var #943598D8|943598d8|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de8d8
Var #943598DC|943598dc|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de8dc
Var #943598E0|943598e0|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de8e0
Var #943598E4|943598e4|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de8e4
Var #943598E8|943598e8|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de8e8
Var #943598EC|943598ec|4|1|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de8ec
Var #943598F0|943598f0|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de8f0
Var #943598F4|943598f4|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de8f4
Var #943598F8|943598f8|4|1|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de8f8
Var #943598FC|943598fc|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de8fc
Var #94359900|94359900|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de900
Var #94359904|94359904|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de904
Var #94359908|94359908|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de908
Var #9435990C|9435990c|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de90c
Var #94359910|94359910|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de910
Var #94359914|94359914|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de914
Var #94359918|94359918|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de918
Var #9435991C|9435991c|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de91c
Var #94359920|94359920|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de920
Var #94359924|94359924|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de924
Var #94359928|94359928|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de928
Var #9435992C|9435992c|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de92c
Var #94359930|94359930|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de930
Var #94359934|94359934|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de934
Var #94359938|94359938|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de938
Var #9435993C|9435993c|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de93c
Var #94359940|94359940|4|1|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de940
Var #94359944|94359944|4|1|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de944
Var #94359948|94359948|4|1|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de948
Var #9435994C|9435994c|4|1|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de94c
Var #94359950|94359950|4|1|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de950
Var #94359954|94359954|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de954
Var #94359958|94359958|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de958
Var #9435995C|9435995c|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de95c
Var #94359960|94359960|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de960
Var #94359964|94359964|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de964
Var #94359968|94359968|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de968
Var #9435996C|9435996c|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de96c
Var #94359970|94359970|4|1|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de970
Var #94359974|94359974|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de974
Var #94359978|94359978|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de978
Var #9435997C|9435997c|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de97c
Var #94359980|94359980|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de980
Var #94359984|94359984|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de984
Var #94359988|94359988|4|1|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de988
Var #9435998C|9435998c|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de98c
Var #94359990|94359990|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de990
Var #94359994|94359994|4|1|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de994
Var #94359998|94359998|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de998
Var #9435999C|9435999c|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de99c
Var #943599A0|943599a0|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de9a0
Var #943599A4|943599a4|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de9a4
Var #943599A8|943599a8|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de9a8
Var #943599AC|943599ac|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de9ac
Var #943599B0|943599b0|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de9b0
Var #943599B4|943599b4|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de9b4
Var #943599B8|943599b8|4|1|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de9b8
Var #943599BC|943599bc|4|1|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de9bc
Var #943599C0|943599c0|4|1|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de9c0
Var #943599C4|943599c4|4|1|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de9c4
Var #943599C8|943599c8|4|1|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de9c8
Var #943599CC|943599cc|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de9cc
Var #943599D0|943599d0|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de9d0
Var #943599D4|943599d4|4|1|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de9d4
Var #943599D8|943599d8|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de9d8
Var #943599DC|943599dc|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de9dc
Var #943599E0|943599e0|4|1|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de9e0
Var #943599E4|943599e4|4|1|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de9e4
Var #943599E8|943599e8|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de9e8
Var #943599EC|943599ec|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de9ec
Var #943599F0|943599f0|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de9f0
Var #943599F4|943599f4|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de9f4
Var #943599F8|943599f8|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de9f8
Var #943599FC|943599fc|4|1|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1de9fc
Var #94359A00|94359a00|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1dea00
Var #94359A04|94359a04|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1dea04
Var #94359A08|94359a08|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1dea08
Var #94359A0C|94359a0c|4|1|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1dea0c
Var #94359A10|94359a10|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1dea10
Var #94359A14|94359a14|4|1|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1dea14
Var #94359A18|94359a18|4|1|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1dea18
Var #94359A1C|94359a1c|4|1|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1dea1c
Var #94359A20|94359a20|4|1|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1dea20
Var #94359A24|94359a24|4|1|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1dea24
Var #94359A28|94359a28|4|1|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1dea28
Var #94359A2C|94359a2c|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1dea2c
Var #94359A30|94359a30|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1dea30
Var #94359A34|94359a34|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1dea34
Var #94359A38|94359a38|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1dea38
Var #94359A3C|94359a3c|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1dea3c
Var #94359A40|94359a40|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1dea40
Var #94359A44|94359a44|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1dea44
Var #94359A48|94359a48|4|1|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1dea48
Var #94359A4C|94359a4c|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1dea4c
Var #94359A50|94359a50|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1dea50
Var #94359A54|94359a54|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1dea54
Var #94359A58|94359a58|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1dea58
Var #94359A5C|94359a5c|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1dea5c
Var #94359A60|94359a60|4|1|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1dea60
Var #94359A64|94359a64|4|1|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1dea64
Var #94359A68|94359a68|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1dea68
Var #94359A6C|94359a6c|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1dea6c
Var #94359A70|94359a70|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1dea70
Var #94359A74|94359a74|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1dea74
Var #94359A78|94359a78|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1dea78
Var #94359A7C|94359a7c|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1dea7c
Var #94359A80|94359a80|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1dea80
Var #94359A84|94359a84|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1dea84
Var #94359A88|94359a88|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1dea88
Var #94359A8C|94359a8c|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1dea8c
Var #94359A90|94359a90|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1dea90
Var #94359A94|94359a94|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1dea94
Var #94359A98|94359a98|4|1|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1dea98
Var #94359A9C|94359a9c|4|1|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1dea9c
Var #94359AA0|94359aa0|4|1|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1deaa0
Var #94359AA4|94359aa4|4|1|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1deaa4
Var #94359AA8|94359aa8|4|1|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1deaa8
Var #94359AAC|94359aac|4|1|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1deaac
Var #94359AB0|94359ab0|4|1|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1deab0
Var #94359AB4|94359ab4|4|1|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1deab4
Var #94359AB8|94359ab8|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1deab8
Var #94359ABC|94359abc|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1deabc
Var #94359AC0|94359ac0|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1deac0
Var #94359AC4|94359ac4|4|1|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1deac4
Var #94359AC8|94359ac8|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1deac8
Var #94359ACC|94359acc|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1deacc
Var #94359AD0|94359ad0|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1dead0
Var #94359AD4|94359ad4|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1dead4
Var #94359AD8|94359ad8|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1dead8
Var #94359ADC|94359adc|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1deadc
Var #94359AE0|94359ae0|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1deae0
Var #94359AE4|94359ae4|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1deae4
Var #94359AE8|94359ae8|4|1|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1deae8
Var #94359AEC|94359aec|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1deaec
Var #94359AF0|94359af0|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1deaf0
Var #94359AF4|94359af4|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1deaf4
Var #94359AF8|94359af8|4|1|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1deaf8
Var #94359AFC|94359afc|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1deafc
Var #94359B00|94359b00|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1deb00
Var #94359B04|94359b04|4|1|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1deb04
Var #94359B08|94359b08|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1deb08
Var #94359B0C|94359b0c|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1deb0c
Var #94359B10|94359b10|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1deb10
Var #94359B14|94359b14|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1deb14
Var #94359B18|94359b18|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1deb18
Var #94359B1C|94359b1c|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1deb1c
Var #94359B20|94359b20|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1deb20
Var #94359B24|94359b24|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1deb24
Var #94359B28|94359b28|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1deb28
Var #94359B2C|94359b2c|4|1|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1deb2c
Var #94359B30|94359b30|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1deb30
Var #94359B34|94359b34|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1deb34
Var #94359B38|94359b38|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1deb38
Var #94359B3C|94359b3c|4|1|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1deb3c
Var #94359B40|94359b40|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1deb40
Var #94359B44|94359b44|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1deb44
Var #94359B48|94359b48|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1deb48
Var #94359B4C|94359b4c|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1deb4c
Var #94359B50|94359b50|4|1|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1deb50
Var #94359B54|94359b54|4|1|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1deb54
Var #94359B58|94359b58|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1deb58
Var #94359B5C|94359b5c|4|1|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1deb5c
Var #94359B60|94359b60|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1deb60
Var #94359B64|94359b64|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1deb64
Var #94359B68|94359b68|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1deb68
Var #94359B6C|94359b6c|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1deb6c
Var #94359B70|94359b70|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1deb70
Var #94359B74|94359b74|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1deb74
Var #94359B78|94359b78|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1deb78
Var #94359B7C|94359b7c|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1deb7c
Var #94359B80|94359b80|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1deb80
Var #94359B84|94359b84|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1deb84
Var #94359B88|94359b88|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1deb88
Var #94359B8C|94359b8c|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1deb8c
Var #94359B90|94359b90|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1deb90
Var #94359B94|94359b94|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1deb94
Var #94359B98|94359b98|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1deb98
Var #94359B9C|94359b9c|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1deb9c
Var #94359BA0|94359ba0|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1deba0
Var #94359BA4|94359ba4|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1deba4
Var #94359BA8|94359ba8|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1deba8
Var #94359BAC|94359bac|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1debac
Var #94359BB0|94359bb0|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1debb0
Var #94359BB4|94359bb4|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1debb4
Var #94359BB8|94359bb8|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1debb8
Var #94359BBC|94359bbc|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1debbc
Var #94359BC0|94359bc0|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1debc0
Var #94359BC4|94359bc4|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1debc4
Var #94359BC8|94359bc8|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1debc8
Var #94359BCC|94359bcc|4|1|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1debcc
Var #94359BD0|94359bd0|4|1|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1debd0
Var #94359BD4|94359bd4|4|1|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1debd4
Var #94359BD8|94359bd8|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1debd8
Var #94359BDC|94359bdc|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1debdc
Var #94359BE0|94359be0|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1debe0
Var #94359BE4|94359be4|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1debe4
Var #94359BE8|94359be8|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1debe8
Var #94359BEC|94359bec|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1debec
Var #94359BF0|94359bf0|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1debf0
Var #94359BF4|94359bf4|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1debf4
Var #94359BF8|94359bf8|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1debf8
Var #94359BFC|94359bfc|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1debfc
Var #94359C00|94359c00|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1dec00
Var #94359C04|94359c04|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1dec04
Var #94359C08|94359c08|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1dec08
Var #94359C0C|94359c0c|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1dec0c
Var #94359C10|94359c10|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1dec10
Var #94359C14|94359c14|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1dec14
Var #94359C18|94359c18|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1dec18
Var #94359C1C|94359c1c|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1dec1c
Var #94359C20|94359c20|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1dec20
Var #94359C24|94359c24|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1dec24
Var #94359C28|94359c28|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1dec28
Var #94359C2C|94359c2c|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1dec2c
Var #94359C30|94359c30|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1dec30
Var #94359C34|94359c34|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1dec34
Var #94359C38|94359c38|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1dec38
Var #94359C3C|94359c3c|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1dec3c
Var #94359C40|94359c40|4|1|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1dec40
Var #94359C44|94359c44|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1dec44
Var #94359C48|94359c48|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1dec48
Var #94359C4C|94359c4c|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1dec4c
Var #94359C50|94359c50|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1dec50
Var #94359C54|94359c54|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1dec54
Var #94359C58|94359c58|4|1|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1dec58
Var #94359C5C|94359c5c|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1dec5c
Var #94359C60|94359c60|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1dec60
Var #94359C64|94359c64|4|1|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1dec64
Var #94359C68|94359c68|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1dec68
Var #94359C6C|94359c6c|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1dec6c
Var #94359C70|94359c70|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1dec70
Var #94359C74|94359c74|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1dec74
Var #94359C78|94359c78|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1dec78
Var #94359C7C|94359c7c|4|1|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1dec7c
Var #94359C80|94359c80|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1dec80
Var #94359C84|94359c84|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1dec84
Var #94359C88|94359c88|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1dec88
Var #94359C8C|94359c8c|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1dec8c
Var #94359C90|94359c90|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1dec90
Var #94359C94|94359c94|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1dec94
Var #94359C98|94359c98|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1dec98
Var #94359C9C|94359c9c|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1dec9c
Var #94359CA0|94359ca0|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1deca0
Var #94359CA4|94359ca4|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1deca4
Var #94359CA8|94359ca8|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1deca8
Var #94359CAC|94359cac|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1decac
Var #94359CB0|94359cb0|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1decb0
Var #94359CB4|94359cb4|4|1|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1decb4
Var #94359CB8|94359cb8|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1decb8
Var #94359CBC|94359cbc|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1decbc
Var #94359CC0|94359cc0|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1decc0
Var #94359CC4|94359cc4|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1decc4
Var #94359CC8|94359cc8|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1decc8
Var #94359CCC|94359ccc|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1deccc
Var #94359CD0|94359cd0|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1decd0
Var #94359CD4|94359cd4|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1decd4
Var #94359CD8|94359cd8|4|1|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1decd8
Var #94359CDC|94359cdc|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1decdc
Var #94359CE0|94359ce0|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1dece0
Var #94359CE4|94359ce4|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1dece4
Var #94359CE8|94359ce8|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1dece8
Var #94359CEC|94359cec|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1decec
Var #94359CF0|94359cf0|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1decf0
Var #94359CF4|94359cf4|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1decf4
Var #94359CF8|94359cf8|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1decf8
Var #94359CFC|94359cfc|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1decfc
Var #94359D00|94359d00|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1ded00
Var #94359D04|94359d04|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1ded04
Var #94359D08|94359d08|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1ded08
Var #94359D0C|94359d0c|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1ded0c
Var #94359D10|94359d10|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1ded10
Var #94359D14|94359d14|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1ded14
Var #94359D18|94359d18|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1ded18
Var #94359D1C|94359d1c|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1ded1c
Var #94359D20|94359d20|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1ded20
Var #94359D24|94359d24|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1ded24
Var #94359D28|94359d28|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1ded28
Var #94359D2C|94359d2c|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1ded2c
Var #94359D30|94359d30|4|1|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1ded30
Var #94359D34|94359d34|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1ded34
Var #94359D38|94359d38|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1ded38
Var #94359D3C|94359d3c|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1ded3c
Var #94359D40|94359d40|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1ded40
Var #94359D44|94359d44|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1ded44
Var #94359D48|94359d48|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1ded48
Var #94359D4C|94359d4c|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1ded4c
Var #94359D50|94359d50|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1ded50
Var #94359D54|94359d54|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1ded54
Var #94359D58|94359d58|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1ded58
Var #94359D5C|94359d5c|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1ded5c
Var #94359D60|94359d60|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1ded60
Var #94359D64|94359d64|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1ded64
Var #94359D68|94359d68|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1ded68
Var #94359D6C|94359d6c|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1ded6c
Var #94359D70|94359d70|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1ded70
Var #94359D74|94359d74|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1ded74
Var #94359D78|94359d78|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1ded78
Var #94359D7C|94359d7c|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1ded7c
Var #94359D80|94359d80|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1ded80
Var #94359D84|94359d84|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1ded84
Var #94359D88|94359d88|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1ded88
Var #94359D8C|94359d8c|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1ded8c
Var #94359D90|94359d90|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1ded90
Var #94359D94|94359d94|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1ded94
Var #94359D98|94359d98|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1ded98
Var #94359D9C|94359d9c|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1ded9c
Var #94359DA0|94359da0|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1deda0
Var #94359DA4|94359da4|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1deda4
Var #94359DA8|94359da8|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1deda8
Var #94359DAC|94359dac|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1dedac
Var #94359DB0|94359db0|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1dedb0
Var #94359DB4|94359db4|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1dedb4
Var #94359DB8|94359db8|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1dedb8
Var #94359DBC|94359dbc|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1dedbc
Var #94359DC0|94359dc0|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1dedc0
Var #94359DC4|94359dc4|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1dedc4
Var #94359DC8|94359dc8|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1dedc8
Var #94359DCC|94359dcc|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1dedcc
Var #94359DD0|94359dd0|4|0|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|1dedd0
]])

io.open("/sdcard/doc.txt","w"):write([[
373
Var #93FFEC8C|93ffec8c|4|dbd96f59|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7c8c
Var #93FFEC90|93ffec90|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7c90
Var #93FFEC94|93ffec94|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7c94
Var #93FFEC98|93ffec98|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7c98
Var #93FFEC9C|93ffec9c|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7c9c
Var #93FFECA0|93ffeca0|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7ca0
Var #93FFECA4|93ffeca4|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7ca4
Var #93FFECA8|93ffeca8|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7ca8
Var #93FFECAC|93ffecac|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7cac
Var #93FFECB0|93ffecb0|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7cb0
Var #93FFECB4|93ffecb4|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7cb4
Var #93FFECB8|93ffecb8|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7cb8
Var #93FFECBC|93ffecbc|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7cbc
Var #93FFECC0|93ffecc0|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7cc0
Var #93FFECC4|93ffecc4|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7cc4
Var #93FFECC8|93ffecc8|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7cc8
Var #93FFECCC|93ffeccc|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7ccc
Var #93FFECD0|93ffecd0|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7cd0
Var #93FFECD4|93ffecd4|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7cd4
Var #93FFECD8|93ffecd8|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7cd8
Var #93FFECDC|93ffecdc|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7cdc
Var #93FFECE0|93ffece0|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7ce0
Var #93FFECE4|93ffece4|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7ce4
Var #93FFECE8|93ffece8|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7ce8
Var #93FFECEC|93ffecec|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7cec
Var #93FFECF0|93ffecf0|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7cf0
Var #93FFECF4|93ffecf4|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7cf4
Var #93FFECF8|93ffecf8|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7cf8
Var #93FFECFC|93ffecfc|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7cfc
Var #93FFED00|93ffed00|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7d00
Var #93FFED04|93ffed04|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7d04
Var #93FFED08|93ffed08|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7d08
Var #93FFED0C|93ffed0c|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7d0c
Var #93FFED10|93ffed10|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7d10
Var #93FFED14|93ffed14|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7d14
Var #93FFED18|93ffed18|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7d18
Var #93FFED1C|93ffed1c|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7d1c
Var #93FFED20|93ffed20|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7d20
Var #93FFED24|93ffed24|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7d24
Var #93FFED28|93ffed28|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7d28
Var #93FFED2C|93ffed2c|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7d2c
Var #93FFED30|93ffed30|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7d30
Var #93FFED34|93ffed34|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7d34
Var #93FFED38|93ffed38|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7d38
Var #93FFED3C|93ffed3c|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7d3c
Var #93FFED40|93ffed40|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7d40
Var #93FFED44|93ffed44|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7d44
Var #93FFED48|93ffed48|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7d48
Var #93FFED4C|93ffed4c|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7d4c
Var #93FFED50|93ffed50|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7d50
Var #93FFED54|93ffed54|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7d54
Var #93FFED58|93ffed58|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7d58
Var #93FFED5C|93ffed5c|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7d5c
Var #93FFED60|93ffed60|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7d60
Var #93FFED64|93ffed64|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7d64
Var #93FFED68|93ffed68|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7d68
Var #93FFED6C|93ffed6c|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7d6c
Var #93FFED70|93ffed70|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7d70
Var #93FFED74|93ffed74|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7d74
Var #93FFED78|93ffed78|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7d78
Var #93FFED7C|93ffed7c|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7d7c
Var #93FFED80|93ffed80|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7d80
Var #93FFED84|93ffed84|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7d84
Var #93FFED88|93ffed88|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7d88
Var #93FFED8C|93ffed8c|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7d8c
Var #93FFED90|93ffed90|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7d90
Var #93FFED94|93ffed94|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7d94
Var #93FFED98|93ffed98|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7d98
Var #93FFED9C|93ffed9c|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7d9c
Var #93FFEDA0|93ffeda0|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7da0
Var #93FFEDA4|93ffeda4|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7da4
Var #93FFEDA8|93ffeda8|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7da8
Var #93FFEDAC|93ffedac|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7dac
Var #93FFEDB0|93ffedb0|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7db0
Var #93FFEDB4|93ffedb4|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7db4
Var #93FFEDB8|93ffedb8|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7db8
Var #93FFEDBC|93ffedbc|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7dbc
Var #93FFEDC0|93ffedc0|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7dc0
Var #93FFEDC4|93ffedc4|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7dc4
Var #93FFEDC8|93ffedc8|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7dc8
Var #93FFEDCC|93ffedcc|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7dcc
Var #93FFEDD0|93ffedd0|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7dd0
Var #93FFEDD4|93ffedd4|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7dd4
Var #93FFEDD8|93ffedd8|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7dd8
Var #93FFEDDC|93ffeddc|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7ddc
Var #93FFEDE0|93ffede0|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7de0
Var #93FFEDE4|93ffede4|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7de4
Var #93FFEDE8|93ffede8|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7de8
Var #93FFEDEC|93ffedec|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7dec
Var #93FFEDF0|93ffedf0|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7df0
Var #93FFEDF4|93ffedf4|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7df4
Var #93FFEDF8|93ffedf8|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7df8
Var #93FFEDFC|93ffedfc|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7dfc
Var #93FFEE00|93ffee00|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7e00
Var #93FFEE04|93ffee04|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7e04
Var #93FFEE08|93ffee08|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7e08
Var #93FFEE0C|93ffee0c|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7e0c
Var #93FFEE10|93ffee10|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7e10
Var #93FFEE14|93ffee14|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7e14
Var #93FFEE18|93ffee18|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7e18
Var #93FFEE1C|93ffee1c|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7e1c
Var #93FFEE20|93ffee20|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7e20
Var #93FFEE24|93ffee24|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7e24
Var #93FFEE28|93ffee28|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7e28
Var #93FFEE2C|93ffee2c|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7e2c
Var #93FFEE30|93ffee30|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7e30
Var #93FFEE34|93ffee34|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7e34
Var #93FFEE38|93ffee38|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7e38
Var #93FFEE3C|93ffee3c|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7e3c
Var #93FFEE40|93ffee40|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7e40
Var #93FFEE44|93ffee44|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7e44
Var #93FFEE48|93ffee48|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7e48
Var #93FFEE4C|93ffee4c|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7e4c
Var #93FFEE50|93ffee50|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7e50
Var #93FFEE54|93ffee54|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7e54
Var #93FFEE58|93ffee58|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7e58
Var #93FFEE5C|93ffee5c|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7e5c
Var #93FFEE60|93ffee60|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7e60
Var #93FFEE64|93ffee64|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7e64
Var #93FFEE68|93ffee68|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7e68
Var #93FFEE6C|93ffee6c|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7e6c
Var #93FFEE70|93ffee70|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7e70
Var #93FFEE74|93ffee74|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7e74
Var #93FFEE78|93ffee78|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7e78
Var #93FFEE7C|93ffee7c|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7e7c
Var #93FFEE80|93ffee80|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7e80
Var #93FFEE84|93ffee84|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7e84
Var #93FFEE88|93ffee88|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7e88
Var #93FFEE8C|93ffee8c|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7e8c
Var #93FFEE90|93ffee90|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7e90
Var #93FFEE94|93ffee94|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7e94
Var #93FFEE98|93ffee98|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7e98
Var #93FFEE9C|93ffee9c|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7e9c
Var #93FFEEA0|93ffeea0|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7ea0
Var #93FFEEA4|93ffeea4|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7ea4
Var #93FFEEA8|93ffeea8|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7ea8
Var #93FFEEAC|93ffeeac|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7eac
Var #93FFEEB0|93ffeeb0|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7eb0
Var #93FFEEB4|93ffeeb4|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7eb4
Var #93FFEEB8|93ffeeb8|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7eb8
Var #93FFEEBC|93ffeebc|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7ebc
Var #93FFEEC0|93ffeec0|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7ec0
Var #93FFEEC4|93ffeec4|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7ec4
Var #93FFEEC8|93ffeec8|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7ec8
Var #93FFEECC|93ffeecc|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7ecc
Var #93FFEED0|93ffeed0|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7ed0
Var #93FFEED4|93ffeed4|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7ed4
Var #93FFEED8|93ffeed8|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7ed8
Var #93FFEEDC|93ffeedc|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7edc
Var #93FFEEE0|93ffeee0|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7ee0
Var #93FFEEE4|93ffeee4|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7ee4
Var #93FFEEE8|93ffeee8|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7ee8
Var #93FFEEEC|93ffeeec|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7eec
Var #93FFEEF0|93ffeef0|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7ef0
Var #93FFEEF4|93ffeef4|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7ef4
Var #93FFEEF8|93ffeef8|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7ef8
Var #93FFEEFC|93ffeefc|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7efc
Var #93FFEF00|93ffef00|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7f00
Var #93FFEF04|93ffef04|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7f04
Var #93FFEF08|93ffef08|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7f08
Var #93FFEF0C|93ffef0c|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7f0c
Var #93FFEF10|93ffef10|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7f10
Var #93FFEF14|93ffef14|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7f14
Var #93FFEF18|93ffef18|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7f18
Var #93FFEF1C|93ffef1c|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7f1c
Var #93FFEF20|93ffef20|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7f20
Var #93FFEF24|93ffef24|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7f24
Var #93FFEF28|93ffef28|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7f28
Var #93FFEF2C|93ffef2c|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7f2c
Var #93FFEF30|93ffef30|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7f30
Var #93FFEF34|93ffef34|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7f34
Var #93FFEF38|93ffef38|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7f38
Var #93FFEF3C|93ffef3c|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7f3c
Var #93FFEF40|93ffef40|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7f40
Var #93FFEF44|93ffef44|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7f44
Var #93FFEF48|93ffef48|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7f48
Var #93FFEF4C|93ffef4c|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7f4c
Var #93FFEF50|93ffef50|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7f50
Var #93FFEF54|93ffef54|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7f54
Var #93FFEF58|93ffef58|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7f58
Var #93FFEF5C|93ffef5c|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7f5c
Var #93FFEF60|93ffef60|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7f60
Var #93FFEF64|93ffef64|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7f64
Var #93FFEF68|93ffef68|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7f68
Var #93FFEF6C|93ffef6c|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7f6c
Var #93FFEF70|93ffef70|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7f70
Var #93FFEF74|93ffef74|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7f74
Var #93FFEF78|93ffef78|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7f78
Var #93FFEF7C|93ffef7c|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7f7c
Var #93FFEF80|93ffef80|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7f80
Var #93FFEF84|93ffef84|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7f84
Var #93FFEF88|93ffef88|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7f88
Var #93FFEF8C|93ffef8c|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7f8c
Var #93FFEF90|93ffef90|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7f90
Var #93FFEF94|93ffef94|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7f94
Var #93FFEF98|93ffef98|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7f98
Var #93FFEF9C|93ffef9c|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7f9c
Var #93FFEFA0|93ffefa0|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7fa0
Var #93FFEFA4|93ffefa4|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7fa4
Var #93FFEFA8|93ffefa8|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7fa8
Var #93FFEFAC|93ffefac|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7fac
Var #93FFEFB0|93ffefb0|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7fb0
Var #93FFEFB4|93ffefb4|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7fb4
Var #93FFEFB8|93ffefb8|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7fb8
Var #93FFEFBC|93ffefbc|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7fbc
Var #93FFEFC0|93ffefc0|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7fc0
Var #93FFEFC4|93ffefc4|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7fc4
Var #93FFEFC8|93ffefc8|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7fc8
Var #93FFEFCC|93ffefcc|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7fcc
Var #93FFEFD0|93ffefd0|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7fd0
Var #93FFEFD4|93ffefd4|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7fd4
Var #93FFEFD8|93ffefd8|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7fd8
Var #93FFEFDC|93ffefdc|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7fdc
Var #93FFEFE0|93ffefe0|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7fe0
Var #93FFEFE4|93ffefe4|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7fe4
Var #93FFEFE8|93ffefe8|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7fe8
Var #93FFEFEC|93ffefec|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7fec
Var #93FFEFF0|93ffeff0|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7ff0
Var #93FFEFF4|93ffeff4|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7ff4
Var #93FFEFF8|93ffeff8|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7ff8
Var #93FFEFFC|93ffeffc|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|7ffc
Var #93FFF000|93fff000|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|8000
Var #93FFF004|93fff004|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|8004
Var #93FFF008|93fff008|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|8008
Var #93FFF00C|93fff00c|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|800c
Var #93FFF010|93fff010|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|8010
Var #93FFF014|93fff014|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|8014
Var #93FFF018|93fff018|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|8018
Var #93FFF01C|93fff01c|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|801c
Var #93FFF020|93fff020|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|8020
Var #93FFF024|93fff024|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|8024
Var #93FFF028|93fff028|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|8028
Var #93FFF02C|93fff02c|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|802c
Var #93FFF030|93fff030|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|8030
Var #93FFF034|93fff034|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|8034
Var #93FFF038|93fff038|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|8038
Var #93FFF03C|93fff03c|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|803c
Var #93FFF040|93fff040|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|8040
Var #93FFF044|93fff044|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|8044
Var #93FFF048|93fff048|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|8048
Var #93FFF04C|93fff04c|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|804c
Var #93FFF050|93fff050|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|8050
Var #93FFF054|93fff054|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|8054
Var #93FFF058|93fff058|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|8058
Var #93FFF05C|93fff05c|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|805c
Var #93FFF060|93fff060|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|8060
Var #93FFF064|93fff064|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|8064
Var #93FFF068|93fff068|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|8068
Var #93FFF06C|93fff06c|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|806c
Var #93FFF070|93fff070|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|8070
Var #93FFF074|93fff074|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|8074
Var #93FFF078|93fff078|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|8078
Var #93FFF07C|93fff07c|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|807c
Var #93FFF080|93fff080|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|8080
Var #93FFF084|93fff084|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|8084
Var #93FFF088|93fff088|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|8088
Var #93FFF08C|93fff08c|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|808c
Var #93FFF090|93fff090|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|8090
Var #93FFF094|93fff094|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|8094
Var #93FFF098|93fff098|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|8098
Var #93FFF09C|93fff09c|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|809c
Var #93FFF0A0|93fff0a0|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|80a0
Var #93FFF0A4|93fff0a4|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|80a4
Var #93FFF0A8|93fff0a8|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|80a8
Var #93FFF0AC|93fff0ac|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|80ac
Var #93FFF0B0|93fff0b0|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|80b0
Var #93FFF0B4|93fff0b4|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|80b4
Var #93FFF0B8|93fff0b8|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|80b8
Var #93FFF0BC|93fff0bc|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|80bc
Var #93FFF0C0|93fff0c0|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|80c0
Var #93FFF0C4|93fff0c4|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|80c4
Var #93FFF0C8|93fff0c8|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|80c8
Var #93FFF0CC|93fff0cc|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|80cc
Var #93FFF0D0|93fff0d0|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|80d0
Var #93FFF0D4|93fff0d4|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|80d4
Var #93FFF0D8|93fff0d8|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|80d8
Var #93FFF0DC|93fff0dc|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|80dc
Var #93FFF0E0|93fff0e0|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|80e0
Var #93FFF0E4|93fff0e4|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|80e4
Var #93FFF0E8|93fff0e8|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|80e8
Var #93FFF0EC|93fff0ec|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|80ec
Var #93FFF0F0|93fff0f0|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|80f0
Var #93FFF0F4|93fff0f4|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|80f4
Var #93FFF0F8|93fff0f8|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|80f8
Var #93FFF0FC|93fff0fc|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|80fc
Var #93FFF100|93fff100|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|8100
Var #93FFF104|93fff104|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|8104
Var #93FFF108|93fff108|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|8108
Var #93FFF10C|93fff10c|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|810c
Var #93FFF110|93fff110|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|8110
Var #93FFF114|93fff114|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|8114
Var #93FFF118|93fff118|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|8118
Var #93FFF11C|93fff11c|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|811c
Var #93FFF120|93fff120|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|8120
Var #93FFF124|93fff124|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|8124
Var #93FFF128|93fff128|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|8128
Var #93FFF12C|93fff12c|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|812c
Var #93FFF130|93fff130|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|8130
Var #93FFF134|93fff134|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|8134
Var #93FFF138|93fff138|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|8138
Var #93FFF13C|93fff13c|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|813c
Var #93FFF140|93fff140|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|8140
Var #93FFF144|93fff144|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|8144
Var #93FFF148|93fff148|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|8148
Var #93FFF14C|93fff14c|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|814c
Var #93FFF150|93fff150|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|8150
Var #93FFF154|93fff154|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|8154
Var #93FFF158|93fff158|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|8158
Var #93FFF15C|93fff15c|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|815c
Var #93FFF160|93fff160|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|8160
Var #93FFF164|93fff164|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|8164
Var #93FFF168|93fff168|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|8168
Var #93FFF16C|93fff16c|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|816c
Var #93FFF170|93fff170|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|8170
Var #93FFF174|93fff174|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|8174
Var #93FFF178|93fff178|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|8178
Var #93FFF17C|93fff17c|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|817c
Var #93FFF180|93fff180|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|8180
Var #93FFF184|93fff184|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|8184
Var #93FFF188|93fff188|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|8188
Var #93FFF18C|93fff18c|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|818c
Var #93FFF190|93fff190|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|8190
Var #93FFF194|93fff194|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|8194
Var #93FFF198|93fff198|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|8198
Var #93FFF19C|93fff19c|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|819c
Var #93FFF1A0|93fff1a0|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|81a0
Var #93FFF1A4|93fff1a4|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|81a4
Var #93FFF1A8|93fff1a8|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|81a8
Var #93FFF1AC|93fff1ac|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|81ac
Var #93FFF1B0|93fff1b0|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|81b0
Var #93FFF1B4|93fff1b4|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|81b4
Var #93FFF1B8|93fff1b8|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|81b8
Var #93FFF1BC|93fff1bc|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|81bc
Var #93FFF1C0|93fff1c0|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|81c0
Var #93FFF1C4|93fff1c4|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|81c4
Var #93FFF1C8|93fff1c8|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|81c8
Var #93FFF1CC|93fff1cc|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|81cc
Var #93FFF1D0|93fff1d0|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|81d0
Var #93FFF1D4|93fff1d4|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|81d4
Var #93FFF1D8|93fff1d8|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|81d8
Var #93FFF1DC|93fff1dc|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|81dc
Var #93FFF1E0|93fff1e0|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|81e0
Var #93FFF1E4|93fff1e4|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|81e4
Var #93FFF1E8|93fff1e8|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|81e8
Var #93FFF1EC|93fff1ec|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|81ec
Var #93FFF1F0|93fff1f0|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|81f0
Var #93FFF1F4|93fff1f4|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|81f4
Var #93FFF1F8|93fff1f8|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|81f8
Var #93FFF1FC|93fff1fc|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|81fc
Var #93FFF200|93fff200|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|8200
Var #93FFF204|93fff204|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|8204
Var #93FFF208|93fff208|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|8208
Var #93FFF20C|93fff20c|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|820c
Var #93FFF210|93fff210|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|8210
Var #93FFF214|93fff214|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|8214
Var #93FFF218|93fff218|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|8218
Var #93FFF21C|93fff21c|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|821c
Var #93FFF220|93fff220|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|8220
Var #93FFF224|93fff224|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|8224
Var #93FFF228|93fff228|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|8228
Var #93FFF22C|93fff22c|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|822c
Var #93FFF230|93fff230|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|8230
Var #93FFF234|93fff234|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|8234
Var #93FFF238|93fff238|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|8238
Var #93FFF23C|93fff23c|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|823c
Var #93FFF240|93fff240|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|8240
Var #93FFF244|93fff244|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|8244
Var #93FFF248|93fff248|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|8248
Var #93FFF24C|93fff24c|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|824c
Var #93FFF250|93fff250|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|8250
Var #93FFF254|93fff254|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|8254
Var #93FFF258|93fff258|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|8258
Var #93FFF25C|93fff25c|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|825c
Var #93FFF260|93fff260|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|8260
Var #93FFF264|93fff264|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|8264
Var #93FFF268|93fff268|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|8268
Var #93FFF26C|93fff26c|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|826c
Var #93FFF270|93fff270|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|8270
Var #93FFF274|93fff274|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|8274
Var #93FFF278|93fff278|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|8278
Var #93FFF27C|93fff27c|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|827c
Var #93FFF280|93fff280|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|8280
Var #93FFF284|93fff284|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|8284
Var #93FFF288|93fff288|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|8288
Var #93FFF28C|93fff28c|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|828c
Var #93FFF290|93fff290|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|8290
Var #93FFF294|93fff294|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|8294
Var #93FFF298|93fff298|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|8298
Var #93FFF29C|93fff29c|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|829c
Var #93FFF2A0|93fff2a0|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|82a0
Var #93FFF2A4|93fff2a4|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|82a4
Var #93FFF2A8|93fff2a8|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|82a8
Var #93FFF2AC|93fff2ac|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|82ac
Var #93FFF2B0|93fff2b0|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|82b0
Var #93FFF2B4|93fff2b4|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|82b4
Var #93FFF2B8|93fff2b8|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|82b8
Var #93FFF2BC|93fff2bc|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|82bc
Var #93FFF2C0|93fff2c0|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|82c0
Var #93FFF2C4|93fff2c4|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|82c4
Var #93FFF2C8|93fff2c8|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|82c8
Var #93FFF2CC|93fff2cc|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|82cc
Var #93FFF2D0|93fff2d0|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|82d0
Var #93FFF2D4|93fff2d4|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|82d4
Var #93FFF2D8|93fff2d8|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|82d8
Var #93FFF2DC|93fff2dc|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|82dc
Var #93FFF2E0|93fff2e0|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|82e0
Var #93FFF2E4|93fff2e4|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|82e4
Var #93FFF2E8|93fff2e8|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|82e8
Var #93FFF2EC|93fff2ec|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|82ec
Var #93FFF2F0|93fff2f0|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|82f0
Var #93FFF2F4|93fff2f4|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|82f4
Var #93FFF2F8|93fff2f8|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|82f8
Var #93FFF2FC|93fff2fc|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|82fc
Var #93FFF300|93fff300|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|8300
Var #93FFF304|93fff304|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|8304
Var #93FFF308|93fff308|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|8308
Var #93FFF30C|93fff30c|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|830c
Var #93FFF310|93fff310|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|8310
Var #93FFF314|93fff314|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|8314
Var #93FFF318|93fff318|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|8318
Var #93FFF31C|93fff31c|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|831c
Var #93FFF320|93fff320|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|8320
Var #93FFF324|93fff324|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|8324
Var #93FFF328|93fff328|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|8328
Var #93FFF32C|93fff32c|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|832c
Var #93FFF330|93fff330|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|8330
Var #93FFF334|93fff334|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|8334
Var #93FFF338|93fff338|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|8338
Var #93FFF33C|93fff33c|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|833c
Var #93FFF340|93fff340|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|8340
Var #93FFF344|93fff344|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|8344
Var #93FFF348|93fff348|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|8348
Var #93FFF34C|93fff34c|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|834c
Var #93FFF350|93fff350|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|8350
Var #93FFF354|93fff354|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|8354
Var #93FFF358|93fff358|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|8358
Var #93FFF35C|93fff35c|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|835c
Var #93FFF360|93fff360|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|8360
Var #93FFF364|93fff364|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|8364
Var #93FFF368|93fff368|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|8368
Var #93FFF36C|93fff36c|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|836c
Var #93FFF370|93fff370|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|8370
Var #93FFF374|93fff374|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|8374
Var #93FFF378|93fff378|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|8378
Var #93FFF37C|93fff37c|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|837c
Var #93FFF380|93fff380|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|8380
Var #93FFF384|93fff384|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|8384
Var #93FFF388|93fff388|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|8388
Var #93FFF38C|93fff38c|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|838c
Var #93FFF390|93fff390|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|8390
Var #93FFF394|93fff394|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|8394
Var #93FFF398|93fff398|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|8398
Var #93FFF39C|93fff39c|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|839c
Var #93FFF3A0|93fff3a0|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|83a0
Var #93FFF3A4|93fff3a4|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|83a4
Var #93FFF3A8|93fff3a8|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|83a8
Var #93FFF3AC|93fff3ac|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|83ac
Var #93FFF3B0|93fff3b0|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|83b0
Var #93FFF3B4|93fff3b4|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|83b4
Var #93FFF3B8|93fff3b8|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|83b8
Var #93FFF3BC|93fff3bc|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|83bc
Var #93FFF3C0|93fff3c0|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|83c0
Var #93FFF3C4|93fff3c4|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|83c4
Var #93FFF3C8|93fff3c8|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|83c8
Var #93FFF3CC|93fff3cc|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|83cc
Var #93FFF3D0|93fff3d0|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|83d0
Var #93FFF3D4|93fff3d4|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|83d4
Var #93FFF3D8|93fff3d8|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|83d8
Var #93FFF3DC|93fff3dc|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|83dc
Var #93FFF3E0|93fff3e0|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|83e0
Var #93FFF3E4|93fff3e4|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|83e4
Var #93FFF3E8|93fff3e8|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|83e8
Var #93FFF3EC|93fff3ec|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|83ec
Var #93FFF3F0|93fff3f0|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|83f0
Var #93FFF3F4|93fff3f4|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|83f4
Var #93FFF3F8|93fff3f8|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|83f8
Var #93FFF3FC|93fff3fc|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|83fc
Var #93FFF400|93fff400|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|8400
Var #93FFF404|93fff404|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|8404
Var #93FFF408|93fff408|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|8408
Var #93FFF40C|93fff40c|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|840c
Var #93FFF410|93fff410|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|8410
Var #93FFF414|93fff414|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|8414
Var #93FFF418|93fff418|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|8418
Var #93FFF41C|93fff41c|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|841c
Var #93FFF420|93fff420|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|8420
Var #93FFF424|93fff424|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|8424
Var #93FFF428|93fff428|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|8428
Var #93FFF42C|93fff42c|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|842c
Var #93FFF430|93fff430|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|8430
Var #93FFF434|93fff434|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|8434
Var #93FFF438|93fff438|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|8438
Var #93FFF43C|93fff43c|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|843c
Var #93FFF440|93fff440|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|8440
Var #93FFF444|93fff444|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|8444
Var #93FFF448|93fff448|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|8448
Var #93FFF44C|93fff44c|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|844c
Var #93FFF450|93fff450|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|8450
Var #93FFF454|93fff454|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|8454
Var #93FFF458|93fff458|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|8458
Var #93FFF45C|93fff45c|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|845c
Var #93FFF460|93fff460|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|8460
Var #93FFF464|93fff464|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|8464
Var #93FFF468|93fff468|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|8468
Var #93FFF46C|93fff46c|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|846c
Var #93FFF470|93fff470|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|8470
Var #93FFF474|93fff474|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|8474
Var #93FFF478|93fff478|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|8478
Var #93FFF47C|93fff47c|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|847c
Var #93FFF480|93fff480|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|8480
Var #93FFF484|93fff484|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|8484
Var #93FFF488|93fff488|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|8488
Var #93FFF48C|93fff48c|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|848c
Var #93FFF490|93fff490|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|8490
Var #93FFF494|93fff494|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|8494
Var #93FFF498|93fff498|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|8498
Var #93FFF49C|93fff49c|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|849c
Var #93FFF4A0|93fff4a0|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|84a0
Var #93FFF4A4|93fff4a4|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|84a4
Var #93FFF4A8|93fff4a8|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|84a8
Var #93FFF4AC|93fff4ac|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|84ac
Var #93FFF4B0|93fff4b0|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|84b0
Var #93FFF4B4|93fff4b4|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|84b4
Var #93FFF4B8|93fff4b8|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|84b8
Var #93FFF4BC|93fff4bc|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|84bc
Var #93FFF4C0|93fff4c0|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|84c0
Var #93FFF4C4|93fff4c4|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|84c4
Var #93FFF4C8|93fff4c8|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|84c8
Var #93FFF4CC|93fff4cc|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|84cc
Var #93FFF4D0|93fff4d0|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|84d0
Var #93FFF4D4|93fff4d4|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|84d4
Var #93FFF4D8|93fff4d8|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|84d8
Var #93FFF4DC|93fff4dc|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|84dc
Var #93FFF4E0|93fff4e0|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|84e0
Var #93FFF4E4|93fff4e4|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|84e4
Var #93FFF4E8|93fff4e8|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|84e8
Var #93FFF4EC|93fff4ec|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|84ec
Var #93FFF4F0|93fff4f0|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|84f0
Var #93FFF4F4|93fff4f4|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|84f4
Var #93FFF4F8|93fff4f8|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|84f8
Var #93FFF4FC|93fff4fc|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|84fc
Var #93FFF500|93fff500|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|8500
Var #93FFF504|93fff504|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|8504
Var #93FFF508|93fff508|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|8508
Var #93FFF50C|93fff50c|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|850c
Var #93FFF510|93fff510|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|8510
Var #93FFF514|93fff514|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|8514
Var #93FFF518|93fff518|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|8518
Var #93FFF51C|93fff51c|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|851c
Var #93FFF520|93fff520|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|8520
Var #93FFF524|93fff524|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|8524
Var #93FFF528|93fff528|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|8528
Var #93FFF52C|93fff52c|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|852c
Var #93FFF530|93fff530|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|8530
Var #93FFF534|93fff534|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|8534
Var #93FFF538|93fff538|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|8538
Var #93FFF53C|93fff53c|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|853c
Var #93FFF540|93fff540|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|8540
Var #93FFF544|93fff544|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|8544
Var #93FFF548|93fff548|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|8548
Var #93FFF54C|93fff54c|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|854c
Var #93FFF550|93fff550|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|8550
Var #93FFF554|93fff554|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|8554
Var #93FFF558|93fff558|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|8558
Var #93FFF55C|93fff55c|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|855c
Var #93FFF560|93fff560|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|8560
Var #93FFF564|93fff564|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|8564
Var #93FFF568|93fff568|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|8568
Var #93FFF56C|93fff56c|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|856c
Var #93FFF570|93fff570|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|8570
Var #93FFF574|93fff574|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|8574
Var #93FFF578|93fff578|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|8578
Var #93FFF57C|93fff57c|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|857c
Var #93FFF580|93fff580|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|8580
Var #93FFF584|93fff584|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|8584
Var #93FFF588|93fff588|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|8588
Var #93FFF58C|93fff58c|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|858c
Var #93FFF590|93fff590|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|8590
Var #93FFF594|93fff594|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|8594
Var #93FFF598|93fff598|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|8598
Var #93FFF59C|93fff59c|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|859c
Var #93FFF5A0|93fff5a0|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|85a0
Var #93FFF5A4|93fff5a4|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|85a4
Var #93FFF5A8|93fff5a8|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|85a8
Var #93FFF5AC|93fff5ac|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|85ac
Var #93FFF5B0|93fff5b0|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|85b0
Var #93FFF5B4|93fff5b4|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|85b4
Var #93FFF5B8|93fff5b8|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|85b8
Var #93FFF5BC|93fff5bc|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|85bc
Var #93FFF5C0|93fff5c0|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|85c0
Var #93FFF5C4|93fff5c4|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|85c4
Var #93FFF5C8|93fff5c8|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|85c8
Var #93FFF5CC|93fff5cc|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|85cc
Var #93FFF5D0|93fff5d0|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|85d0
Var #93FFF5D4|93fff5d4|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|85d4
Var #93FFF5D8|93fff5d8|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|85d8
Var #93FFF5DC|93fff5dc|4|dbd96f58|0|0|0|0|rw-p|/data/app/jp.co.ponos.battlecatskr-mMZo5DmkVPnQ6PtV2KFRPQ==/lib/arm/libnative-lib.so:bss|85dc
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
"스토리 모드 올클리어",
"냥코 클럽 시간 조작",
"티켓 개수 조작",
"전투 즉시 승리",
"냥코 3단 진화기",
"스크립트 종료"}, nil, ([[현재 최신버전입니다.]]))
if menu == 1 then MENU2() end
if menu == 2 then Close() end
if menu == 3 then MAKER() end
if menu == 4 then REMOVER() end
if menu == 5 then Image() end
if menu == 6 then T1() end
if menu == 7 then T2() end
if menu == 8 then T3() end
if menu == 9 then All() end
if menu == 10 then Club() end
if menu == 11 then Ticket() end
if menu == 12 then T4() end
if menu == 13 then CatUp() end
if menu == 14 then T5() end
HOMEDM=-1
end

function Close()
gg.alert("뽑기 기간이 아닙니다.")
end

function CatUp()
harpp = gg.prompt({'3단 진화할 캐릭터의 유닛 코드를 입력해주세요 (한번에 한 마리만)'}, nil, {'number'})
if harpp == nil then
else
gg.loadList("/sdcard/to3.txt")
gg.loadResults(gg.getListItems("/sdcard/to3.txt"))
local qresult = gg.getResults(999)

gg.addListItems(qresult)
	_address = qresult[1].address
	gg.setValues({{address = _address+4*harpp[1]-4, flags = gg.TYPE_DWORD, value = 2}})
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
gg.searchNumber("1,179,403,647;65,793;2,621,443;7,764,768;83,886,592:37", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("1,179,403,647", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.processPause()
local t = gg.getResults(7)
gg.addListItems(t)
local t3 = {}
for i, v in ipairs(t) do
	table.insert(t3, {address=v.address+0x76EEA0,flags=gg.TYPE_DWORD,value=harpp[1],freeze=false})
	table.insert(t3, {address=v.address+0x76EEA4,flags=gg.TYPE_DWORD,value=0,freeze=false})
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
gg.searchNumber("1,179,403,647;65,793;2,621,443;7,764,768;83,886,592:37", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("1,179,403,647", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.processPause()
local t = gg.getResults(7)
gg.addListItems(t)
local t3 = {}
for i, v in ipairs(t) do
	table.insert(t3, {address=v.address+0x76EDB0,flags=gg.TYPE_DWORD,value=harpp[1],freeze=false})
	table.insert(t3, {address=v.address+0x76EDB4,flags=gg.TYPE_DWORD,value=0,freeze=false})
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
gg.searchNumber("1,179,403,647;65,793;2,621,443;7,764,768;83,886,592:37", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("1,179,403,647", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.processPause()
local t = gg.getResults(7)
gg.addListItems(t)
local t3 = {}
for i, v in ipairs(t) do
	table.insert(t3, {address=v.address+0x773278,flags=gg.TYPE_DWORD,value=harpp[1],freeze=false})
	table.insert(t3, {address=v.address+0x77327C,flags=gg.TYPE_DWORD,value=0,freeze=false})
	table.insert(t3, {address=v.address+0x773280,flags=gg.TYPE_DWORD,value=harpp[1],freeze=false})
	table.insert(t3, {address=v.address+0x773284,flags=gg.TYPE_DWORD,value=0,freeze=false})
	table.insert(t3, {address=v.address+0x773288,flags=gg.TYPE_DWORD,value=harpp[1],freeze=false})
	table.insert(t3, {address=v.address+0x77328C,flags=gg.TYPE_DWORD,value=0,freeze=false})
	table.insert(t3, {address=v.address+0x773290,flags=gg.TYPE_DWORD,value=harpp[1],freeze=false})
	table.insert(t3, {address=v.address+0x773294,flags=gg.TYPE_DWORD,value=0,freeze=false})
	table.insert(t3, {address=v.address+0x773298,flags=gg.TYPE_DWORD,value=harpp[1],freeze=false})
	table.insert(t3, {address=v.address+0x77329C,flags=gg.TYPE_DWORD,value=0,freeze=false})
	table.insert(t3, {address=v.address+0x7732A0,flags=gg.TYPE_DWORD,value=harpp[1],freeze=false})
	table.insert(t3, {address=v.address+0x7732A4,flags=gg.TYPE_DWORD,value=0,freeze=false})
	table.insert(t3, {address=v.address+0x983DEC,flags=gg.TYPE_DWORD,value=harpp[1],freeze=false})
	table.insert(t3, {address=v.address+0x983DF0,flags=gg.TYPE_DWORD,value=0,freeze=false})
	table.insert(t3, {address=v.address+0x983DF4,flags=gg.TYPE_DWORD,value=harpp[1],freeze=false})
	table.insert(t3, {address=v.address+0x983DF8,flags=gg.TYPE_DWORD,value=0,freeze=false})
	table.insert(t3, {address=v.address+0x983DFC,flags=gg.TYPE_DWORD,value=harpp[1],freeze=false})
	table.insert(t3, {address=v.address+0x983E00,flags=gg.TYPE_DWORD,value=0,freeze=false})
    
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

function REMOVER()
harpp = gg.prompt({'삭제할 캐릭터의 유닛 코드를 입력해주세요 (한번에 한 마리만)'}, nil, {'number'})
if harpp == nil then
else
gg.loadList("/sdcard/doc.txt")
gg.loadResults(gg.getListItems("/sdcard/doc.txt"))
local qresult = gg.getResults(999)

gg.addListItems(qresult)
	_address = qresult[1].address
	_value = qresult[597].value
	gg.setValues({{address = _address+4*harpp[1]-4, flags = gg.TYPE_DWORD, value = _value}})
gg.toast("적용이 완료되었습니다.")
gg.clearList()
gg.clearResults()
end
end

function All()
gg.setRanges(gg.REGION_CODE_APP)
gg.clearList()
gg.clearResults()
gg.searchNumber("1,179,403,647;65,793;2,621,443;7,764,768;83,886,592:37", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("1,179,403,647", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
local t = gg.getResults(7)
gg.addListItems(t)
local t3 = {}
for i, v in ipairs(t) do
table.insert(t3, {address=v.address+0x76F308,flags=gg.TYPE_DWORD,value=48,freeze=false})
table.insert(t3, {address=v.address+0x76F30C,flags=gg.TYPE_DWORD,value=48,freeze=false})
table.insert(t3, {address=v.address+0x76F310,flags=gg.TYPE_DWORD,value=48,freeze=false})
table.insert(t3, {address=v.address+0x76F314,flags=gg.TYPE_DWORD,value=48,freeze=false})
table.insert(t3, {address=v.address+0x76F318,flags=gg.TYPE_DWORD,value=48,freeze=false})
table.insert(t3, {address=v.address+0x76F31C,flags=gg.TYPE_DWORD,value=48,freeze=false})
table.insert(t3, {address=v.address+0x76F320,flags=gg.TYPE_DWORD,value=48,freeze=false})
table.insert(t3, {address=v.address+0x76F324,flags=gg.TYPE_DWORD,value=48,freeze=false})
table.insert(t3, {address=v.address+0x76F328,flags=gg.TYPE_DWORD,value=48,freeze=false})
table.insert(t3, {address=v.address+0x76F32C,flags=gg.TYPE_DWORD,value=48,freeze=false})
table.insert(t3, {address=v.address+0x76F330,flags=gg.TYPE_DWORD,value=0,freeze=false})
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
gg.searchNumber("1,179,403,647;65,793;2,621,443;7,764,768;83,886,592:37", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("1,179,403,647", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.processPause()
local t = gg.getResults(7)
gg.addListItems(t)
local t3 = {}
for i, v in ipairs(t) do
	table.insert(t3, {address=v.address+0x94F9E8,flags=gg.TYPE_DWORD,value=harpp[1],freeze=false})
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
gg.searchNumber("1,179,403,647;65,793;2,621,443;7,764,768;83,886,592:37", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("1,179,403,647", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.processPause()
local t = gg.getResults(7)
gg.addListItems(t)
local t3 = {}
for i, v in ipairs(t) do
	table.insert(t3, {address=v.address+0x8FE0FC,flags=gg.TYPE_DWORD,value=harpp[1],freeze=false})
	table.insert(t3, {address=v.address+0x8FE100,flags=gg.TYPE_DWORD,value=0,freeze=false})
	table.insert(t3, {address=v.address+0x8FE104,flags=gg.TYPE_DWORD,value=harpp[1],freeze=false})
	table.insert(t3, {address=v.address+0x8FE108,flags=gg.TYPE_DWORD,value=0,freeze=false})
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
gg.searchNumber("1,179,403,647;65,793;2,621,443;7,764,768;83,886,592:37", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("1,179,403,647", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
local t = gg.getResults(7)
gg.addListItems(t)
local t3 = {}
for i, v in ipairs(t) do
table.insert(t3, {address=v.address+0x7A1BEC,flags=gg.TYPE_DWORD,value=0,freeze=false})
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
현재 일정은 [ 걸즈 몬스터즈 ] 입니다.]]))
if menu1 == 1 then P1() end
if menu1 == 2 then P2() end
if menu1 == 3 then P3() end
if menu1 == 4 then P4() end
if menu1 == 5 then Main() end
HOMEDM=-1
end


function P1()
gg.setRanges(gg.REGION_C_ALLOC)
gg.clearList()
gg.clearResults()
gg.searchNumber("506;150:5", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("150", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.processPause()
local k = gg.getResults(7)
gg.addListItems(k)
local k3 = {}
for i, v in ipairs(k) do
	table.insert(k3, {address=v.address+0x10,flags=gg.TYPE_DWORD,value=0,freeze=false})
	table.insert(k3, {address=v.address+0x14,flags=gg.TYPE_DWORD,value=10000,freeze=false})
            table.insert(k3, {address=v.address+0x18,flags=gg.TYPE_DWORD,value=0,freeze=false})
	table.insert(k3, {address=v.address+0x1C,flags=gg.TYPE_DWORD,value=0,freeze=false})
             table.insert(k3, {address=v.address+0x20,flags=gg.TYPE_DWORD,value=0,freeze=false})
	table.insert(k3, {address=v.address+0x24,flags=gg.TYPE_DWORD,value=0,freeze=false})
end
gg.addListItems(k3)
revert = gg.getListItems()
gg.setValues(k3)
gg.processResume()
gg.toast("적용이 완료되었습니다.")
end

function P2()
gg.setRanges(gg.REGION_C_ALLOC)
gg.clearList()
gg.clearResults()
gg.searchNumber("506;150:5", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("150", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.processPause()
local k = gg.getResults(7)
gg.addListItems(k)
local k3 = {}
for i, v in ipairs(k) do
	table.insert(k3, {address=v.address+0x10,flags=gg.TYPE_DWORD,value=0,freeze=false})
	table.insert(k3, {address=v.address+0x14,flags=gg.TYPE_DWORD,value=0,freeze=false})
            table.insert(k3, {address=v.address+0x18,flags=gg.TYPE_DWORD,value=10000,freeze=false})
	table.insert(k3, {address=v.address+0x1C,flags=gg.TYPE_DWORD,value=0,freeze=false})
             table.insert(k3, {address=v.address+0x20,flags=gg.TYPE_DWORD,value=0,freeze=false})
	table.insert(k3, {address=v.address+0x24,flags=gg.TYPE_DWORD,value=0,freeze=false})
end
gg.addListItems(k3)
revert = gg.getListItems()
gg.setValues(k3)
gg.processResume()
gg.toast("적용이 완료되었습니다.")
end

function P3()
gg.setRanges(gg.REGION_C_ALLOC)
gg.clearList()
gg.clearResults()
gg.searchNumber("506;150:5", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("150", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.processPause()
local k = gg.getResults(7)
gg.addListItems(k)
local k3 = {}
for i, v in ipairs(k) do
	table.insert(k3, {address=v.address+0x10,flags=gg.TYPE_DWORD,value=0,freeze=false})
	table.insert(k3, {address=v.address+0x14,flags=gg.TYPE_DWORD,value=0,freeze=false})
            table.insert(k3, {address=v.address+0x18,flags=gg.TYPE_DWORD,value=0,freeze=false})
	table.insert(k3, {address=v.address+0x1C,flags=gg.TYPE_DWORD,value=10000,freeze=false})
             table.insert(k3, {address=v.address+0x20,flags=gg.TYPE_DWORD,value=0,freeze=false})
	table.insert(k3, {address=v.address+0x24,flags=gg.TYPE_DWORD,value=0,freeze=false})
end
gg.addListItems(k3)
revert = gg.getListItems()
gg.setValues(k3)
gg.processResume()
gg.toast("적용이 완료되었습니다.")
end

function P4()
gg.setRanges(gg.REGION_C_ALLOC)
gg.clearList()
gg.clearResults()
gg.searchNumber("506;150:5", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("150", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.processPause()
local k = gg.getResults(7)
gg.addListItems(k)
local k3 = {}
for i, v in ipairs(k) do
	table.insert(k3, {address=v.address+0x10,flags=gg.TYPE_DWORD,value=0,freeze=false})
	table.insert(k3, {address=v.address+0x14,flags=gg.TYPE_DWORD,value=0,freeze=false})
            table.insert(k3, {address=v.address+0x18,flags=gg.TYPE_DWORD,value=0,freeze=false})
	table.insert(k3, {address=v.address+0x1C,flags=gg.TYPE_DWORD,value=0,freeze=false})
             table.insert(k3, {address=v.address+0x20,flags=gg.TYPE_DWORD,value=10000,freeze=false})
	table.insert(k3, {address=v.address+0x24,flags=gg.TYPE_DWORD,value=0,freeze=false})
end
gg.addListItems(k3)
revert = gg.getListItems()
gg.setValues(k3)
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
gg.setRanges(gg.REGION_C_ALLOC)
gg.clearList()
gg.clearResults()
gg.searchNumber("584;150:5", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("150", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.processPause()
local k = gg.getResults(7)
gg.addListItems(k)
local k3 = {}
for i, v in ipairs(k) do
	table.insert(k3, {address=v.address+0x10,flags=gg.TYPE_DWORD,value=0,freeze=false})
	table.insert(k3, {address=v.address+0x14,flags=gg.TYPE_DWORD,value=10000,freeze=false})
            table.insert(k3, {address=v.address+0x18,flags=gg.TYPE_DWORD,value=0,freeze=false})
	table.insert(k3, {address=v.address+0x1C,flags=gg.TYPE_DWORD,value=0,freeze=false})
             table.insert(k3, {address=v.address+0x20,flags=gg.TYPE_DWORD,value=0,freeze=false})
	table.insert(k3, {address=v.address+0x24,flags=gg.TYPE_DWORD,value=0,freeze=false})
end
gg.addListItems(k3)
revert = gg.getListItems()
gg.setValues(k3)
gg.processResume()
gg.toast("적용이 완료되었습니다.")
end

function K2()
gg.setRanges(gg.REGION_C_ALLOC)
gg.clearList()
gg.clearResults()
gg.searchNumber("584;150:5", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("150", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.processPause()
local k = gg.getResults(7)
gg.addListItems(k)
local k3 = {}
for i, v in ipairs(k) do
	table.insert(k3, {address=v.address+0x10,flags=gg.TYPE_DWORD,value=0,freeze=false})
	table.insert(k3, {address=v.address+0x14,flags=gg.TYPE_DWORD,value=0,freeze=false})
            table.insert(k3, {address=v.address+0x18,flags=gg.TYPE_DWORD,value=10000,freeze=false})
	table.insert(k3, {address=v.address+0x1C,flags=gg.TYPE_DWORD,value=0,freeze=false})
             table.insert(k3, {address=v.address+0x20,flags=gg.TYPE_DWORD,value=0,freeze=false})
	table.insert(k3, {address=v.address+0x24,flags=gg.TYPE_DWORD,value=0,freeze=false})
end
gg.addListItems(k3)
revert = gg.getListItems()
gg.setValues(k3)
gg.processResume()
gg.toast("적용이 완료되었습니다.")
end

function K3()
gg.setRanges(gg.REGION_C_ALLOC)
gg.clearList()
gg.clearResults()
gg.searchNumber("584;150:5", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("150", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.processPause()
local k = gg.getResults(7)
gg.addListItems(k)
local k3 = {}
for i, v in ipairs(k) do
	table.insert(k3, {address=v.address+0x10,flags=gg.TYPE_DWORD,value=0,freeze=false})
	table.insert(k3, {address=v.address+0x14,flags=gg.TYPE_DWORD,value=0,freeze=false})
            table.insert(k3, {address=v.address+0x18,flags=gg.TYPE_DWORD,value=0,freeze=false})
	table.insert(k3, {address=v.address+0x1C,flags=gg.TYPE_DWORD,value=10000,freeze=false})
             table.insert(k3, {address=v.address+0x20,flags=gg.TYPE_DWORD,value=0,freeze=false})
	table.insert(k3, {address=v.address+0x24,flags=gg.TYPE_DWORD,value=0,freeze=false})
end
gg.addListItems(k3)
revert = gg.getListItems()
gg.setValues(k3)
gg.processResume()
gg.toast("적용이 완료되었습니다.")
end

function K4()
gg.setRanges(gg.REGION_C_ALLOC)
gg.clearList()
gg.clearResults()
gg.searchNumber("584;150:5", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("150", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.processPause()
local k = gg.getResults(7)
gg.addListItems(k)
local k3 = {}
for i, v in ipairs(k) do
	table.insert(k3, {address=v.address+0x10,flags=gg.TYPE_DWORD,value=0,freeze=false})
	table.insert(k3, {address=v.address+0x14,flags=gg.TYPE_DWORD,value=0,freeze=false})
            table.insert(k3, {address=v.address+0x18,flags=gg.TYPE_DWORD,value=0,freeze=false})
	table.insert(k3, {address=v.address+0x1C,flags=gg.TYPE_DWORD,value=0,freeze=false})
             table.insert(k3, {address=v.address+0x20,flags=gg.TYPE_DWORD,value=10000,freeze=false})
	table.insert(k3, {address=v.address+0x24,flags=gg.TYPE_DWORD,value=0,freeze=false})
end
gg.addListItems(k3)
revert = gg.getListItems()
gg.setValues(k3)
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

