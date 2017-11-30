import 'dart:async';
import 'package:ulid/ulid.dart';

import 'message.dart';

class Peer {
  /// IP address of the peer
  final String ip;

  /// Id of the peer
  final String peerId;

  /// When was the peer last seen
  DateTime lastSeen;

  Peer(this.ip, this.peerId, this.lastSeen);
}

/// Peer contact list
class PeerContactBook {
  /// List of good peers
  final List<Peer> _good = <Peer>[];

  /// List of bad peers
  final List<Peer> _bad = <Peer>[];

  final List<Peer> _anchored = <Peer>[];

  /// Adds [peer] to good list
  void addGoodPeer(Peer peer) {
    // TODO
  }

  /// Adds [peer] to bad list
  void addBadPeer(Peer peer) {
    // TODO
  }
}

class P2P extends Object with P2PMsgHandler {
  /// Information about the owner peer
  final Peer me;

  /// Contact book used to manage peers
  final PeerContactBook _contactBook;

  Timer _checkTimer;

  P2P(this.me, this._contactBook) {
    _checkTimer = new Timer.periodic(new Duration(minutes: 1), (_) {
      writeContactBook();
      connectToEnoughNodes();
    });
  }

  /// Writes contact book to persistent storage
  Future writeContactBook() async {
    // TODO
  }

  /// If there are fewer connections than [maxConnections] try to connect to
  /// other peers
  Future connectToEnoughNodes() async {
    // TODO
  }

  /// Maximum number of allowed active peer connections
  static const int maxConnections = 10;
}