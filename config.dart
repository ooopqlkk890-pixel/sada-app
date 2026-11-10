/// إعدادات تطبيق صدى
class AppConfig {
  static const appName = 'صدى';
  /// هوست افتراضي يُستخدم عند الدخول بالاسم وكلمة المرور فقط.
  static const defaultHost = 'http://your-provider.example:8080';
  /// هوستات احتياطية لنظام Failover (نفس بيانات الدخول).
  static const backupHosts = <String>[
    // 'http://backup1.example:8080',
  ];
}
