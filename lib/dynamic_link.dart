import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';
import 'package:share_plus/share_plus.dart';

class DynamicLink {
  static shareApp() async {
    final dynamicLinkParams = DynamicLinkParameters(
      link: Uri.parse("https://example.com"),
      uriPrefix: "https://fitit.page.link/",
      androidParameters: AndroidParameters(
        packageName: "com.example.dynamic_link",
        fallbackUrl: Uri.parse(
          "https://play.google.com/store/apps/details?id=com.what_chat",
        ),
      ),
      iosParameters: IOSParameters(
        bundleId: "com.dynamicLink",
        fallbackUrl: Uri.parse(
          "https://play.google.com/store/apps/details?id=com.what_chat",
        ),
        appStoreId: "",
      ),
      socialMetaTagParameters: SocialMetaTagParameters(
        imageUrl: Uri.parse(
            "https://cdn.shopify.com/s/files/1/2133/1999/products/veggiee-basket.jpg?v=1545729020"),
        description: "Download Now!!!",
        title: "Shopit",
      ),
    );
      final dynamicLink =
          await FirebaseDynamicLinks.instance.buildShortLink(dynamicLinkParams);
      print(dynamicLink.shortUrl);
      Share.share(dynamicLink.shortUrl.toString());
  }
}