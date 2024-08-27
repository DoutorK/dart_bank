import 'package:dart_bank/models/account.dart';

void transferService(Account origin, Account destination, double value) {
  if (origin == destination) {
    throw ArgumentError('É a mesma conta, animal');
  }
  if (value <= 0) {
    throw ArgumentError('Tem que transferir um valor válido, né?!');
  }
  if (value > origin.getBalance()) {
    throw ArgumentError('Tem que ter esse dinheiro na conta primeiramente.');
  } else {
    print('Transferência bem sucedida!');
  }

  origin.removeBalance(value);
  destination.addBalance(value);
}
