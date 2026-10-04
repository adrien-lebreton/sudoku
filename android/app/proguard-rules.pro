# Flutter (flutter_proguard_rules.pro), the plugins and the AndroidX/Media3
# libraries ship their own R8 rules, and AGP keeps the components declared in
# AndroidManifest.xml. Only add rules here for code reached by reflection that
# R8 cannot see: every -keep stops R8 from optimizing, obfuscating and
# shrinking the matched code (Play Console "DEX code optimization").

# The Flutter embedding references Play Core (deferred components), which this
# app does not ship.
-dontwarn com.google.android.play.core.**
