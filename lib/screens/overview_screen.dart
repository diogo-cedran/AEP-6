import 'package:flutter/material.dart';
import '../models/device.dart';
import '../services/network_service.dart';
import 'detail_screen.dart';

class OverviewScreen extends StatefulWidget {
  const OverviewScreen({super.key});

  @override
  _OverviewScreenState createState() => _OverviewScreenState();
}

class _OverviewScreenState extends State<OverviewScreen> {
  final NetworkService _networkService = NetworkService();
  late Future<List<Device>> _devicesFuture;

  @override
  void initState() {
    super.initState();
    _devicesFuture = _networkService.fetchDevices();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF162447),
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.shield, color: Color(0xFF00ADB5)),
            SizedBox(width: 10),
            Text(
              "Network Monitoring",
              style: TextStyle(color: Color(0xFF00ADB5)),
            ),
          ],
        ),
        centerTitle: true,
      ),
      body: FutureBuilder<List<Device>>(
        future: _devicesFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator(color: Color(0xFF00ADB5)));
          } else if (snapshot.hasError) {
            return Center(
              child: Text(
                'Erro: ${snapshot.error}',
                style: const TextStyle(color: Colors.redAccent),
              ),
            );
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(
              child: Text(
                'Nenhum dispositivo encontrado.',
                style: TextStyle(color: Colors.white70),
              ),
            );
          }

          List<Device> devices = snapshot.data!;
          return ListView.builder(
            padding: const EdgeInsets.all(10),
            itemCount: devices.length,
            itemBuilder: (context, index) {
              return Card(
                color: const Color(0xFF1F4068),
                elevation: 5,
                margin: const EdgeInsets.symmetric(vertical: 8),
                child: ListTile(
                  leading: Icon(
                    devices[index].status == "Suspeito"
                        ? Icons.warning
                        : Icons.check_circle,
                    color: devices[index].status == "Suspeito" ? Colors.redAccent : const Color(0xFF00ADB5),
                  ),
                  title: Text(
                    devices[index].name,
                    style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                  subtitle: Text("IP: ${devices[index].ip}", style: const TextStyle(color: Colors.white70)),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailScreen(device: devices[index]),
                      ),
                    );
                  },
                ),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xFF00ADB5),
        onPressed: () {
          setState(() {
            _devicesFuture = _networkService.fetchDevices();
          });
        },
        child: const Icon(Icons.refresh, color: Colors.white),
      ),
    );
  }
}
