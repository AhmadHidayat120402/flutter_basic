import 'package:flutter/material.dart';
import 'package:flutter_basic/my_drawer_header.dart';
import 'package:flutter_basic/page/contacts.dart';
import 'package:flutter_basic/page/events.dart';
import 'package:flutter_basic/page/dashboard.dart';
import 'package:flutter_basic/page/notes.dart';
import 'package:flutter_basic/page/notifications.dart';
import 'package:flutter_basic/page/privacy_policy.dart';
import 'package:flutter_basic/page/send_feedback.dart';
import 'package:flutter_basic/page/settings.dart';

class MyDrawerFull extends StatefulWidget {
  const MyDrawerFull({super.key});

  @override
  State<MyDrawerFull> createState() => _MyDrawerFullState();
}

class _MyDrawerFullState extends State<MyDrawerFull> {
  var currentPage = DrawerSections.dashboard;
  @override
  Widget build(BuildContext context) {
    StatelessWidget? container;
    if (currentPage == DrawerSections.dashboard) {
      container = const DashboardPage();
    } else if (currentPage == DrawerSections.contacts) {
      container = const ContactsPage();
    } else if (currentPage == DrawerSections.events) {
      container = const EventsPage();
    } else if (currentPage == DrawerSections.notes) {
      container = const NotesPage();
    } else if (currentPage == DrawerSections.settings) {
      container = const SettingsPage();
    } else if (currentPage == DrawerSections.notifications) {
      container = const NotificationsPage();
    } else if (currentPage == DrawerSections.privacy_policy) {
      container = const PrivacypolicyPage();
    } else if (currentPage == DrawerSections.send_feedback) {
      container = const SendfeedbackPage();
    }
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.green[700],
        title: const Text("SI Tani"),
      ),
      body: container,
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Container(
            // alignment: Alignment.center,
            child: Column(
              children: [const MyHeaderDrawer(), MyDrawerList()],
            ),
          ),
        ),
      ),
    );
  }

  Widget MyDrawerList() {
    return Container(
      padding: const EdgeInsets.only(top: 15),
      child: Column(
        children: [
          MenuItem(1, "Dashboard", Icons.dashboard_outlined,
              currentPage == DrawerSections.dashboard ? true : false),
          MenuItem(2, "Contacts", Icons.people_alt_outlined,
              currentPage == DrawerSections.contacts ? true : false),
          MenuItem(3, "Events", Icons.event,
              currentPage == DrawerSections.events ? true : false),
          MenuItem(4, "Notes", Icons.notes,
              currentPage == DrawerSections.notes ? true : false),
          const Divider(),
          MenuItem(5, "Settings", Icons.settings,
              currentPage == DrawerSections.settings ? true : false),
          MenuItem(6, "Notifications", Icons.notifications_outlined,
              currentPage == DrawerSections.notifications ? true : false),
          MenuItem(7, "Privacy policy", Icons.privacy_tip_outlined,
              currentPage == DrawerSections.privacy_policy ? true : false),
          MenuItem(8, "Send feedback", Icons.feedback_outlined,
              currentPage == DrawerSections.send_feedback ? true : false)
        ],
      ),
    );
  }

  Widget MenuItem(int id, String title, IconData icon, bool selected) {
    return Material(
      color: selected ? Colors.grey[300] : Colors.transparent,
      child: InkWell(
        onTap: () {
          Navigator.pop(context);
          setState(() {
            if (id == 1) {
              currentPage = DrawerSections.dashboard;
            } else if (id == 2) {
              currentPage = DrawerSections.contacts;
            } else if (id == 3) {
              currentPage = DrawerSections.events;
            } else if (id == 4) {
              currentPage = DrawerSections.notes;
            } else if (id == 5) {
              currentPage = DrawerSections.settings;
            } else if (id == 6) {
              currentPage = DrawerSections.notifications;
            } else if (id == 7) {
              currentPage = DrawerSections.privacy_policy;
            } else if (id == 8) {
              currentPage = DrawerSections.send_feedback;
            }
          });
        },
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Row(
            children: [
              Expanded(
                child: Icon(
                  icon,
                  size: 20,
                  color: Colors.black,
                ),
              ),
              Expanded(
                  flex: 3,
                  child: Text(
                    title,
                    style: const TextStyle(color: Colors.black, fontSize: 16),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}

enum DrawerSections {
  dashboard,
  contacts,
  events,
  notes,
  settings,
  notifications,
  privacy_policy,
  send_feedback
}
