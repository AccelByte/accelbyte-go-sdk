#!/usr/bin/env bash

# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

# Code generated. DO NOT EDIT.

# Meta:
# - random seed: 256
# - template file: cli_test_ws.j2

# Instructions:
# - Run the Justice SDK Mock Server first before running this script.

export AB_BASE_URL="http://127.0.0.1:8080"
export AB_CLIENT_ID="admin"
export AB_CLIENT_SECRET="admin"
export AB_NAMESPACE="test"

export JUSTICE_BASE_URL="$AB_BASE_URL"
export APP_CLIENT_ID="$AB_CLIENT_ID"
export APP_CLIENT_SECRET="$AB_CLIENT_SECRET"

EXIT_CODE=0

eval_tap() {
  if [ $1 -eq 0 ]; then
    echo "ok $2 - $3"
  else
    EXIT_CODE=1
    echo "not ok $2 - $3"
    sed 's/^/# /g' $4
  fi
  rm -f $4
}

echo "TAP version 13"
echo "1..1"

#- 1 Login
samples/cli/sample-apps login \
    -u 'admin' \
    -p 'admin' \
    > test.out 2>&1
eval_tap $? 1 'Login' test.out

if [ $EXIT_CODE -ne 0 ]; then
  echo "Bail out! Login failed."
  exit $EXIT_CODE
fi

touch "tmp.dat"

#- 2 AcceptFriendsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: acceptFriendsNotif\nfriendId: l3JAr2tVPFgzSEnv' \
    > test.out 2>&1
eval_tap $? 2 'AcceptFriendsNotif' test.out

#- 3 AcceptFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: acceptFriendsRequest\nid: 6PsjbWmpLILFldhK\nfriendId: NppzQQS76zBoJv3L' \
    > test.out 2>&1
eval_tap $? 3 'AcceptFriendsRequest' test.out

#- 4 AcceptFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: acceptFriendsResponse\nid: W4nuW5h8W9TTo4O0\ncode: 80' \
    > test.out 2>&1
eval_tap $? 4 'AcceptFriendsResponse' test.out

#- 5 BlockPlayerNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: blockPlayerNotif\nblockedUserId: e75cnRnrHV8tuxeo\nuserId: mmbrfjJaOpoliHaE' \
    > test.out 2>&1
eval_tap $? 5 'BlockPlayerNotif' test.out

#- 6 BlockPlayerRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: blockPlayerRequest\nid: iTswrkyKL9fl51rb\nblockUserId: 29hYp87oijJM2JjM\nnamespace: AIIEU2uNAvCzcMsM' \
    > test.out 2>&1
eval_tap $? 6 'BlockPlayerRequest' test.out

#- 7 BlockPlayerResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: blockPlayerResponse\nid: cmKebI5OaVvlXCpe\nblockUserId: 8PqVjPK23zB76qoq\ncode: 21\nnamespace: sau71KUECVa6Ec3U' \
    > test.out 2>&1
eval_tap $? 7 'BlockPlayerResponse' test.out

#- 8 CancelFriendsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelFriendsNotif\nuserId: 2nukfaKSkd7vyw84' \
    > test.out 2>&1
eval_tap $? 8 'CancelFriendsNotif' test.out

#- 9 CancelFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelFriendsRequest\nid: 3IfAtnnG3Vx8webZ\nfriendId: 4QeIfTt19bARgI1H' \
    > test.out 2>&1
eval_tap $? 9 'CancelFriendsRequest' test.out

#- 10 CancelFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelFriendsResponse\nid: dbRuAxb5cQ2U43LA\ncode: 81' \
    > test.out 2>&1
eval_tap $? 10 'CancelFriendsResponse' test.out

#- 11 CancelMatchmakingRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelMatchmakingRequest\nid: GJWoU4ss1MwWiDax\ngameMode: 2CNfmkEBcnaxoYJD\nisTempParty: False' \
    > test.out 2>&1
eval_tap $? 11 'CancelMatchmakingRequest' test.out

#- 12 CancelMatchmakingResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelMatchmakingResponse\nid: Y3yF2TpQBuVrVfgN\ncode: 19' \
    > test.out 2>&1
eval_tap $? 12 'CancelMatchmakingResponse' test.out

#- 13 ChannelChatNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: channelChatNotif\nchannelSlug: DGgr9jqyqrmhNfd1\nfrom: lqMGZzsKb85HPbjN\npayload: 91AcocEJOJRQHbhz\nsentAt: Tii8aWEy4obGTBTc' \
    > test.out 2>&1
eval_tap $? 13 'ChannelChatNotif' test.out

#- 14 ClientResetRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: clientResetRequest\nnamespace: Iyc7ZlTrXUBGxtTw\nuserId: YoGznmvOLJX3rjoY' \
    > test.out 2>&1
eval_tap $? 14 'ClientResetRequest' test.out

#- 15 ConnectNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: connectNotif\nlobbySessionId: 0uBwpIUCHsC6miFN' \
    > test.out 2>&1
eval_tap $? 15 'ConnectNotif' test.out

#- 16 DisconnectNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: disconnectNotif\nconnectionId: 8ywQGQCWoJu2s1da\nnamespace: yC2nUnaGrCkjiiRc' \
    > test.out 2>&1
eval_tap $? 16 'DisconnectNotif' test.out

#- 17 DsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: dsNotif\nalternateIps: [0FN0Vut8Z4gWqR2b,LRVshzfvIq44Qv9g,97YCOcMba3WI5K1O]\ncustomAttribute: zwnrm2JtQPDMtBPX\ndeployment: 91ZBIpNiHljaarIt\ngameVersion: ka3aQw3RubElRXZP\nimageVersion: NxvHBI0ucbSwCMM0\nip: QCrnIcVW9mfaiaJk\nisOK: True\nisOverrideGameVersion: False\nlastUpdate: CmgHr5XUOGlj3l7d\nmatchId: bB3HS6TdllPVbKvL\nmessage: ZKdor11aG4dHUusP\nnamespace: Kf2I9oSyaELwapd2\npodName: 6ph67fN1Cc5uqWpg\nport: 75\nports: {"jwXKmuGT3RmDspp8":64,"icZJeFTTFjiwBjCg":88,"bDfYo7xB62VjnYSY":98}\nprotocol: IkZBDfLDYhoDTj3s\nprovider: 88sfknjXx9Cvm7fl\nregion: A9PY0LL8m5pr8H6B\nsessionId: 8zXYodFftzFZZjsp\nstatus: oiZ5jQmGFyy43APi' \
    > test.out 2>&1
eval_tap $? 17 'DsNotif' test.out

#- 18 ErrorNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: errorNotif\nmessage: mNpV7xYbX8lofqBf' \
    > test.out 2>&1
eval_tap $? 18 'ErrorNotif' test.out

#- 19 ExitAllChannel
samples/cli/sample-apps --wsModeStandalone \
    'type: exitAllChannel\nnamespace: hDWSG5Wikp56c8nG\nuserId: ttstKSzHE51VZVpx' \
    > test.out 2>&1
eval_tap $? 19 'ExitAllChannel' test.out

#- 20 FriendsStatusRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: friendsStatusRequest\nid: sEqhZGgeQ7XqqvV0' \
    > test.out 2>&1
eval_tap $? 20 'FriendsStatusRequest' test.out

#- 21 FriendsStatusResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: friendsStatusResponse\nid: pTSF2UgxMe2fn17O\nactivity: [WENEB7l5YPuIpM5s,MzNRTF66Z0skIasV,B6nKq4IyoNsY3leq]\navailability: [rlDLggO4eCQN8MVD,ccLDdHZWo83sCwbx,8WUeQFkfz0uwRmf4]\ncode: 88\nfriendIds: [9OahYfWWps1sirhd,jhteZIu2o0WiqNEA,x7ARRNtG3DSLNTt6]\nlastSeenAt: [XAbuZsWbrngjjABy,Lk156bF7py5lMrhl,xLui660znufzieCv]' \
    > test.out 2>&1
eval_tap $? 21 'FriendsStatusResponse' test.out

#- 22 GetAllSessionAttributeRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: getAllSessionAttributeRequest\nid: sPyLfktjwEwIjQpw' \
    > test.out 2>&1
eval_tap $? 22 'GetAllSessionAttributeRequest' test.out

#- 23 GetAllSessionAttributeResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: getAllSessionAttributeResponse\nid: 3RajE6JkDwttH3Qd\nattributes: {"laXX1MBBQAtnKTVn":"sRq8CusCPa270LHY","FpEh3ZPRvp0WF4mh":"lRjiirqOCwXTDIHs","EZhZvbJYQab1mXjP":"fg6fhdunn5U8pqGI"}\ncode: 61' \
    > test.out 2>&1
eval_tap $? 23 'GetAllSessionAttributeResponse' test.out

#- 24 GetFriendshipStatusRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: getFriendshipStatusRequest\nid: D4VRKnZWrOhBbkiK\nfriendId: NqCatEc2f0XeYQOv' \
    > test.out 2>&1
eval_tap $? 24 'GetFriendshipStatusRequest' test.out

#- 25 GetFriendshipStatusResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: getFriendshipStatusResponse\nid: xkzcKEJ4qdFHHgKC\ncode: 40\nfriendshipStatus: vmC1PMgtXD2vGD72' \
    > test.out 2>&1
eval_tap $? 25 'GetFriendshipStatusResponse' test.out

#- 26 GetSessionAttributeRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: getSessionAttributeRequest\nid: 6J8nThk1bdQCjYD3\nkey: aFOYXs1DE1iufxt3' \
    > test.out 2>&1
eval_tap $? 26 'GetSessionAttributeRequest' test.out

#- 27 GetSessionAttributeResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: getSessionAttributeResponse\nid: Ye7GycBvMUkS2cYN\ncode: 80\nvalue: ojQbjobw5EMAw0vR' \
    > test.out 2>&1
eval_tap $? 27 'GetSessionAttributeResponse' test.out

#- 28 Heartbeat
samples/cli/sample-apps --wsModeStandalone \
    'type: heartbeat' \
    > test.out 2>&1
eval_tap $? 28 'Heartbeat' test.out

#- 29 JoinDefaultChannelRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: joinDefaultChannelRequest\nid: 2PxSQ1wdhbmt4UhY' \
    > test.out 2>&1
eval_tap $? 29 'JoinDefaultChannelRequest' test.out

#- 30 JoinDefaultChannelResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: joinDefaultChannelResponse\nid: jEwaCeseUDe4zkC8\nchannelSlug: I7Lv2rYi8ngn6NGw\ncode: 86' \
    > test.out 2>&1
eval_tap $? 30 'JoinDefaultChannelResponse' test.out

#- 31 ListIncomingFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listIncomingFriendsRequest\nid: nUdR0aW3YUz61u7v' \
    > test.out 2>&1
eval_tap $? 31 'ListIncomingFriendsRequest' test.out

#- 32 ListIncomingFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: listIncomingFriendsResponse\nid: 1Wc0GtTOhdWj4MZZ\ncode: 44\nuserIds: [j4nF6TSR0g26SQKR,ra3aQGzxfNZxFpVX,lRovtEhEGJMMyubo]' \
    > test.out 2>&1
eval_tap $? 32 'ListIncomingFriendsResponse' test.out

#- 33 ListOfFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listOfFriendsRequest\nid: ar7trMZoMpgQ9kKC\nfriendId: DEduH0dkGXLvl542' \
    > test.out 2>&1
eval_tap $? 33 'ListOfFriendsRequest' test.out

#- 34 ListOfFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: listOfFriendsResponse\nid: mKHEPdnZqoaZWExQ\ncode: 12\nfriendIds: [U2796ank6KqergVe,NxpgtrEqdDe1SowB,BGLWqc1HX8wzzGeh]' \
    > test.out 2>&1
eval_tap $? 34 'ListOfFriendsResponse' test.out

#- 35 ListOnlineFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listOnlineFriendsRequest\nid: ZQ9BEVBeK0Z7yWKW' \
    > test.out 2>&1
eval_tap $? 35 'ListOnlineFriendsRequest' test.out

#- 36 ListOutgoingFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listOutgoingFriendsRequest\nid: rlIQvwUj1WLtCWWR' \
    > test.out 2>&1
eval_tap $? 36 'ListOutgoingFriendsRequest' test.out

#- 37 ListOutgoingFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: listOutgoingFriendsResponse\nid: iy2rDPWttp4ZOTNC\ncode: 86\nfriendIds: [VIm4wUFO0sXHBB7D,yoii92XAfPgJYMZR,PHCq5KWg4md12F6U]' \
    > test.out 2>&1
eval_tap $? 37 'ListOutgoingFriendsResponse' test.out

#- 38 MatchmakingNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: matchmakingNotif\ncounterPartyMember: [lhvfvGUTJFDZhdtG,8TMzZe865BYiuBWW,L8j9MJEe30bbkWJR]\nmatchId: crnoQOmBdVJr9j0h\nmessage: JsnBkST1Ng8Bmilf\npartyMember: [VKTsTQTJFToCbQ8q,cGNYSCZADMno5ski,sXS4oo0pWWX0Qzd8]\nreadyDuration: 21\nstatus: gDqtRLG1c47CJ4Io' \
    > test.out 2>&1
eval_tap $? 38 'MatchmakingNotif' test.out

#- 39 MessageNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: messageNotif\nid: AlfdbJAgS63XnbWe\nfrom: C5kE7n5xOjIj6JxS\npayload: DrPJzC15TedMqzDr\nsentAt: 60\nto: zUeECo73xd56rUqO\ntopic: iQOKhtaEpWvq2cJm' \
    > test.out 2>&1
eval_tap $? 39 'MessageNotif' test.out

#- 40 OfflineNotificationRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: offlineNotificationRequest\nid: NrWID1wk2lKfdCNq' \
    > test.out 2>&1
eval_tap $? 40 'OfflineNotificationRequest' test.out

#- 41 OfflineNotificationResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: offlineNotificationResponse\nid: ZhpYssAGx5uPNRdr\ncode: 37' \
    > test.out 2>&1
eval_tap $? 41 'OfflineNotificationResponse' test.out

#- 42 OnlineFriends
samples/cli/sample-apps --wsModeStandalone \
    'type: onlineFriends\nid: u0SvJVxjNDYccYt7\ncode: 71\nonlineFriendIds: [hmnfByq7TEPt8wLC,F0bEapdX5YwcFW5w,asgyVc2BZpSMDZl7]' \
    > test.out 2>&1
eval_tap $? 42 'OnlineFriends' test.out

#- 43 PartyChatNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyChatNotif\nid: EghwHBBQ4cjvNmmi\nfrom: KLreSCtvWxMTgwsJ\npayload: 20swJNKYhJzbjebD\nreceivedAt: 61\nto: 7Xz2Tm41Rry31LQ0' \
    > test.out 2>&1
eval_tap $? 43 'PartyChatNotif' test.out

#- 44 PartyChatRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyChatRequest\nid: VvnejfKETgRRt3WN\nfrom: l7FrUJMjEfuFLevd\npayload: R725BqiXI4Yftqlj\nreceivedAt: 89\nto: PZ8jO9EJM36YTr9Z' \
    > test.out 2>&1
eval_tap $? 44 'PartyChatRequest' test.out

#- 45 PartyChatResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyChatResponse\nid: 14CRF48PslgMrwc7\ncode: 16' \
    > test.out 2>&1
eval_tap $? 45 'PartyChatResponse' test.out

#- 46 PartyCreateRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyCreateRequest\nid: vtMznsG5I49pHcpC' \
    > test.out 2>&1
eval_tap $? 46 'PartyCreateRequest' test.out

#- 47 PartyCreateResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyCreateResponse\nid: HllwoGuWnITSzf7f\ncode: 73\ninvitationToken: xmEHIXg6tJPTmCOJ\ninvitees: SP6isdKoYcf2OWhx\nleaderId: yWHMXXMYQrC58gG1\nmembers: juPEfv2uCL5mmKG6\npartyId: 6ne3wkXfGS8cWCcp' \
    > test.out 2>&1
eval_tap $? 47 'PartyCreateResponse' test.out

#- 48 PartyDataUpdateNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyDataUpdateNotif\ncustomAttributes: {"xJdKmIcs4tBqM3g3":{},"eaVLnUwb0TIeHQug":{},"Mv4Db59FkIl6Yw7n":{}}\ninvitees: [6H0oTZTrr3Lm6C67,YwR1s4yxhBbtPv1C,sSHgatD2yXuZCJSO]\nleader: ucrnAbd5ZJbUl9jE\nmembers: [RKtbOMxfAPMsEC1q,yj7urtpERQZaYiuL,1cIJlxxM8kHMSsgE]\nnamespace: 4Si0RStKtbhUdh0w\npartyId: I3FX4sStBvgVOuKw\nupdatedAt: 92' \
    > test.out 2>&1
eval_tap $? 48 'PartyDataUpdateNotif' test.out

#- 49 PartyGetInvitedNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyGetInvitedNotif\nfrom: FX4ZqqAJWhRWVWTA\ninvitationToken: k0nRUT1xNgbPEetw\npartyId: 4w8PAv6byPpuoNuU' \
    > test.out 2>&1
eval_tap $? 49 'PartyGetInvitedNotif' test.out

#- 50 PartyInfoRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInfoRequest\nid: G1dEmuyUHTZBqvFt' \
    > test.out 2>&1
eval_tap $? 50 'PartyInfoRequest' test.out

#- 51 PartyInfoResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInfoResponse\nid: vviBNA1kEv3BHfI7\ncode: 52\ncustomAttributes: {"SkC8TO7HkwRch5hX":{},"G7VUWAriLoTPmjEB":{},"1BAub38G2QgH6YYG":{}}\ninvitationToken: npVrMmnZvKTw5ox6\ninvitees: j59V3VnkugxxF2W2\nleaderId: H0zS5V1XcCwi8Hho\nmembers: 27Ibpzhpphu5vNiQ\npartyId: DerAtFwJMFUBcyLu' \
    > test.out 2>&1
eval_tap $? 51 'PartyInfoResponse' test.out

#- 52 PartyInviteNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInviteNotif\ninviteeId: wwppBIZuAUX7Wjk0\ninviterId: FBnl4R3shWa3e2xD' \
    > test.out 2>&1
eval_tap $? 52 'PartyInviteNotif' test.out

#- 53 PartyInviteRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInviteRequest\nid: lMN80HI0D5wWN4yF\nfriendId: WDN7DGuPewJaTeOn' \
    > test.out 2>&1
eval_tap $? 53 'PartyInviteRequest' test.out

#- 54 PartyInviteResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInviteResponse\nid: XuyM2G1NGrUGOd6Z\ncode: 70' \
    > test.out 2>&1
eval_tap $? 54 'PartyInviteResponse' test.out

#- 55 PartyJoinNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyJoinNotif\nuserId: aanbFUD9JLm8Aimw' \
    > test.out 2>&1
eval_tap $? 55 'PartyJoinNotif' test.out

#- 56 PartyJoinRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyJoinRequest\nid: 5Jr7pbKTdyZhVkGc\ninvitationToken: QYt6kgUiC3LsIg8q\npartyId: vqUjOSLnc7dWpzA8' \
    > test.out 2>&1
eval_tap $? 56 'PartyJoinRequest' test.out

#- 57 PartyJoinResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyJoinResponse\nid: 2RtZCPtsd3AZoEK7\ncode: 40\ninvitationToken: ZAD1ME7lpwUi2TiR\ninvitees: vYrizqFkPVOLnUfY\nleaderId: G3Em7ZLTkfL6qW22\nmembers: 4QyIdqZlWXomiiZB\npartyId: PSjU0guYb6e94dUm' \
    > test.out 2>&1
eval_tap $? 57 'PartyJoinResponse' test.out

#- 58 PartyKickNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyKickNotif\nleaderId: 4dP9ilSINSNDeYf4\npartyId: sdINfEAoTtql0NLK\nuserId: SKtBUl42b5p8BR0E' \
    > test.out 2>&1
eval_tap $? 58 'PartyKickNotif' test.out

#- 59 PartyKickRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyKickRequest\nid: s5lVDMjzwajYQLGK\nmemberId: W7bgZKMtmVggHyba' \
    > test.out 2>&1
eval_tap $? 59 'PartyKickRequest' test.out

#- 60 PartyKickResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyKickResponse\nid: V8qEyTkYnhsBKzUR\ncode: 78' \
    > test.out 2>&1
eval_tap $? 60 'PartyKickResponse' test.out

#- 61 PartyLeaveNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyLeaveNotif\nleaderId: AiYGsJrz8tJLzSmK\nuserId: E79xF71K5las5etl' \
    > test.out 2>&1
eval_tap $? 61 'PartyLeaveNotif' test.out

#- 62 PartyLeaveRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyLeaveRequest\nid: 19CQwGB8eC4jzN6G\nignoreUserRegistry: True' \
    > test.out 2>&1
eval_tap $? 62 'PartyLeaveRequest' test.out

#- 63 PartyLeaveResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyLeaveResponse\nid: YeZTRQqnyHO1gYM2\ncode: 18' \
    > test.out 2>&1
eval_tap $? 63 'PartyLeaveResponse' test.out

#- 64 PartyPromoteLeaderRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyPromoteLeaderRequest\nid: jf88Mf9wkBIBfROk\nnewLeaderUserId: oVusBgTDQ71SQPDf' \
    > test.out 2>&1
eval_tap $? 64 'PartyPromoteLeaderRequest' test.out

#- 65 PartyPromoteLeaderResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyPromoteLeaderResponse\nid: rxNgzPAiZXihFg8i\ncode: 17\ninvitationToken: VZr3nv7faKpaqtjn\ninvitees: cGrTYEtIILD3MuTH\nleaderId: yh5tkE43R8YWOVMd\nmembers: Wr1fFFg9Y9fUYQmn\npartyId: rr7JLhyUR5e07VAj' \
    > test.out 2>&1
eval_tap $? 65 'PartyPromoteLeaderResponse' test.out

#- 66 PartyRejectNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyRejectNotif\nleaderId: HeVoLecm2lxrd1gR\npartyId: SGGXaJn0b1YoiZOE\nuserId: QDSnMM17CfJncv7O' \
    > test.out 2>&1
eval_tap $? 66 'PartyRejectNotif' test.out

#- 67 PartyRejectRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyRejectRequest\nid: zIKWMq1lOAPEdeqw\ninvitationToken: zMDpqfBNbuLIuTNf\npartyId: gUFCvu7JlgOAJoNp' \
    > test.out 2>&1
eval_tap $? 67 'PartyRejectRequest' test.out

#- 68 PartyRejectResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyRejectResponse\nid: iMwsNJgwTydyZPdl\ncode: 21\npartyId: nJaVHaapm5SpV4sj' \
    > test.out 2>&1
eval_tap $? 68 'PartyRejectResponse' test.out

#- 69 PersonalChatHistoryRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatHistoryRequest\nid: vISQkssBM4aqWEcj\nfriendId: 60DWV7UgPnnZ0aIb' \
    > test.out 2>&1
eval_tap $? 69 'PersonalChatHistoryRequest' test.out

#- 70 PersonalChatHistoryResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatHistoryResponse\nid: 452009OVb9ZOelAP\nchat: RZq3KWnaTDFPSKhr\ncode: 19\nfriendId: 9DR4dakmwTuEQ1Dd' \
    > test.out 2>&1
eval_tap $? 70 'PersonalChatHistoryResponse' test.out

#- 71 PersonalChatNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatNotif\nid: L3jevVMkfxqeInCA\nfrom: V9OIXmkVAiDArUGD\npayload: mCGN0F88B9NulJvq\nreceivedAt: 69\nto: hEW37FhvR7BhHwSa' \
    > test.out 2>&1
eval_tap $? 71 'PersonalChatNotif' test.out

#- 72 PersonalChatRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatRequest\nid: 9Er5N7ATayWjg0Xi\nfrom: 0zoSwJQE7yAKOWlA\npayload: jmsGX6H5cPIfjSOW\nreceivedAt: 67\nto: YaAmsovxZIswYoWl' \
    > test.out 2>&1
eval_tap $? 72 'PersonalChatRequest' test.out

#- 73 PersonalChatResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatResponse\nid: TkXvTHnXTwOEptU7\ncode: 13' \
    > test.out 2>&1
eval_tap $? 73 'PersonalChatResponse' test.out

#- 74 RefreshTokenRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: refreshTokenRequest\nid: nFC4orCUi3i0kVtu\ntoken: U9iyO2xaPthgsMXD' \
    > test.out 2>&1
eval_tap $? 74 'RefreshTokenRequest' test.out

#- 75 RefreshTokenResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: refreshTokenResponse\nid: hjmXEepLF5B92e4X\ncode: 14' \
    > test.out 2>&1
eval_tap $? 75 'RefreshTokenResponse' test.out

#- 76 RejectFriendsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: rejectFriendsNotif\nuserId: sF6BlwqLmh7SzxHA' \
    > test.out 2>&1
eval_tap $? 76 'RejectFriendsNotif' test.out

#- 77 RejectFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: rejectFriendsRequest\nid: dXWGv1Fo1JwbWbGS\nfriendId: oqke4fgrYbdQ8qyY' \
    > test.out 2>&1
eval_tap $? 77 'RejectFriendsRequest' test.out

#- 78 RejectFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: rejectFriendsResponse\nid: SBdyS0y88WokL4WZ\ncode: 61' \
    > test.out 2>&1
eval_tap $? 78 'RejectFriendsResponse' test.out

#- 79 RematchmakingNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: rematchmakingNotif\nbanDuration: 94' \
    > test.out 2>&1
eval_tap $? 79 'RematchmakingNotif' test.out

#- 80 RequestFriendsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: requestFriendsNotif\nfriendId: FEfWHcmQ4FVcccvo' \
    > test.out 2>&1
eval_tap $? 80 'RequestFriendsNotif' test.out

#- 81 RequestFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: requestFriendsRequest\nid: nZJVDLtlMfmFknvh\nfriendId: UfpzACt0m2fKuw82' \
    > test.out 2>&1
eval_tap $? 81 'RequestFriendsRequest' test.out

#- 82 RequestFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: requestFriendsResponse\nid: KBLXkN22MNjJsUyp\ncode: 83' \
    > test.out 2>&1
eval_tap $? 82 'RequestFriendsResponse' test.out

#- 83 SendChannelChatRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: sendChannelChatRequest\nid: r5llfeV9ieXxFU0N\nchannelSlug: pZRITg5IOpTFyycz\npayload: cyyVLuv4gzahHbWe' \
    > test.out 2>&1
eval_tap $? 83 'SendChannelChatRequest' test.out

#- 84 SendChannelChatResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: sendChannelChatResponse\nid: Yu6t6KDyVioIiTYn\ncode: 68' \
    > test.out 2>&1
eval_tap $? 84 'SendChannelChatResponse' test.out

#- 85 SetReadyConsentNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: setReadyConsentNotif\nmatchId: n78e9hwleldM8GEu\nuserId: baI5D2C57lI1juta' \
    > test.out 2>&1
eval_tap $? 85 'SetReadyConsentNotif' test.out

#- 86 SetReadyConsentRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: setReadyConsentRequest\nid: zNXj1iLFslV9G7Cj\nmatchId: Lj4hlpmirxEpFOYk' \
    > test.out 2>&1
eval_tap $? 86 'SetReadyConsentRequest' test.out

#- 87 SetReadyConsentResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: setReadyConsentResponse\nid: epPtpAkivAsc82DD\ncode: 1' \
    > test.out 2>&1
eval_tap $? 87 'SetReadyConsentResponse' test.out

#- 88 SetSessionAttributeRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: setSessionAttributeRequest\nid: G4PqBBl0kozJu8jx\nkey: 7LEQjD7jJPPzajH2\nnamespace: cZwTQNhdoZXnnDq1\nvalue: avDmZslOpPpw4iro' \
    > test.out 2>&1
eval_tap $? 88 'SetSessionAttributeRequest' test.out

#- 89 SetSessionAttributeResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: setSessionAttributeResponse\nid: SlqIm3xSiQ8cSyGr\ncode: 100' \
    > test.out 2>&1
eval_tap $? 89 'SetSessionAttributeResponse' test.out

#- 90 SetUserStatusRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: setUserStatusRequest\nid: yXEnzAtFjYyUxP8q\nactivity: JdWvSIkADRgs50Kf\navailability: 67' \
    > test.out 2>&1
eval_tap $? 90 'SetUserStatusRequest' test.out

#- 91 SetUserStatusResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: setUserStatusResponse\nid: AWun2NhN1DLcEVIL\ncode: 42' \
    > test.out 2>&1
eval_tap $? 91 'SetUserStatusResponse' test.out

#- 92 ShutdownNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: shutdownNotif\nmessage: fkKdciNA3B8raTHU' \
    > test.out 2>&1
eval_tap $? 92 'ShutdownNotif' test.out

#- 93 SignalingP2PNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: signalingP2PNotif\ndestinationId: JPWPKYFIGnpgI2SK\nmessage: LIzTQrjZQgPIBrnD' \
    > test.out 2>&1
eval_tap $? 93 'SignalingP2PNotif' test.out

#- 94 StartMatchmakingRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: startMatchmakingRequest\nid: OvIa8bebrt2JJPZC\nextraAttributes: papKUoVBNI4EJ4Jm\ngameMode: KMos5btBmVLVui5P\npartyAttributes: {"UKBODKsWq7Nh6zTb":{},"TaaPyttZWnNgALIL":{},"r3f4wYNZvI6yS52v":{}}\npriority: 83\ntempParty: Z87J49ea0BpxRM44' \
    > test.out 2>&1
eval_tap $? 94 'StartMatchmakingRequest' test.out

#- 95 StartMatchmakingResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: startMatchmakingResponse\nid: LTPd138C3USzpOdk\ncode: 84' \
    > test.out 2>&1
eval_tap $? 95 'StartMatchmakingResponse' test.out

#- 96 UnblockPlayerNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: unblockPlayerNotif\nunblockedUserId: mXFATLY5s2yTs9FO\nuserId: rvVYcfZMSduMCOQk' \
    > test.out 2>&1
eval_tap $? 96 'UnblockPlayerNotif' test.out

#- 97 UnblockPlayerRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: unblockPlayerRequest\nid: cR4S6ig8KzWkoAWH\nnamespace: BzvAMkGwfuDUmorT\nunblockedUserId: 7CSED18b07mRDlPW' \
    > test.out 2>&1
eval_tap $? 97 'UnblockPlayerRequest' test.out

#- 98 UnblockPlayerResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: unblockPlayerResponse\nid: xNRTPPatVZcCrbuX\ncode: 53\nnamespace: qzXffIXVS3WqZFKh\nunblockedUserId: 5kFdM0bRBkgIX62i' \
    > test.out 2>&1
eval_tap $? 98 'UnblockPlayerResponse' test.out

#- 99 UnfriendNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: unfriendNotif\nfriendId: okggXAfkn88LbnPJ' \
    > test.out 2>&1
eval_tap $? 99 'UnfriendNotif' test.out

#- 100 UnfriendRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: unfriendRequest\nid: obBKEb0sqKqFn7B4\nfriendId: TuyVfyDnqJc4H6hS' \
    > test.out 2>&1
eval_tap $? 100 'UnfriendRequest' test.out

#- 101 UnfriendResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: unfriendResponse\nid: UD5P0pNGBxwsM7vg\ncode: 42' \
    > test.out 2>&1
eval_tap $? 101 'UnfriendResponse' test.out

#- 102 UserBannedNotification
samples/cli/sample-apps --wsModeStandalone \
    'type: userBannedNotification' \
    > test.out 2>&1
eval_tap $? 102 'UserBannedNotification' test.out

#- 103 UserMetricRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: userMetricRequest\nid: fDAopQVYLsd3i3pj' \
    > test.out 2>&1
eval_tap $? 103 'UserMetricRequest' test.out

#- 104 UserMetricResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: userMetricResponse\nid: 9agqq0yKy0zNIJi1\ncode: 64\nplayerCount: 51' \
    > test.out 2>&1
eval_tap $? 104 'UserMetricResponse' test.out

#- 105 UserStatusNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: userStatusNotif\nactivity: ENKrWaE0JGLCquHD\navailability: 56\nlastSeenAt: Ok3lP552B0gFJL4d\nuserId: vyxLzaFlyKUzupHh' \
    > test.out 2>&1
eval_tap $? 105 'UserStatusNotif' test.out


rm -f "tmp.dat"

exit $EXIT_CODE