# صدى (Sada)
1. عدّل `lib/core/config.dart` (defaultHost والهوستات الاحتياطية).
2. `bash setup_android.sh` (ينشئ مشروع أندرويد ويضيف الصلاحيات ودعم Android TV و minSdk 24).
3. `flutter run`
- ضغطة مطولة على أي بوستر = إضافة/إزالة من المفضلة.
- ريموت التلفاز: أسهم للتنقل، OK للفتح، وداخل المشغل: يمين/يسار ±10 ث، أعلى/أسفل الصوت.

## بناء APK
- محلياً: `flutter build apk --release --split-per-abi` (الناتج في build/app/outputs/flutter-apk).
- تلقائياً: ارفع المشروع إلى GitHub ثم Actions ← Build Sada APK ← Run workflow، وحمّل الملف من Artifacts.
