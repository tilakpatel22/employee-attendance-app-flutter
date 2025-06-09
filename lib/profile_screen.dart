import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF121212),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFF282828),
              Color(0xFF121212),
            ],
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              // Header
              Padding(
                padding: EdgeInsets.all(20),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () => Navigator.pop(context),
                      icon: Icon(Icons.arrow_back, color: Colors.white),
                    ),
                    Text(
                      'Profile',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Spacer(),
                    IconButton(
                      onPressed: () => _showEditProfileDialog(context),
                      icon: Icon(Icons.edit, color: Colors.white),
                    ),
                  ],
                ),
              ),

              // Content
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(top: 20),
                  decoration: BoxDecoration(
                    color: Color(0xFF121212),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  child: SingleChildScrollView(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      children: [
                        // Profile Picture and Basic Info
                        Container(
                          padding: EdgeInsets.all(25),
                          decoration: BoxDecoration(
                            color: Color(0xFF282828),
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black54,
                                blurRadius: 10,
                                spreadRadius: 2,
                              ),
                            ],
                          ),
                          child: Column(
                            children: [
                              Stack(
                                children: [
                                  Container(
                                    width: 120,
                                    height: 120,
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                        colors: [Color(0xFF575757), Color(0xFF3f3f3f)],
                                      ),
                                      shape: BoxShape.circle,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black54,
                                          blurRadius: 15,
                                          spreadRadius: 3,
                                        ),
                                      ],
                                    ),
                                    child: Icon(
                                      Icons.person,
                                      size: 60,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 5,
                                    right: 5,
                                    child: GestureDetector(
                                      onTap: () => _showImageSourceDialog(context),
                                      child: Container(
                                        width: 35,
                                        height: 35,
                                        decoration: BoxDecoration(
                                          color: Color(0xFF3f3f3f),
                                          shape: BoxShape.circle,
                                          border: Border.all(color: Color(0xFF575757), width: 2),
                                        ),
                                        child: Icon(
                                          Icons.camera_alt,
                                          size: 18,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 20),
                              Text(
                                'John Doe',
                                style: TextStyle(
                                  fontSize: 26,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(height: 8),
                              Text(
                                'Senior Software Developer',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Color(0xFF8b8b8b),
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                'Information Technology Department',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Color(0xFF8b8b8b),
                                ),
                              ),
                              SizedBox(height: 15),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                                    decoration: BoxDecoration(
                                      color: Color(0xFF3f3f3f),
                                      borderRadius: BorderRadius.circular(20),
                                      border: Border.all(color: Colors.green),
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Container(
                                          width: 8,
                                          height: 8,
                                          decoration: BoxDecoration(
                                            color: Colors.green,
                                            shape: BoxShape.circle,
                                          ),
                                        ),
                                        SizedBox(width: 8),
                                        Text(
                                          'Active Employee',
                                          style: TextStyle(
                                            color: Colors.green,
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  Container(
                                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                                    decoration: BoxDecoration(
                                      color: Color(0xFF3f3f3f),
                                      borderRadius: BorderRadius.circular(20),
                                      border: Border.all(color: Colors.blue),
                                    ),
                                    child: Text(
                                      'ID: GS10035997',
                                      style: TextStyle(
                                        color: Colors.blue,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),

                        SizedBox(height: 25),

                        // Quick Stats
                        Container(
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            color: Color(0xFF282828),
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black54,
                                blurRadius: 8,
                                spreadRadius: 1,
                              ),
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Quick Stats',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(height: 20),
                              Row(
                                children: [
                                  Expanded(
                                    child: _buildStatItem(
                                      icon: Icons.calendar_today,
                                      value: '5.2',
                                      label: 'Years with Company',
                                      color: Colors.blue,
                                    ),
                                  ),
                                  SizedBox(width: 15),
                                  Expanded(
                                    child: _buildStatItem(
                                      icon: Icons.trending_up,
                                      value: '96%',
                                      label: 'Attendance Rate',
                                      color: Colors.green,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 15),
                              Row(
                                children: [
                                  Expanded(
                                    child: _buildStatItem(
                                      icon: Icons.schedule,
                                      value: '8.5',
                                      label: 'Avg Daily Hours',
                                      color: Colors.orange,
                                    ),
                                  ),
                                  SizedBox(width: 15),
                                  Expanded(
                                    child: _buildStatItem(
                                      icon: Icons.star,
                                      value: '4.8',
                                      label: 'Performance Rating',
                                      color: Colors.purple,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),

                        SizedBox(height: 25),

                        // Personal Information
                        _buildInfoSection(
                          title: 'Personal Information',
                          icon: Icons.person_outline,
                          items: [
                            _buildInfoItem('Full Name', 'John Doe'),
                            _buildInfoItem('Employee ID', 'GS10035997'),
                            _buildInfoItem('Email', 'john.doe@company.com'),
                            _buildInfoItem('Phone Number', '+91 98765 43210'),
                            _buildInfoItem('Date of Birth', '15 January 1990'),
                            _buildInfoItem('Gender', 'Male'),
                            _buildInfoItem('Blood Group', 'O+ Positive'),
                            _buildInfoItem('Address', '123 Tech Street, Vadodara, Gujarat, India'),
                          ],
                        ),

                        SizedBox(height: 25),

                        // Work Information
                        _buildInfoSection(
                          title: 'Work Information',
                          icon: Icons.work_outline,
                          items: [
                            _buildInfoItem('Department', 'Information Technology'),
                            _buildInfoItem('Designation', 'Senior Software Developer'),
                            _buildInfoItem('Employee Type', 'Full-time'),
                            _buildInfoItem('Reporting Manager', 'Jane Smith'),
                            _buildInfoItem('Join Date', '01 March 2020'),
                            _buildInfoItem('Work Location', 'Vadodara Office'),
                            _buildInfoItem('Shift Timing', '09:00 AM - 06:00 PM'),
                            _buildInfoItem('Team', 'Mobile Development Team'),
                          ],
                        ),

                        SizedBox(height: 25),

                        // Emergency Contact
                        _buildInfoSection(
                          title: 'Emergency Contact',
                          icon: Icons.emergency,
                          items: [
                            _buildInfoItem('Contact Name', 'Jane Doe'),
                            _buildInfoItem('Relationship', 'Spouse'),
                            _buildInfoItem('Phone Number', '+91 98765 43211'),
                            _buildInfoItem('Address', '123 Tech Street, Vadodara, Gujarat'),
                          ],
                        ),

                        SizedBox(height: 25),

                        // Bank Details
                        _buildInfoSection(
                          title: 'Bank Details',
                          icon: Icons.account_balance,
                          items: [
                            _buildInfoItem('Bank Name', 'State Bank of India'),
                            _buildInfoItem('Account Number', '****-****-****-1234'),
                            _buildInfoItem('IFSC Code', 'SBIN0001234'),
                            _buildInfoItem('Branch', 'Vadodara Main Branch'),
                          ],
                        ),

                        SizedBox(height: 25),

                        // Settings and Actions
                        Container(
                          decoration: BoxDecoration(
                            color: Color(0xFF282828),
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black54,
                                blurRadius: 8,
                                spreadRadius: 1,
                              ),
                            ],
                          ),
                          child: Column(
                            children: [
                              _buildSettingItem(
                                icon: Icons.notifications_outlined,
                                title: 'Notifications',
                                subtitle: 'Manage notification preferences',
                                onTap: () => _showNotificationSettings(context),
                              ),
                              _buildSettingItem(
                                icon: Icons.security_outlined,
                                title: 'Privacy & Security',
                                subtitle: 'Password and security settings',
                                onTap: () => _showSecuritySettings(context),
                              ),
                              _buildSettingItem(
                                icon: Icons.language_outlined,
                                title: 'Language',
                                subtitle: 'Choose your preferred language',
                                onTap: () => _showLanguageSettings(context),
                              ),
                              _buildSettingItem(
                                icon: Icons.download_outlined,
                                title: 'Download Data',
                                subtitle: 'Export your personal data',
                                onTap: () => _showDownloadDialog(context),
                              ),
                              _buildSettingItem(
                                icon: Icons.help_outline,
                                title: 'Help & Support',
                                subtitle: 'Get help and support',
                                onTap: () => _showHelpDialog(context),
                              ),
                              _buildSettingItem(
                                icon: Icons.info_outline,
                                title: 'About',
                                subtitle: 'App version and information',
                                onTap: () => _showAboutDialog(context),
                              ),
                              _buildSettingItem(
                                icon: Icons.logout,
                                title: 'Logout',
                                subtitle: 'Sign out of your account',
                                onTap: () => _showLogoutDialog(context),
                                isLast: true,
                                textColor: Colors.red,
                              ),
                            ],
                          ),
                        ),

                        SizedBox(height: 30),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildInfoSection({
    required String title,
    required IconData icon,
    required List<Widget> items,
  }) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Color(0xFF282828),
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black54,
            blurRadius: 8,
            spreadRadius: 1,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: Color(0xFF3f3f3f),
                  shape: BoxShape.circle,
                ),
                child: Icon(icon, color: Colors.white, size: 20),
              ),
              SizedBox(width: 15),
              Text(
                title,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          ...items,
        ],
      ),
    );
  }

  Widget _buildInfoItem(String label, String value) {
    return Padding(
      padding: EdgeInsets.only(bottom: 15),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 2,
            child: Text(
              label,
              style: TextStyle(
                fontSize: 14,
                color: Color(0xFF8b8b8b),
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Text(
              value,
              style: TextStyle(
                fontSize: 14,
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStatItem({
    required IconData icon,
    required String value,
    required String label,
    required Color color,
  }) {
    return Container(
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Color(0xFF3f3f3f),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: color.withOpacity(0.1),
              shape: BoxShape.circle,
            ),
            child: Icon(icon, color: color, size: 20),
          ),
          SizedBox(height: 10),
          Text(
            value,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 5),
          Text(
            label,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 11,
              color: Color(0xFF8b8b8b),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSettingItem({
    required IconData icon,
    required String title,
    required String subtitle,
    required VoidCallback onTap,
    bool isLast = false,
    Color? textColor,
  }) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          border: isLast ? null : Border(
            bottom: BorderSide(color: Color(0xFF3f3f3f), width: 1),
          ),
        ),
        child: Row(
          children: [
            Container(
              width: 45,
              height: 45,
              decoration: BoxDecoration(
                color: Color(0xFF3f3f3f),
                shape: BoxShape.circle,
              ),
              child: Icon(
                icon,
                color: textColor ?? Colors.white,
                size: 22,
              ),
            ),
            SizedBox(width: 15),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: textColor ?? Colors.white,
                    ),
                  ),
                  SizedBox(height: 2),
                  Text(
                    subtitle,
                    style: TextStyle(
                      fontSize: 13,
                      color: Color(0xFF8b8b8b),
                    ),
                  ),
                ],
              ),
            ),
            Icon(
              Icons.arrow_forward_ios,
              size: 16,
              color: Color(0xFF8b8b8b),
            ),
          ],
        ),
      ),
    );
  }

  void _showEditProfileDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: Color(0xFF282828),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        title: Text('Edit Profile', style: TextStyle(color: Colors.white)),
        content: Text(
          'Profile editing functionality will be available in the next update. Contact HR for any changes.',
          style: TextStyle(color: Color(0xFF8b8b8b)),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text('OK', style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
    );
  }

  void _showImageSourceDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: Color(0xFF282828),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        title: Text('Change Profile Picture', style: TextStyle(color: Colors.white)),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              leading: Icon(Icons.camera_alt, color: Colors.white),
              title: Text('Take Photo', style: TextStyle(color: Colors.white)),
              onTap: () {
                Navigator.pop(context);
                // Add camera functionality
              },
            ),
            ListTile(
              leading: Icon(Icons.photo_library, color: Colors.white),
              title: Text('Choose from Gallery', style: TextStyle(color: Colors.white)),
              onTap: () {
                Navigator.pop(context);
                // Add gallery functionality
              },
            ),
            ListTile(
              leading: Icon(Icons.delete, color: Colors.red),
              title: Text('Remove Photo', style: TextStyle(color: Colors.red)),
              onTap: () {
                Navigator.pop(context);
                // Add remove functionality
              },
            ),
          ],
        ),
      ),
    );
  }

  void _showNotificationSettings(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: Color(0xFF282828),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        title: Text('Notification Settings', style: TextStyle(color: Colors.white)),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            _buildSwitchTile('Push Notifications', true),
            _buildSwitchTile('Email Notifications', true),
            _buildSwitchTile('SMS Alerts', false),
            _buildSwitchTile('Meeting Reminders', true),
            _buildSwitchTile('Leave Approvals', true),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text('Save', style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
    );
  }

  Widget _buildSwitchTile(String title, bool value) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: TextStyle(color: Colors.white)),
          Switch(
            value: value,
            onChanged: (newValue) {
              // Handle switch change
            },
            activeColor: Colors.green,
          ),
        ],
      ),
    );
  }

  void _showSecuritySettings(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: Color(0xFF282828),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        title: Text('Security Settings', style: TextStyle(color: Colors.white)),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              leading: Icon(Icons.lock_outline, color: Colors.white),
              title: Text('Change Password', style: TextStyle(color: Colors.white)),
              subtitle: Text('Update your account password', style: TextStyle(color: Color(0xFF8b8b8b))),
              onTap: () {
                Navigator.pop(context);
                _showChangePasswordDialog(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.fingerprint, color: Colors.white),
              title: Text('Biometric Login', style: TextStyle(color: Colors.white)),
              subtitle: Text('Enable fingerprint/face unlock', style: TextStyle(color: Color(0xFF8b8b8b))),
              trailing: Switch(
                value: true,
                onChanged: (value) {},
                activeColor: Colors.green,
              ),
            ),
            ListTile(
              leading: Icon(Icons.security, color: Colors.white),
              title: Text('Two-Factor Authentication', style: TextStyle(color: Colors.white)),
              subtitle: Text('Add extra security to your account', style: TextStyle(color: Color(0xFF8b8b8b))),
              trailing: Switch(
                value: false,
                onChanged: (value) {},
                activeColor: Colors.green,
              ),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text('Close', style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
    );
  }

  void _showChangePasswordDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: Color(0xFF282828),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        title: Text('Change Password', style: TextStyle(color: Colors.white)),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              obscureText: true,
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                labelText: 'Current Password',
                labelStyle: TextStyle(color: Color(0xFF8b8b8b)),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFF3f3f3f)),
                  borderRadius: BorderRadius.circular(8),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            SizedBox(height: 15),
            TextField(
              obscureText: true,
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                labelText: 'New Password',
                labelStyle: TextStyle(color: Color(0xFF8b8b8b)),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFF3f3f3f)),
                  borderRadius: BorderRadius.circular(8),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            SizedBox(height: 15),
            TextField(
              obscureText: true,
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                labelText: 'Confirm New Password',
                labelStyle: TextStyle(color: Color(0xFF8b8b8b)),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFF3f3f3f)),
                  borderRadius: BorderRadius.circular(8),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text('Cancel', style: TextStyle(color: Color(0xFF8b8b8b))),
          ),
          TextButton(
            onPressed: () {
              Navigator.pop(context);
              _showSuccessDialog(context, 'Password Changed', 'Your password has been updated successfully.');
            },
            child: Text('Update', style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
    );
  }

  void _showLanguageSettings(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: Color(0xFF282828),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        title: Text('Language Settings', style: TextStyle(color: Colors.white)),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            _buildLanguageOption('English', true),
            _buildLanguageOption('Hindi', false),
            _buildLanguageOption('Gujarati', false),
            _buildLanguageOption('Spanish', false),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text('Save', style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
    );
  }

  Widget _buildLanguageOption(String language, bool selected) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 4),
      child: Row(
        children: [
          Radio(
            value: selected,
            groupValue: true,
            onChanged: (value) {},
            activeColor: Colors.green,
          ),
          Text(language, style: TextStyle(color: Colors.white)),
        ],
      ),
    );
  }

  void _showDownloadDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: Color(0xFF282828),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        title: Text('Download Data', style: TextStyle(color: Colors.white)),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Select the data you want to download:',
              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 15),
            _buildCheckboxTile('Personal Information', true),
            _buildCheckboxTile('Attendance Records', true),
            _buildCheckboxTile('Leave History', false),
            _buildCheckboxTile('Performance Data', false),
            SizedBox(height: 15),
            Text(
              'Data will be exported as PDF format and sent to your registered email.',
              style: TextStyle(color: Color(0xFF8b8b8b), fontSize: 12),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text('Cancel', style: TextStyle(color: Color(0xFF8b8b8b))),
          ),
          TextButton(
            onPressed: () {
              Navigator.pop(context);
              _showSuccessDialog(context, 'Download Initiated', 'Your data export has been initiated. You will receive an email shortly.');
            },
            child: Text('Download', style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
    );
  }

  Widget _buildCheckboxTile(String title, bool value) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 4),
      child: Row(
        children: [
          Checkbox(
            value: value,
            onChanged: (newValue) {},
            activeColor: Colors.green,
          ),
          Text(title, style: TextStyle(color: Colors.white)),
        ],
      ),
    );
  }

  void _showHelpDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: Color(0xFF282828),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        title: Text('Help & Support', style: TextStyle(color: Colors.white)),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Need assistance? We\'re here to help!', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
            SizedBox(height: 15),
            _buildContactItem(Icons.email, 'Email Support', 'support@workflowpro.com'),
            _buildContactItem(Icons.phone, 'Phone Support', '+91 98765 43210'),
            _buildContactItem(Icons.chat, 'Live Chat', 'Available 9 AM - 6 PM'),
            _buildContactItem(Icons.help_center, 'Help Center', 'Visit our FAQ section'),
            SizedBox(height: 15),
            Text(
              'Response time: Usually within 24 hours',
              style: TextStyle(color: Color(0xFF8b8b8b), fontSize: 12),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text('Close', style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
    );
  }

  Widget _buildContactItem(IconData icon, String title, String subtitle) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 6),
      child: Row(
        children: [
          Container(
            width: 35,
            height: 35,
            decoration: BoxDecoration(
              color: Color(0xFF3f3f3f),
              shape: BoxShape.circle,
            ),
            child: Icon(icon, color: Colors.white, size: 18),
          ),
          SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 14)),
                Text(subtitle, style: TextStyle(color: Color(0xFF8b8b8b), fontSize: 12)),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _showAboutDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: Color(0xFF282828),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        title: Column(
          children: [
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [Color(0xFF575757), Color(0xFF3f3f3f)]),
                shape: BoxShape.circle,
              ),
              child: Icon(Icons.work_outline, color: Colors.white, size: 30),
            ),
            SizedBox(height: 10),
            Text('WorkFlow Pro', style: TextStyle(color: Colors.white)),
          ],
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Version 2.1.0', style: TextStyle(color: Color(0xFF8b8b8b))),
            SizedBox(height: 15),
            Text(
              'Smart Attendance Solution for modern workplaces. Track time, manage attendance, and boost productivity.',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white, fontSize: 14),
            ),
            SizedBox(height: 15),
            Text('© 2025 WorkFlow Pro. All rights reserved.',
                style: TextStyle(color: Color(0xFF8b8b8b), fontSize: 12)),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text('Close', style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
    );
  }

  void _showLogoutDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: Color(0xFF282828),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        title: Text('Logout', style: TextStyle(color: Colors.white)),
        content: Text(
          'Are you sure you want to logout from your account?',
          style: TextStyle(color: Color(0xFF8b8b8b)),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text('Cancel', style: TextStyle(color: Color(0xFF8b8b8b))),
          ),
          TextButton(
            onPressed: () {
              Navigator.pop(context);
              // Navigate to login screen
              Navigator.pushNamedAndRemoveUntil(context, '/', (route) => false);
            },
            child: Text('Logout', style: TextStyle(color: Colors.red)),
          ),
        ],
      ),
    );
  }

  void _showSuccessDialog(BuildContext context, String title, String message) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: Color(0xFF282828),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        title: Column(
          children: [
            Icon(Icons.check_circle, color: Colors.green, size: 50),
            SizedBox(height: 10),
            Text(title, style: TextStyle(color: Colors.white)),
          ],
        ),
        content: Text(
          message,
          textAlign: TextAlign.center,
          style: TextStyle(color: Color(0xFF8b8b8b)),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text('OK', style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
    );
  }
}