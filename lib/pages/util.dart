import 'package:flutter_screenutil/flutter_screenutil.dart';

double w(double w) {
  return ScreenUtil.getInstance().setWidth(w);
}

double h(double h) {
  return ScreenUtil.getInstance().setHeight(h);
}

double sp(double sp) {
  return ScreenUtil.getInstance().setSp(sp);
}
