import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class YourDataGridPage extends StatefulWidget {
  @override
  _YourDataGridPageState createState() => _YourDataGridPageState();
}

class _YourDataGridPageState extends State<YourDataGridPage> {
  List<Map<String, dynamic>> dataList = [];

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  Future<void> fetchData() async {
    try {
      final response =
          await http.get(Uri.parse('http://localhost:5000/api/list'));

      if (response.statusCode == 200) {
        final List<dynamic> responseData = json.decode(response.body);
        print(responseData);

        setState(() {
          dataList = List<Map<String, dynamic>>.from(responseData);
        });
      } else {
        print('Failed to fetch data: ${response.statusCode}');
      }
    } catch (error) {
      print('Error: $error');
    }
  }

  @override
  Widget build(BuildContext context) {
    return dataList.isEmpty
        ? Center(child: CircularProgressIndicator())
        : ListView(
            shrinkWrap: true,
            children: [
              DataTable(
                columns: [
                  DataColumn(label: Text('Client ID')),
                  DataColumn(label: Text('Client Name')),
                  DataColumn(label: Text('Email')),
                  DataColumn(label: Text('Phone')),
                  DataColumn(label: Text('Claims')),
                  DataColumn(label: Text('Number of Policies')),
                  DataColumn(label: Text('Total Amount Spent')),
                ],
                rows: dataList.map((dataItem) {
                  return DataRow(
                    cells: [
                      DataCell(Text(dataItem['clientId'].toString())),
                      DataCell(Text(dataItem['clientName'])),
                      DataCell(Text(dataItem['Email'])),
                      DataCell(Text(dataItem['Phone'])),
                      DataCell(Text(dataItem['Claims'].toString())),
                      DataCell(Text(dataItem['NumberOfPolices'].toString())),
                      DataCell(Text(dataItem['TotalAmountSpent'].toString())),
                    ],
                  );
                }).toList(),
              ),
            ],
          );
  }
}
