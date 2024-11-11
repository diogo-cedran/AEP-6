import '../models/device.dart';

class NetworkService {
  Future<List<Device>> fetchDevices() async {
    await Future.delayed(Duration(seconds: 2));

    return [
      Device(name: "Laptop", ip: "192.168.0.2", status: "Confiável"),
      Device(name: "Smartphone", ip: "192.168.0.3", status: "Suspeito"),
      Device(name: "Tablet", ip: "192.168.0.4", status: "Confiável"),
    ];
  }

  Future<String> fetchTrafficBehavior(String ip) async {
    await Future.delayed(Duration(seconds: 1));

    if (ip == "192.168.0.3") {
      return "Comportamento suspeito detectado: Possível atividade de malware.";
    } else {
      return "Tráfego normal detectado.";
    }
  }
}
