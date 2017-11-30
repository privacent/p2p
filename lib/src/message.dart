import 'peer.dart';

abstract class P2PMsgHandler {
	/// Information about the owner peer
	Peer get me;

	/// Handles handshake message
	void handleHandshake() {
		// TODO
	}

	/// Handles handshake message
	void handleTimedSync() {
		// TODO
	}

	/// Handles handshake message
	PingResponse handlePing() => new PingResponse(me.peerId);

	/// Handles handshake message
	P2PStatInfo handleGetStat() {
		// TODO
	}

	/// Handles handshake message
	GetPeerIdResponse handlePeerId() => new GetPeerIdResponse(me.peerId);
}

class GetPeerIdResponse {
	final String peerId;

	GetPeerIdResponse(this.peerId);
}

class P2PStatInfo {
	/// PrivaCent version
	final int version;

	// TODO add other fields

	P2PStatInfo(this.version);
}

class PingResponse {
	final String peerId;

	PingResponse(this.peerId);
}