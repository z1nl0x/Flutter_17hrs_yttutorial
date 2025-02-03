import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:instacrap_clone/state/auth/models/auth_state.dart';
import 'package:instacrap_clone/state/auth/notifiers/auth_state_notifier.dart';

final authStateProvider = StateNotifierProvider<AuthStateNotifier, AuthState>(
    (_) => AuthStateNotifier());
