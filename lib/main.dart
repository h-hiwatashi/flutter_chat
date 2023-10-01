import 'package:flutter/material.dart';
import 'package:flutter_chat/pages/register_page.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> main() async {
  //Supabaseのinitialize
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
    url: 'https://yempgdoxkvyljtlbifta.supabase.co',
    anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InllbXBnZG94a3Z5bGp0bGJpZnRhIiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTYxNDAxNTUsImV4cCI6MjAxMTcxNjE1NX0.qOgE_1nrixAij6fME3pwshlU_3sl5nd-2Cidd2oXSyI',
  );
  //
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'チャットアプリ',
      home: RegisterPage(),  // TODO: 後ほど初期ページに変更
    );
  }
}