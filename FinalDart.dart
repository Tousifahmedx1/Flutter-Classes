import 'dart:io';

class Client {
  int id;
  String name;
  String email;
  String phone;

  Client(this.id, this.name, this.email, this.phone);

  @override
  String toString() {
    return 'ID: $id | Name: $name | Email: $email | Phone: $phone';
  }
}

class ClientManagementSystem {
  List<Client> clients = [];
  int _nextId = 1001; // Start from 1001

  void start() {
    while (true) {
      print('\n=== Client Management System ===');
      print('1. Add Client');
      print('2. View All Clients');
      print('3. Search Client');
      print('4. Update Client');
      print('5. Delete Client');
      print('6. Count Clients');
      print('7. Sort Clients by Name');
      print('8. Export Clients to File');
      print('9. Exit');
      stdout.write('Select an option: ');
      String? choice = stdin.readLineSync();

      switch (choice) {
        case '1':
          addClient();
          break;
        case '2':
          viewClients();
          break;
        case '3':
          searchClient();
          break;
        case '4':
          updateClient();
          break;
        case '5':
          deleteClient();
          break;
        case '6':
          countClients();
          break;
        case '7':
          sortClients();
          break;
        case '8':
          exportClients();
          break;
        case '9':
          print('Exiting... Goodbye!');
          return;
        default:
          print('Invalid choice. Please try again.');
      }
    }
  }

  void addClient() {
    stdout.write('Enter client name: ');
    String? name = stdin.readLineSync();
    stdout.write('Enter client email: ');
    String? email = stdin.readLineSync();
    stdout.write('Enter client phone: ');
    String? phone = stdin.readLineSync();

    if (name == null ||
        name.isEmpty ||
        email == null ||
        email.isEmpty ||
        phone == null ||
        phone.isEmpty) {
      print('Error: All fields are required.');
      return;
    }

    clients.add(Client(_nextId++, name, email, phone));
    print('Client added successfully!');
  }

  void viewClients() {
    if (clients.isEmpty) {
      print('No clients found.');
      return;
    }
    print('\n--- Client List ---');
    for (var client in clients) {
      print(client);
    }
  }

  void searchClient() {
    stdout.write('Enter client ID or name to search: ');
    String? query = stdin.readLineSync();

    if (query == null || query.isEmpty) {
      print('Search query cannot be empty.');
      return;
    }

    var results = clients.where(
      (c) =>
          c.id.toString() == query ||
          c.name.toLowerCase().contains(query.toLowerCase()),
    );

    if (results.isEmpty) {
      print('No client found.');
    } else {
      print('\n--- Search Results ---');
      for (var client in results) {
        print(client);
      }
    }
  }

  void updateClient() {
    stdout.write('Enter client ID to update: ');
    String? idInput = stdin.readLineSync();
    int? id = int.tryParse(idInput ?? '');
    if (id == null) {
      print('Invalid ID.');
      return;
    }

    var client = clients.firstWhere(
      (c) => c.id == id,
      orElse: () => Client(-1, '', '', ''),
    );
    if (client.id == -1) {
      print('Client not found.');
      return;
    }

    print('\n--- Update Menu ---');
    print('1. Update Name');
    print('2. Update Email');
    print('3. Update Phone');
    print('4. Update All');
    stdout.write('Choose what to update: ');
    String? choice = stdin.readLineSync();

    switch (choice) {
      case '1':
        stdout.write('Enter new name: ');
        String? name = stdin.readLineSync();
        if (name != null && name.isNotEmpty) client.name = name;
        break;
      case '2':
        stdout.write('Enter new email: ');
        String? email = stdin.readLineSync();
        if (email != null && email.isNotEmpty) client.email = email;
        break;
      case '3':
        stdout.write('Enter new phone: ');
        String? phone = stdin.readLineSync();
        if (phone != null && phone.isNotEmpty) client.phone = phone;
        break;
      case '4':
        stdout.write('Enter new name: ');
        String? name = stdin.readLineSync();
        stdout.write('Enter new email: ');
        String? email = stdin.readLineSync();
        stdout.write('Enter new phone: ');
        String? phone = stdin.readLineSync();
        if (name != null && name.isNotEmpty) client.name = name;
        if (email != null && email.isNotEmpty) client.email = email;
        if (phone != null && phone.isNotEmpty) client.phone = phone;
        break;
      default:
        print('Invalid choice.');
        return;
    }
    print('Client updated successfully!');
  }

  void deleteClient() {
    stdout.write('Enter client ID to delete: ');
    String? idInput = stdin.readLineSync();
    int? id = int.tryParse(idInput ?? '');
    if (id == null) {
      print('Invalid ID.');
      return;
    }

    clients.removeWhere((c) => c.id == id);
    print('Client deleted successfully!');
  }

  void countClients() {
    print('Total clients: ${clients.length}');
  }

  void sortClients() {
    clients.sort((a, b) => a.name.compareTo(b.name));
    print('Clients sorted by name.');
  }

  void exportClients() {
    File file = File('clients.txt');
    var sink = file.openWrite();
    for (var client in clients) {
      sink.writeln(client.toString());
    }
    sink.close();
    print('Clients exported to clients.txt');
  }
}

void main() {
  ClientManagementSystem cms = ClientManagementSystem();
  cms.start();
}
