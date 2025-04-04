class Constants {
  Constants._();

  static final List<String> stepperlabels = [
    'قيد المراجعة',
    'تم قبول الطلب',
    'جاري التحضير',
    'تم الشحن',
    'مكتمل',
  ];

  static final List<String> stepperIconsPath = [
    'assets/images/svgs/pending_icon.svg',
    'assets/images/svgs/order_icon.svg',
    'assets/images/svgs/preparing_icon.svg',
    'assets/images/svgs/shipping_icon.svg',
    'assets/images/svgs/completed_icon.svg',
  ];

  static const List<Map<String, dynamic>> additionalInfo = [
    {
      'title': 'وسيله الشحن',
      'subtitle': 'لا توجد وسيله شحن',
      'icon': 'assets/images/svgs/shipping_icon.svg',
    },
    {
      'title': 'مده التوصيل',
      'subtitle': '5 ايام',
      'icon': 'assets/images/svgs/time_schedule_icon.svg',
    },
    {
      'title': 'الرسوم',
      'subtitle': 'البائع',
      'icon': 'assets/images/svgs/payment_icon.svg',
    },
    {
      'title': 'حاله الدفع',
      'subtitle': 'مدفوع',
      'icon': 'assets/images/svgs/payment_status_icon.svg',
    },
  ];

  static const List<String> ProductImages = [
    'assets/images/pngs/product1.png',
    'assets/images/pngs/product2.png',
  ];

  static const List<Map<String, dynamic>> paymentDetails = [
    {
      'lable': 'التكلفه الرئيسة',
      'price': 4000.0,
    },
    {
      'lable': 'التوصيل',
      'price': 30.0,
    },
    {
      'lable': 'نسبه التطبيق',
      'price': 15.0,
    },
  ];
}
