/// Image辅助类
class ImageUtil {
  /// assets路径转换
  ///
  /// 传入图片名称，返回该图片在assets目录中的路径
  static String wrapAssets(String name) {
    return "assets/images/$name";
  }
}
