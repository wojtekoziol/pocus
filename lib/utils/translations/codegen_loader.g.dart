// DO NOT EDIT. This is code generated via package:easy_localization/generate.dart

// ignore_for_file: prefer_single_quotes

import 'dart:ui';

import 'package:easy_localization/easy_localization.dart' show AssetLoader;

class CodegenLoader extends AssetLoader{
  const CodegenLoader();

  @override
  Future<Map<String, dynamic>> load(String fullPath, Locale locale ) {
    return Future.value(mapLocales[locale.toString()]);
  }

  static const Map<String,dynamic> pl = {
  "time_tag": "minut",
  "quote": {
    "pomodoro": {
      "1": "Pora się skupić!",
      "2": "Wracaj do pracy!",
      "3": "Czas na pomodoro!",
      "4": "Dokończ to!"
    },
    "break": {
      "1": "Weź chwilę przerwy!",
      "2": "Zabaw się!",
      "3": "Zaparz sobie herbaty!",
      "4": "Rozciągnij się!"
    }
  },
  "stats": {
    "title": {
      "1": "Minuty w skupieniu",
      "2": "Otwarcia aplikacji"
    },
    "subtitle": "W tym tygodniu"
  },
  "settings": {
    "title": "Ustawienia",
    "category": {
      "pomodoro_duration": "Czas trwania pomodoro",
      "short_break_duration": "Czas trwania krótkiej przerwy",
      "long_break_duration": "Czas trwania długiej przerwy",
      "pomodoro_intervals": "Ilość interwałów pomodoro"
    },
    "restore_default": "Przywróć domyślne"
  },
  "notification": {
    "title": {
      "pomodoro": "Wracaj do pracy! 📝",
      "break": "Pora na przerwę! 🤩"
    },
    "body": "Nie zapomnij rozpocząć minutnika"
  },
  "snackbar": {
    "skip": "Minutnik pominięty!",
    "reset": "Minutnik zresetowany!"
  },
  "boarding": {
    "title": {
      "1": "Technika pomodoro pomaga Ci skupić się na długich zadaniach.",
      "2": "Pełna sesja pomodoro wygląda mniej więcej tak:",
      "3": "Podstawowe funkcje"
    },
    "button": "Następny",
    "tile": {
      "focus": "Skupienie",
      "short_break": "Krótka przerwa",
      "long_break": "Długa przerwa"
    },
    "function": {
      "1": "Używaj tego przecisku do rozpoczynania i zatrzymywania minutnika",
      "2": "Naciśnij i przytrzymaj aby zresetować minutnik",
      "3": "Nacićnij dwa razy, aby przejść do następnego przedziału czasowego"
    }
  },
  "days": {
    "monday": "P",
    "tuesday": "W",
    "wednesday": "Ś",
    "thursday": "C",
    "friday": "P",
    "saturday": "S",
    "sunday": "N"
  }
};
static const Map<String,dynamic> en = {
  "time_tag": "minutes",
  "quote": {
    "pomodoro": {
      "1": "Time to focus!",
      "2": "Get back to work!",
      "3": "Pomodoro time!",
      "4": "Get it done"
    },
    "break": {
      "1": "Take a break!",
      "2": "Have some fun!",
      "3": "Go get some tea!",
      "4": "Stretch your body!"
    }
  },
  "stats": {
    "title": {
      "1": "Minutes focused",
      "2": "App opens"
    },
    "subtitle": "This week"
  },
  "settings": {
    "title": "Settings",
    "category": {
      "pomodoro_duration": "Pomodoro duration",
      "short_break_duration": "Short break duration",
      "long_break_duration": "Long break duration",
      "pomodoro_intervals": "Pomodoro intervals"
    },
    "restore_default": "Restore to default"
  },
  "notification": {
    "title": {
      "pomodoro": "Get back to work! 📝",
      "break": "Time to rest! 🤩"
    },
    "body": "Don't forget to start the timer"
  },
  "snackbar": {
    "skip": "Timer skipped!",
    "reset": "Timer reset!"
  },
  "boarding": {
    "title": {
      "1": "Pomodoro technique is focused on boosting your productivity on long tasks.",
      "2": "Full pomodoro session looks somewhat like this:",
      "3": "Basic functions"
    },
    "button": "Next",
    "tile": {
      "focus": "Focus",
      "short_break": "Short break",
      "long_break": "Long break"
    },
    "function": {
      "1": "Use this button to start and pause the timer",
      "2": "Tap and hold to reset the session",
      "3": "Double tap to skip to next time slot"
    }
  },
  "days": {
    "monday": "M",
    "tuesday": "T",
    "wednesday": "W",
    "thursday": "T",
    "friday": "F",
    "saturday": "S",
    "sunday": "S"
  }
};
static const Map<String, Map<String,dynamic>> mapLocales = {"pl": pl, "en": en};
}
