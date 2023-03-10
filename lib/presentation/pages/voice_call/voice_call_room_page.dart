import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:hmssdk_flutter/hmssdk_flutter.dart';

class VoiceCallRoomPage extends StatefulWidget {
  const VoiceCallRoomPage({
    super.key,
    required this.name,
  });

  final String name;

  @override
  State<VoiceCallRoomPage> createState() => _VoiceCallRoomPageState();
}

class _VoiceCallRoomPageState extends State<VoiceCallRoomPage>
    implements HMSUpdateListener {
  //SDK
  late HMSSDK hmsSDK;

  // Variables required for joining a room
  final String authToken = dotenv.env['100MS_AUTH_TOKEN']!;
  late final String userName;

  // Variables required for rendering audio and peer info
  HMSPeer? localPeer, remotePeer;
  HMSAudioTrack? localPeerAudioTrack, remotePeerAudioTrack;

  // Initialize variables and join room
  @override
  void initState() {
    super.initState();
    userName = widget.name;
    initHMSSDK();
  }

  void initHMSSDK() async {
    hmsSDK = HMSSDK();
    await hmsSDK.build(); // ensure to await while invoking the `build` method
    hmsSDK.addUpdateListener(listener: this);
    hmsSDK.join(config: HMSConfig(authToken: authToken, userName: userName));
  }

  // Clear all variables
  @override
  void dispose() {
    remotePeer = null;
    remotePeerAudioTrack = null;
    localPeer = null;
    localPeerAudioTrack = null;
    super.dispose();
  }

  // Called when peer joined the room - get current state of room by using HMSRoom obj
  @override
  void onJoin({required HMSRoom room}) {
    room.peers?.forEach((peer) {
      if (peer.isLocal) {
        localPeer = peer;
        if (peer.audioTrack != null) {
          localPeerAudioTrack = peer.audioTrack;
        }
        if (mounted) {
          setState(() {});
        }
      }
    });
  }

  // Called when there's a peer update - use to update local & remote peer variables
  @override
  void onPeerUpdate({required HMSPeer peer, required HMSPeerUpdate update}) {
    switch (update) {
      case HMSPeerUpdate.peerJoined:
        if (!peer.isLocal) {
          if (mounted) {
            setState(() {
              remotePeer = peer;
            });
          }
        }
        break;
      case HMSPeerUpdate.peerLeft:
        if (!peer.isLocal) {
          if (mounted) {
            setState(() {
              remotePeer = null;
            });
          }
        }
        break;
      case HMSPeerUpdate.networkQualityUpdated:
        return;
      default:
        if (mounted) {
          setState(() {
            localPeer = null;
          });
        }
    }
  }

  // Called when there's a track update - use to update local & remote track variables
  @override
  void onTrackUpdate(
      {required HMSTrack track,
      required HMSTrackUpdate trackUpdate,
      required HMSPeer peer}) {
    if (track.kind == HMSTrackKind.kHMSTrackKindAudio) {
      switch (trackUpdate) {
        case HMSTrackUpdate.trackRemoved:
          if (mounted) {
            setState(() {
              peer.isLocal
                  ? localPeerAudioTrack = null
                  : remotePeerAudioTrack = null;
            });
          }
          return;
        default:
          if (mounted) {
            setState(() {
              peer.isLocal
                  ? localPeerAudioTrack = track as HMSAudioTrack
                  : remotePeerAudioTrack = track as HMSAudioTrack;
            });
          }
      }
    }
  }

  // More callbacks - no need to implement for quickstart
  @override
  void onAudioDeviceChanged(
      {HMSAudioDevice? currentAudioDevice,
      List<HMSAudioDevice>? availableAudioDevice}) {}

  @override
  void onChangeTrackStateRequest(
      {required HMSTrackChangeRequest hmsTrackChangeRequest}) {}

  @override
  void onHMSError({required HMSException error}) {}

  @override
  void onMessage({required HMSMessage message}) {}

  @override
  void onReconnected() {}

  @override
  void onReconnecting() {}

  @override
  void onRemovedFromRoom(
      {required HMSPeerRemovedFromPeer hmsPeerRemovedFromPeer}) {}

  @override
  void onRoleChangeRequest({required HMSRoleChangeRequest roleChangeRequest}) {}

  @override
  void onRoomUpdate({required HMSRoom room, required HMSRoomUpdate update}) {}

  @override
  void onUpdateSpeakers({required List<HMSSpeaker> updateSpeakers}) {}

  // Widget to render a single video tile
  Widget peerTile(Key key, HMSAudioTrack? audioTrack, HMSPeer? peer) {
    return Container(
      key: key,
      child: Center(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.blue.withAlpha(4),
            shape: BoxShape.circle,
            boxShadow: const [
              BoxShadow(
                color: Colors.blue,
                blurRadius: 20.0,
                spreadRadius: 5.0,
              ),
            ],
          ),
          child: Text(
            peer?.name.substring(0, 1) ?? "D",
            style: const TextStyle(
                color: Colors.white, fontSize: 24, fontWeight: FontWeight.w600),
          ),
        ),
      ),
    );
  }

  // Widget to render grid of peer tiles and a end button
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      // Used to call "leave room" upon clicking back button [in android]
      onWillPop: () async {
        hmsSDK.leave();
        Navigator.pop(context);
        return true;
      },
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black,
          body: Stack(
            children: [
              // Grid of peer tiles
              Container(
                height: MediaQuery.of(context).size.height,
                child: GridView(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisExtent: (remotePeerAudioTrack == null)
                          ? MediaQuery.of(context).size.height
                          : MediaQuery.of(context).size.height / 2,
                      crossAxisCount: 1),
                  children: [
                    if (remotePeerAudioTrack != null && remotePeer != null)
                      peerTile(
                          Key(remotePeerAudioTrack?.trackId ?? "" "mainAudio"),
                          remotePeerAudioTrack,
                          remotePeer),
                    peerTile(
                        Key(localPeerAudioTrack?.trackId ?? "" "mainAudio"),
                        localPeerAudioTrack,
                        localPeer)
                  ],
                ),
              ),
              // End button to leave the room
              Align(
                alignment: Alignment.bottomCenter,
                child: RawMaterialButton(
                  onPressed: () {
                    hmsSDK.leave();
                    Navigator.pop(context);
                  },
                  elevation: 2.0,
                  fillColor: Colors.red,
                  padding: const EdgeInsets.all(15.0),
                  shape: const CircleBorder(),
                  child: const Icon(
                    Icons.call_end,
                    size: 25.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
