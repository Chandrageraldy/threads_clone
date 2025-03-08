import 'package:threads_clone/app/viewmodels/app_config_vm/locale_view_model.dart';
import 'package:threads_clone/app/viewmodels/app_config_vm/theme_view_model.dart';
import 'package:threads_clone/app/viewmodels/base_view_model.dart';
import 'package:threads_clone/app/viewmodels/post_vm/post_view_model.dart';
import 'package:threads_clone/app/viewmodels/profile_vm/edit_profile_view_model.dart';
import 'package:threads_clone/app/viewmodels/user_vm/user_view_model.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

// Configure Supabase URL and Key
const SUPABASE_URL = 'https://mcxljbkruvhizrbrxtht.supabase.co';
const SUPABASE_KEY =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im1jeGxqYmtydXZoaXpyYnJ4dGh0Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3Mzk2MjY2OTgsImV4cCI6MjA1NTIwMjY5OH0.bJ-j5yu77ohoX9_vLH54xIoOw_1jo2yZKaM8_cy9GqI';

List<SingleChildWidget> providerAssets() => [
      ChangeNotifierProvider(create: (_) => BaseViewModel()),
      ChangeNotifierProvider(create: (_) => LocaleViewModel()),
      ChangeNotifierProvider(create: (_) => ThemeViewModel()),
      ChangeNotifierProvider(create: (_) => UserViewModel()),
      ChangeNotifierProvider(create: (_) => PostViewModel()),
      ChangeNotifierProvider(create: (_) => EditProfileViewModel()),
    ];
