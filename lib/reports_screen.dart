import 'package:flutter/material.dart';

// Reports Screen with Dummy Data
class ReportsScreen extends StatefulWidget {
  @override
  _ReportsScreenState createState() => _ReportsScreenState();
}

class _ReportsScreenState extends State<ReportsScreen> {
  int selectedTabIndex = 0;

  // Dummy attendance data
  final List<Map<String, dynamic>> attendanceData = [
    {
      'date': '2025-05-29',
      'checkIn': '10:09 AM',
      'checkOut': '08:34 PM',
      'duration': '10h 24m',
      'status': 'Present',
      'overtimeHours': '2h 24m',
    },
    {
      'date': '2025-05-28',
      'checkIn': '09:15 AM',
      'checkOut': '06:30 PM',
      'duration': '9h 15m',
      'status': 'Present',
      'overtimeHours': '1h 15m',
    },
    {
      'date': '2025-05-27',
      'checkIn': '09:30 AM',
      'checkOut': '06:45 PM',
      'duration': '9h 15m',
      'status': 'Present',
      'overtimeHours': '1h 15m',
    },
    {
      'date': '2025-05-26',
      'checkIn': '--',
      'checkOut': '--',
      'duration': '--',
      'status': 'Weekend',
      'overtimeHours': '--',
    },
    {
      'date': '2025-05-25',
      'checkIn': '--',
      'checkOut': '--',
      'duration': '--',
      'status': 'Weekend',
      'overtimeHours': '--',
    },
    {
      'date': '2025-05-24',
      'checkIn': '08:45 AM',
      'checkOut': '05:50 PM',
      'duration': '9h 05m',
      'status': 'Present',
      'overtimeHours': '1h 05m',
    },
    {
      'date': '2025-05-23',
      'checkIn': '09:00 AM',
      'checkOut': '06:15 PM',
      'duration': '9h 15m',
      'status': 'Present',
      'overtimeHours': '1h 15m',
    },
  ];

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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Reports',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Color(0xFF3f3f3f),
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black54,
                            blurRadius: 10,
                            spreadRadius: 2,
                          ),
                        ],
                      ),
                      child: Icon(
                        Icons.filter_alt,
                        color: Colors.white,
                        size: 25,
                      ),
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
                  child: Column(
                    children: [
                      // Tab Bar
                      Container(
                        margin: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: Color(0xFF282828),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              child: GestureDetector(
                                onTap: () => setState(() => selectedTabIndex = 0),
                                child: Container(
                                  padding: EdgeInsets.symmetric(vertical: 15),
                                  decoration: BoxDecoration(
                                    color: selectedTabIndex == 0
                                        ? Color(0xFF575757)
                                        : Colors.transparent,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: Text(
                                    'Overview',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: selectedTabIndex == 0
                                          ? Colors.white
                                          : Color(0xFF8b8b8b),
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: GestureDetector(
                                onTap: () => setState(() => selectedTabIndex = 1),
                                child: Container(
                                  padding: EdgeInsets.symmetric(vertical: 15),
                                  decoration: BoxDecoration(
                                    color: selectedTabIndex == 1
                                        ? Color(0xFF575757)
                                        : Colors.transparent,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: Text(
                                    'Attendance',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: selectedTabIndex == 1
                                          ? Colors.white
                                          : Color(0xFF8b8b8b),
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      // Tab Content
                      Expanded(
                        child: selectedTabIndex == 0
                            ? _buildOverviewTab()
                            : _buildAttendanceTab(),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildOverviewTab() {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Summary Cards
          Row(
            children: [
              Expanded(
                child: _buildSummaryCard(
                  title: 'This Month',
                  value: '22',
                  subtitle: 'Days Present',
                  icon: Icons.calendar_today,
                  color: Colors.green,
                ),
              ),
              SizedBox(width: 15),
              Expanded(
                child: _buildSummaryCard(
                  title: 'Total Hours',
                  value: '176',
                  subtitle: 'This Month',
                  icon: Icons.schedule,
                  color: Colors.blue,
                ),
              ),
            ],
          ),

          SizedBox(height: 15),

          Row(
            children: [
              Expanded(
                child: _buildSummaryCard(
                  title: 'Overtime',
                  value: '28h',
                  subtitle: 'This Month',
                  icon: Icons.timer,
                  color: Colors.orange,
                ),
              ),
              SizedBox(width: 15),
              Expanded(
                child: _buildSummaryCard(
                  title: 'Leaves',
                  value: '2',
                  subtitle: 'Days Taken',
                  icon: Icons.event_busy,
                  color: Colors.red,
                ),
              ),
            ],
          ),

          SizedBox(height: 30),

          // Monthly Performance Chart
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
                  'Monthly Performance',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  height: 200,
                  child: Column(
                    children: [
                      Expanded(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: List.generate(7, (index) {
                            List<double> heights = [0.8, 0.6, 0.9, 0.7, 0.85, 0.75, 0.95];
                            List<String> days = ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'];
                            return Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  width: 30,
                                  height: 150 * heights[index],
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      begin: Alignment.bottomCenter,
                                      end: Alignment.topCenter,
                                      colors: [Color(0xFF575757), Color(0xFF3f3f3f)],
                                    ),
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                ),
                                SizedBox(height: 8),
                                Text(
                                  days[index],
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Color(0xFF8b8b8b),
                                  ),
                                ),
                              ],
                            );
                          }),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          SizedBox(height: 30),

          // Recent Activity
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
                  'Recent Activity',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 15),
                ...attendanceData.take(3).map((record) => _buildActivityItem(record)),
              ],
            ),
          ),

          SizedBox(height: 20),
        ],
      ),
    );
  }

  Widget _buildAttendanceTab() {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Attendance Records',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 15),
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
                // Table Header
                Container(
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: Color(0xFF575757),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                    ),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Text(
                          'Date',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Text(
                          'Check In',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Text(
                          'Check Out',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Text(
                          'Duration',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                // Table Data
                ...attendanceData.map((record) => _buildAttendanceRow(record)),
              ],
            ),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }

  Widget _buildSummaryCard({
    required String title,
    required String value,
    required String subtitle,
    required IconData icon,
    required Color color,
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
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: Color(0xFF3f3f3f),
              shape: BoxShape.circle,
            ),
            child: Icon(icon, color: color, size: 25),
          ),
          SizedBox(height: 15),
          Text(
            value,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 5),
          Text(
            title,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
          Text(
            subtitle,
            style: TextStyle(
              fontSize: 10,
              color: Color(0xFF8b8b8b),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildActivityItem(Map<String, dynamic> record) {
    Color statusColor = record['status'] == 'Present' ? Colors.green : Color(0xFF8b8b8b);

    return Container(
      margin: EdgeInsets.only(bottom: 15),
      child: Row(
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: Color(0xFF3f3f3f),
              shape: BoxShape.circle,
            ),
            child: Icon(
              record['status'] == 'Present' ? Icons.check : Icons.weekend,
              color: statusColor,
              size: 20,
            ),
          ),
          SizedBox(width: 15),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  record['date'],
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Text(
                  record['status'] == 'Present'
                      ? '${record['checkIn']} - ${record['checkOut']}'
                      : record['status'],
                  style: TextStyle(
                    fontSize: 12,
                    color: Color(0xFF8b8b8b),
                  ),
                ),
              ],
            ),
          ),
          Text(
            record['duration'],
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildAttendanceRow(Map<String, dynamic> record) {
    Color statusColor = record['status'] == 'Present'
        ? Colors.green
        : record['status'] == 'Weekend'
        ? Colors.blue
        : Color(0xFF8b8b8b);

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 12),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Color(0xFF3f3f3f), width: 1),
        ),
      ),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Text(
              record['date'],
              style: TextStyle(
                fontSize: 12,
                color: Colors.white,
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Text(
              record['checkIn'],
              style: TextStyle(
                fontSize: 12,
                color: Colors.white,
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Text(
              record['checkOut'],
              style: TextStyle(
                fontSize: 12,
                color: Colors.white,
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Row(
              children: [
                Text(
                  record['duration'],
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                  ),
                ),
                SizedBox(width: 5),
                Container(
                  width: 8,
                  height: 8,
                  decoration: BoxDecoration(
                    color: statusColor,
                    shape: BoxShape.circle,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}