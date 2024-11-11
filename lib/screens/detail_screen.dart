import 'package:flutter/material.dart';
import '../models/device.dart';
import '../services/network_service.dart';

class DetailScreen extends StatelessWidget {
  final Device device;
  final NetworkService _networkService = NetworkService();

  DetailScreen({super.key, required this.device});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF162447),
        title: const Text(
          "Detalhes do Dispositivo",
          style: TextStyle(color: Color(0xFF00ADB5)),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: FutureBuilder<String>(
          future: _networkService.fetchTrafficBehavior(device.ip),
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
            }

            String behavior = snapshot.data ?? 'Comportamento não detectado';
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Nome: ${device.name}",
                  style: const TextStyle(fontSize: 18, color: Colors.white),
                ),
                const SizedBox(height: 8),
                Text(
                  "Endereço IP: ${device.ip}",
                  style: const TextStyle(fontSize: 16, color: Colors.white70),
                ),
                const SizedBox(height: 8),
                Text(
                  "Status: ${device.status}",
                  style: const TextStyle(fontSize: 16, color: Colors.white70),
                ),
                const SizedBox(height: 16),
                ExpansionTile(
                  backgroundColor: const Color(0xFF1B1B2F),
                  collapsedBackgroundColor: const Color(0xFF1F4068),
                  title: const Text(
                    "Comportamento de Tráfego",
                    style: TextStyle(color: Color(0xFF00ADB5)),
                  ),
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        behavior,
                        style: const TextStyle(color: Colors.white70),
                      ),
                    ),
                  ],
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
