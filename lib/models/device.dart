class Device {
  final String name;
  final String ip;
  final String status;

  Device({required this.name, required this.ip, required this.status});

  factory Device.fromJson(Map<String, dynamic> json) {
    return Device(
      name: json['name'],
      ip: json['ip'],
      status: json['status'],
    );
  }
}
