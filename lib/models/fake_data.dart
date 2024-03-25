import 'package:tec/gen/assets.gen.dart';
import 'package:tec/models/data_models.dart';

Map homePagePosterMap = {
  "imageAsset": Assets.images.posterTest.path,
  "writer": "ملیکا عزیزی",
  "date": " یک روز پیش",
  "title": "دوازده قدم برنامه نویسی یک دوره ی...س",
  "view": "251"
};

// blog fake data

List<HashTagModel> tagList = [
  HashTagModel(title: "جاوا"),
  HashTagModel(title: "برنامه نویسی وب"),
  HashTagModel(title: "پادکست رادیو کدیاد"),
  HashTagModel(title: "کاتلین"),
  HashTagModel(title: "هوش مصنوعی"),
  HashTagModel(title: "دارت"),
  HashTagModel(title: "IOT"),
];

List<BlogModel> blogList = [
  BlogModel(
      id: 1,
      imageUrl:
          "https://static.digiato.com/digiato/2024/03/iphone-1-330x200.jpg.webp",
      title:
          "وزارت دادگستری آمریکا: اپل مسئول شکست گوشی‌های آمازون و مایکروسافت است",
      writer: "آزاد کبیری",
      writerImageUrl:
          "https://digiato.com/wp-content/uploads/avatars/290164-32x32.jpeg",
      date: "ساعت قبل 3",
      content:
          """ چند روز پیش وزارت دادگستری ایالات‌‌متحده آمریکا (DOJ) با شکایت از اپل، این شرکت را به انحصارگرایی در بازار گوشی‌های هوشمند متهم کرد. این شکایت استدلال می‌کند که تاکتیک‌های اپل موفقیت سایر شرکت‌های تولیدکننده گوشی‌های هوشمند را محدود کرده است. این وزارت‌خانه همچنین کوپرتینونشینان را مسئول شکست تجاری گوشی‌های آمازون، مایکروسافت و چند شرکت دیگر می‌داند.""",
      views: "256"),
  BlogModel(
      id: 2,
      imageUrl:
          "https://static.digiato.com/digiato/2024/03/00-2-330x200.jpg.webp",
      title: "مایکروسافت احتمالاً درحال ساخت یک کنسول دستی ایکس باکس است",
      writer: "امیر امام جمعه",
      writerImageUrl:
          "https://digiato.com/wp-content/uploads/avatars/20493-32x32.jpg",
      date: "ساعت قبل 3",
      content:
          """ پس از فروش نسبتاً موفقیت‌آمیز کنسول‌های دستی مانند استیم دک، بسیاری از تولیدکنندگان اصلی رایانه‌های شخصی ازجمله ایسوس و لنوو به فکر تولید محصولات مشابه افتادند. اکنون طبق یک گزارش غیررسمی، مایکروسافت نیز قصد دارد وارد این حوزه شود و به‌صورت مستقل و بدون همکاری با شرکت دیگری، اقدام به ساخت کنسول دستی مبتنی بر ویندوز خود کند.

""",
      views: "282"),
  BlogModel(
      id: 3,
      imageUrl:
          "https://static.digiato.com/digiato/2024/03/Tim-Cook-1-330x200.jpg.webp",
      title:
          "وزارت دادگستری: حل‌و‌فصل پرونده ضدانحصار سال 2001 مایکروسافت راه را برای رشد اپل هموار کرد",
      writer: "جواد تاجی",
      writerImageUrl:
          "https://digiato.com/wp-content/uploads/avatars/224206-32x32.jpg",
      date: "ساعت قبل 3",
      content:
          """ اپل روز گذشته با شکایت وزارت دادگستری ایالات‌متحده آمریکا مواجه شد که غول فناوری را به انحصارگرایی در بازار گوشی‌های هوشمند متهم می‌کند. نکته قابل‌توجه اینکه در این شکایت، چندین بار به مایکروسافت و ماجرای پرونده قدیمی آن در سال 2001 نیز اشاره شده است که در آن، ردموندی‌ها یک پرونده ضدانحصار مربوط به ویندوز را حل‌و‌فصل کردند. وزارت دادگستری ادعا می‌کند که این موضوع راه را برای رشد اپل هموار کرده است.""",
      views: "350"),
  BlogModel(
      id: 4,
      imageUrl:
          "https://static.digiato.com/digiato/2024/03/windows-11-2-330x200.jpg.webp",
      title:
          "از صفحه آبی تا مشکل در اجرای بازی‌ها؛ آپدیت جدید ویندوز ۱۱ را نصب نکنید",
      writer: "جواد تاجی",
      writerImageUrl:
          "https://digiato.com/wp-content/uploads/avatars/224206-32x32.jpg",
      date: "ساعت قبل 3",
      content:
          """ مایکروسافت هر ماه به‌روزرسانی‌های جدیدی برای ویندوز منتشر می‌کند که علاوه بر اضافه‌کردن برخی ویژگی‌های جدید، مشکلات سیستم‌عامل را نیز برطرف می‌کند. بااین‌حال، اکنون برخی کاربران ویندوز 11 ادعا کرده‌اند که پس از دریافت آخرین به‌روزرسانی (KB5035853) با مشکلاتی ازجمله نمایش صفحه آبی (BSoD) هنگام بالاآمدن سیستم مواجه شده‌اند.""",
      views: "220"),
];

List<PodcastModel> podcastModel = [
  PodcastModel(
      id: 1,
      imageUrl:
          "https://fidibo.com/blog/wp-content/uploads/2022/05/podcast-6.jpg",
      name: "هلی تاک"),
  PodcastModel(
      id: 2,
      imageUrl:
          "https://fidibo.com/blog/wp-content/uploads/2022/05/podcast-3.jpg",
      name: "ناجی"),
  PodcastModel(
      id: 3,
      imageUrl:
          "https://fidibo.com/blog/wp-content/uploads/2022/06/podcast-2-1.jpg",
      name: "سبکتو"),
  PodcastModel(
      id: 4,
      imageUrl:
          "https://fidibo.com/blog/wp-content/uploads/2022/06/podcast-3.jpg",
      name: "مبل قرمز"),
  PodcastModel(
      id: 5,
      imageUrl:
          "https://fidibo.com/blog/wp-content/uploads/2022/06/podcast-4.jpg",
      name: "صلح درون"),
];
