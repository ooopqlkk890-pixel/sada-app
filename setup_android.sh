#!/usr/bin/env bash
# شغّله مرة واحدة داخل مجلد المشروع: bash setup_android.sh
set -e
[ -d android ] || flutter create . --platforms=android --project-name sada --org com.sada
M=android/app/src/main/AndroidManifest.xml
python3 - "$M" <<'PY'
import sys,re
p=sys.argv[1]; s=open(p).read()
if 'INTERNET' not in s:
    s=s.replace('<application','<uses-permission android:name="android.permission.INTERNET"/>\n    <uses-feature android:name="android.software.leanback" android:required="false"/>\n    <uses-feature android:name="android.hardware.touchscreen" android:required="false"/>\n    <application',1)
    s=s.replace('<application','<application android:usesCleartextTraffic="true" android:banner="@mipmap/ic_launcher"',1)
    s=s.replace('<category android:name="android.intent.category.LAUNCHER"/>','<category android:name="android.intent.category.LAUNCHER"/>\n                <category android:name="android.intent.category.LEANBACK_LAUNCHER"/>',1)
    s=re.sub(r'android:label="[^"]*"','android:label="صدى"',s,1)
open(p,'w').write(s)
PY
for g in android/app/build.gradle android/app/build.gradle.kts; do
  [ -f "$g" ] && sed -i -E 's/minSdk(Version)?[ =]+(flutter\.minSdkVersion|[0-9]+)/minSdk = 24/' "$g"
done
flutter pub get
dart run flutter_launcher_icons
echo "تم. شغّل: flutter run"
