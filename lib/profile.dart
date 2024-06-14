import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Profile'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 20),
            const CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('path_to_profile_image'),
            ),
            SizedBox(height: 10),
            const Text(
              'Neha Singh',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              'nehaSing123@.com',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Personal Info'),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                // Navigate to personal info page
              },
            ),
            ListTile(
             leading: Icon(Icons.verified),
              title: Text('Verification'),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                // Navigate to verification page
              },
            ),
            ListTile(
              leading: Icon(Icons.alarm),
              title: Text('Manage Notifications'),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                // Navigate to manage notifications page
              },
            ),
            SizedBox(height: 40,),

            ListTile(
              leading: Icon(Icons.password),
              title: Text('Change Password'),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                // Navigate to change password page
              },
            ),
            ListTile(
              leading: Icon(Icons.security),
              title: Text('Two-Factor Authentication'),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
              },
            ),
            SizedBox(height: 30,),

            ListTile(
              leading: Icon(Icons.not_accessible),
              title: Text('Manage Preferences'),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
              },
            ),
            SizedBox(height: 40,),
            ListTile(
              leading: Icon(Icons.apps),
              title: Text('Play Store'),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
              },
            ),ListTile(
              leading: Icon(Icons.note_add),
              title: Text('Instagram'),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
              },
            ),
            ListTile(
              leading: Icon(Icons.facebook),
              title: Text('facebook'),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
              },
            ),
            SizedBox(height: 40,),

            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Log Out '),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
              },
            ),

          ],
        ),
      ),
    );
  }
}
