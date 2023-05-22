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
    'type: acceptFriendsNotif\nfriendId: hn1seFCakUSx2YcI' \
    > test.out 2>&1
eval_tap $? 2 'AcceptFriendsNotif' test.out

#- 3 AcceptFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: acceptFriendsRequest\nid: Dcb8Xc7BvUlGiYNB\nfriendId: RCSBEbwrr07UzLjF' \
    > test.out 2>&1
eval_tap $? 3 'AcceptFriendsRequest' test.out

#- 4 AcceptFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: acceptFriendsResponse\nid: JZgBN0nVjGjiLpC4\ncode: 55' \
    > test.out 2>&1
eval_tap $? 4 'AcceptFriendsResponse' test.out

#- 5 BlockPlayerNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: blockPlayerNotif\nblockedUserId: ouvoTqk3VShOcwhr\nuserId: KflMCQgjDxiyOUag' \
    > test.out 2>&1
eval_tap $? 5 'BlockPlayerNotif' test.out

#- 6 BlockPlayerRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: blockPlayerRequest\nid: Qc1AFPo40DKsweQV\nblockUserId: 4gdn1g0ghKooodpC\nnamespace: IjlNpokxJoJAvL6F' \
    > test.out 2>&1
eval_tap $? 6 'BlockPlayerRequest' test.out

#- 7 BlockPlayerResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: blockPlayerResponse\nid: c5O5TGoGF58Ig03Q\nblockUserId: x69c51NWF9p0awjP\ncode: 13\nnamespace: 3wOH2Alf9w6nSu4m' \
    > test.out 2>&1
eval_tap $? 7 'BlockPlayerResponse' test.out

#- 8 CancelFriendsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelFriendsNotif\nuserId: lFhjrpmulOjhS7LB' \
    > test.out 2>&1
eval_tap $? 8 'CancelFriendsNotif' test.out

#- 9 CancelFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelFriendsRequest\nid: bmxIcXY2TMgFsvr7\nfriendId: 0m7LgJu4UaygKV6X' \
    > test.out 2>&1
eval_tap $? 9 'CancelFriendsRequest' test.out

#- 10 CancelFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelFriendsResponse\nid: 6f3QlccE9cjdo3CM\ncode: 66' \
    > test.out 2>&1
eval_tap $? 10 'CancelFriendsResponse' test.out

#- 11 CancelMatchmakingRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelMatchmakingRequest\nid: 4NlXcPIQG0LyBWxA\ngameMode: 02Ltu9Pi4ic3Zim1\nisTempParty: True' \
    > test.out 2>&1
eval_tap $? 11 'CancelMatchmakingRequest' test.out

#- 12 CancelMatchmakingResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: cancelMatchmakingResponse\nid: n5Qw2y13JsqzdnUx\ncode: 18' \
    > test.out 2>&1
eval_tap $? 12 'CancelMatchmakingResponse' test.out

#- 13 ChannelChatNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: channelChatNotif\nchannelSlug: MFJqxbIJrB9nta9y\nfrom: TREv8mGQwlLjI71m\npayload: FQcWO3jpvA96yQkq\nsentAt: sKTHpmgwycIiiAKE' \
    > test.out 2>&1
eval_tap $? 13 'ChannelChatNotif' test.out

#- 14 ClientResetRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: clientResetRequest\nnamespace: 2kL0IZxOUY7IbPSn\nuserId: usIjZYNfZ8DdWSub' \
    > test.out 2>&1
eval_tap $? 14 'ClientResetRequest' test.out

#- 15 ConnectNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: connectNotif\nlobbySessionId: p5Y2d2U19Lc5SgjU' \
    > test.out 2>&1
eval_tap $? 15 'ConnectNotif' test.out

#- 16 DisconnectNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: disconnectNotif\nconnectionId: P7gaEcx8HgrCPFYL\nnamespace: 6FyrxwhSoBr6uu32' \
    > test.out 2>&1
eval_tap $? 16 'DisconnectNotif' test.out

#- 17 DsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: dsNotif\nalternateIps: [GA7nIwW9WWpUOf7C,MZ63QSshdb2kyM41,sMbQ6QUgVKuxJdpf]\ncustomAttribute: AbkYzvXmabHs6vEf\ndeployment: XgyI5fwF3GimjjsU\ngameVersion: 4MtJ1124DXychaQi\nimageVersion: 283k3p2z0k8RPkMt\nip: fDtk14vJhXc30zOy\nisOK: True\nisOverrideGameVersion: False\nlastUpdate: Wima4LAUHctLXdFw\nmatchId: MhGXOyG1x8yWpt8o\nmessage: dSIOwZfubKB4uEPM\nnamespace: Yz7vuE5Sc8O7sAk5\npodName: LCcFIgilzTrzV98t\nport: 57\nports: {"82SICu8pJlVsikKG":94,"FhHm60dpWkKiyQD7":11,"eedOmqtFmhVwg1xD":51}\nprotocol: cMfjQiPT58RyAHah\nprovider: 4ZOK8pvIipYiMhZr\nregion: GJLVHpCJvkLh30dt\nsessionId: o1MvmHOyJhFJvDof\nstatus: GSAVNtq5msABrJco' \
    > test.out 2>&1
eval_tap $? 17 'DsNotif' test.out

#- 18 ErrorNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: errorNotif\nmessage: VMAAc54g1g4tZa9s' \
    > test.out 2>&1
eval_tap $? 18 'ErrorNotif' test.out

#- 19 ExitAllChannel
samples/cli/sample-apps --wsModeStandalone \
    'type: exitAllChannel\nnamespace: LhRz6xHkQhf6JFlv\nuserId: KQl3q7BeQaBUq5Br' \
    > test.out 2>&1
eval_tap $? 19 'ExitAllChannel' test.out

#- 20 FriendsStatusRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: friendsStatusRequest\nid: fvoEICtEEjGwIBYS' \
    > test.out 2>&1
eval_tap $? 20 'FriendsStatusRequest' test.out

#- 21 FriendsStatusResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: friendsStatusResponse\nid: xhUTDg8vYFvLpCXr\nactivity: [YdzW1FxKvsrfEJSe,0ocl5GUOv9DNjSdy,4EH3Ob2OS27ifM2A]\navailability: [58,82,53]\ncode: 94\nfriendIds: [7snEQ43FzoLlFVxe,L12RZudYagb0wQFX,u9YHMXmqVw9ECTPe]\nlastSeenAt: [7AspinC3GzqaRL7k,qGNpLH3ddRYBRm5e,Gillfw4UbH8Rv6Pj]' \
    > test.out 2>&1
eval_tap $? 21 'FriendsStatusResponse' test.out

#- 22 GetAllSessionAttributeRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: getAllSessionAttributeRequest\nid: DvnpqBR6BRQcmB0x' \
    > test.out 2>&1
eval_tap $? 22 'GetAllSessionAttributeRequest' test.out

#- 23 GetAllSessionAttributeResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: getAllSessionAttributeResponse\nid: 5iYOK4FB8Xubc7Jd\nattributes: {"YOYKj1p5LBi0opQa":"u87iuQ68bjUvOxbk","uS01FjdUisJM2tmr":"NGG5sGV522E2otfY","FI4ngjIHlyvc2uq0":"aDQMg3ID89mzjwlc"}\ncode: 11' \
    > test.out 2>&1
eval_tap $? 23 'GetAllSessionAttributeResponse' test.out

#- 24 GetFriendshipStatusRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: getFriendshipStatusRequest\nid: vBgCYRj7UqP8HGQF\nfriendId: qEhDa2fxENrDdxnc' \
    > test.out 2>&1
eval_tap $? 24 'GetFriendshipStatusRequest' test.out

#- 25 GetFriendshipStatusResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: getFriendshipStatusResponse\nid: OQeP6cq8tyMNVVsx\ncode: 31\nfriendshipStatus: HSCT08R5t1U3T1gr' \
    > test.out 2>&1
eval_tap $? 25 'GetFriendshipStatusResponse' test.out

#- 26 GetSessionAttributeRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: getSessionAttributeRequest\nid: CP5j3hNHafGCk2wn\nkey: ut1QZjfRYHIHMdMD' \
    > test.out 2>&1
eval_tap $? 26 'GetSessionAttributeRequest' test.out

#- 27 GetSessionAttributeResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: getSessionAttributeResponse\nid: Ztd2TI6cYEkHkBqo\ncode: 70\nvalue: WbdP6pxc0GCjFTSL' \
    > test.out 2>&1
eval_tap $? 27 'GetSessionAttributeResponse' test.out

#- 28 Heartbeat
samples/cli/sample-apps --wsModeStandalone \
    'type: heartbeat' \
    > test.out 2>&1
eval_tap $? 28 'Heartbeat' test.out

#- 29 JoinDefaultChannelRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: joinDefaultChannelRequest\nid: MI9AKypZ3BjABhVb' \
    > test.out 2>&1
eval_tap $? 29 'JoinDefaultChannelRequest' test.out

#- 30 JoinDefaultChannelResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: joinDefaultChannelResponse\nid: 6VZPjQSv8guY4p4l\nchannelSlug: iIpVecofeJRCu18y\ncode: 17' \
    > test.out 2>&1
eval_tap $? 30 'JoinDefaultChannelResponse' test.out

#- 31 ListIncomingFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listIncomingFriendsRequest\nid: HbsL6r9ORe2j87jM' \
    > test.out 2>&1
eval_tap $? 31 'ListIncomingFriendsRequest' test.out

#- 32 ListIncomingFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: listIncomingFriendsResponse\nid: dvSb47pz2YzzpOoj\ncode: 38\nuserIds: [sa1OVjMO08b96Nkx,B33xpVuBz2vyvQX5,Ir1gpiJ9crgrXAAz]' \
    > test.out 2>&1
eval_tap $? 32 'ListIncomingFriendsResponse' test.out

#- 33 ListOfFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listOfFriendsRequest\nid: z8V3iCPx0YEelC4I\nfriendId: M09gpph5jlM1eoO8' \
    > test.out 2>&1
eval_tap $? 33 'ListOfFriendsRequest' test.out

#- 34 ListOfFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: listOfFriendsResponse\nid: l0L7ch51a8fafAfk\ncode: 30\nfriendIds: [FUdlMdYhpb0xlNTl,udISGlM0hwmmBxe1,H7qobAcq8mZH0svt]' \
    > test.out 2>&1
eval_tap $? 34 'ListOfFriendsResponse' test.out

#- 35 ListOnlineFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listOnlineFriendsRequest\nid: BvFGe0Spwb54ZCow' \
    > test.out 2>&1
eval_tap $? 35 'ListOnlineFriendsRequest' test.out

#- 36 ListOutgoingFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: listOutgoingFriendsRequest\nid: h2czesPoi9nXkvcv' \
    > test.out 2>&1
eval_tap $? 36 'ListOutgoingFriendsRequest' test.out

#- 37 ListOutgoingFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: listOutgoingFriendsResponse\nid: Eg0UB8AMsxTNjepm\ncode: 34\nfriendIds: [W7QKqNjM93REIOO7,cE01F0CBGlFy5w1c,X0hZ3kMnLWqM9Yx1]' \
    > test.out 2>&1
eval_tap $? 37 'ListOutgoingFriendsResponse' test.out

#- 38 MatchmakingNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: matchmakingNotif\ncounterPartyMember: [OdYrtRCPYgEjMAPS,9EmVB069AvFbq81b,6UmJrn0WoxxlqiVj]\nmatchId: fAFSEtkAAw8UYk3d\nmessage: RvfU5F5ZPrdeyndC\npartyMember: [DHDDNj66foARCfAU,hMgt2tZYFynDRO4J,wzS8c0Whva9AyaJU]\nreadyDuration: 30\nstatus: O6SwpH6fVKCEYqTn' \
    > test.out 2>&1
eval_tap $? 38 'MatchmakingNotif' test.out

#- 39 MessageNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: messageNotif\nid: RYZBBeXCaoy7N4Ut\nfrom: BRZFemMNE8OhrX2m\npayload: ijImVwXC0PPWWU6W\nsentAt: 85\nto: rP47mofKuLwj5cgM\ntopic: qFgLF9kxYEEUbcyw' \
    > test.out 2>&1
eval_tap $? 39 'MessageNotif' test.out

#- 40 OfflineNotificationRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: offlineNotificationRequest\nid: r26ZrZcg7TToPc81' \
    > test.out 2>&1
eval_tap $? 40 'OfflineNotificationRequest' test.out

#- 41 OfflineNotificationResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: offlineNotificationResponse\nid: 6W5FFoczLYnnKoDz\ncode: 94' \
    > test.out 2>&1
eval_tap $? 41 'OfflineNotificationResponse' test.out

#- 42 OnlineFriends
samples/cli/sample-apps --wsModeStandalone \
    'type: onlineFriends\nid: 2deDOv7wdoe9kWE9\ncode: 83\nonlineFriendIds: [afHo8zqdbEmKLvyK,88bP3tvbg2RJxkBF,FjgwfHWqBLqdcoa9]' \
    > test.out 2>&1
eval_tap $? 42 'OnlineFriends' test.out

#- 43 PartyChatNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyChatNotif\nid: TniPTJBHCmasTiqD\nfrom: WONKGRo0lC70nj6U\npayload: sFRFbeZtQYwahwcc\nreceivedAt: 20\nto: eWnPMEcP9D3b1y7C' \
    > test.out 2>&1
eval_tap $? 43 'PartyChatNotif' test.out

#- 44 PartyChatRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyChatRequest\nid: FWBCsmUi5IMCtYXj\nfrom: a0Ev3WjeW4RTkWPY\npayload: WlTouCBezyJvlYo2\nreceivedAt: 47\nto: Innq62E80uvvMqxn' \
    > test.out 2>&1
eval_tap $? 44 'PartyChatRequest' test.out

#- 45 PartyChatResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyChatResponse\nid: usE2dw9dgVtN0TFo\ncode: 77' \
    > test.out 2>&1
eval_tap $? 45 'PartyChatResponse' test.out

#- 46 PartyCreateRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyCreateRequest\nid: qQycUVsOasPw2H8k' \
    > test.out 2>&1
eval_tap $? 46 'PartyCreateRequest' test.out

#- 47 PartyCreateResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyCreateResponse\nid: rB7JQ0vsVDU0L9WO\ncode: 73\ninvitationToken: RFOBiI3xdAUEtsN6\ninvitees: 0wKnTLNKxQh6g6vm\nleaderId: IbRRWTNYCmQFRt4m\nmembers: mJ1Nxk8EJ4fNnoj0\npartyId: w2XAbucCqXz9gfPS' \
    > test.out 2>&1
eval_tap $? 47 'PartyCreateResponse' test.out

#- 48 PartyDataUpdateNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyDataUpdateNotif\ncustomAttributes: {"jdoHkNtHq3pEmomV":{},"hSBlcjUSWQzTzYcH":{},"z3k5uXDUVMfAzCV0":{}}\ninvitees: [w7aa64LrTz8MoUnT,OavfN1rwoQ7qgTVH,t5n2zitcaXOmjpLN]\nleader: g6mLbX1yLCqhazUQ\nmembers: [XCeD6hL0VEmcD9gv,75mBTmkqDEZpRcaU,SgxCx1UBJi69hUfq]\nnamespace: ESsJ1sWLEdrR7R8L\npartyId: 57dcci0DzOdqyMgM\nupdatedAt: 3' \
    > test.out 2>&1
eval_tap $? 48 'PartyDataUpdateNotif' test.out

#- 49 PartyGetInvitedNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyGetInvitedNotif\nfrom: fBRbER6AFpTa4XCJ\ninvitationToken: 0v5VGMjrEleA9MI7\npartyId: GvO6XcFCS4jaYRdB' \
    > test.out 2>&1
eval_tap $? 49 'PartyGetInvitedNotif' test.out

#- 50 PartyInfoRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInfoRequest\nid: tSwPOj404ivAAARG' \
    > test.out 2>&1
eval_tap $? 50 'PartyInfoRequest' test.out

#- 51 PartyInfoResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInfoResponse\nid: xvp1oAwZFL58GbJG\ncode: 72\ncustomAttributes: {"AO4BpyxKCuaSmu5E":{},"KTLzYsNh0s7NOf60":{},"0gpt6EZUPbE3Y327":{}}\ninvitationToken: Zt0U587p2qA0TaMO\ninvitees: 3404qLUlSIbwAlP5\nleaderId: STPk31BzukGqY7o8\nmembers: 0W7jv9BPu8LWFcFh\npartyId: uqbbRzQMvaf77EFl' \
    > test.out 2>&1
eval_tap $? 51 'PartyInfoResponse' test.out

#- 52 PartyInviteNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInviteNotif\ninviteeId: 1Zl5yyY1nczomazx\ninviterId: d3C2nJzwgFYytmCD' \
    > test.out 2>&1
eval_tap $? 52 'PartyInviteNotif' test.out

#- 53 PartyInviteRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInviteRequest\nid: tvcYImJI1zx7IRtY\nfriendId: HOLqxSHxrzqERmUw' \
    > test.out 2>&1
eval_tap $? 53 'PartyInviteRequest' test.out

#- 54 PartyInviteResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyInviteResponse\nid: OrSzKAeJlivlGlDS\ncode: 51' \
    > test.out 2>&1
eval_tap $? 54 'PartyInviteResponse' test.out

#- 55 PartyJoinNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyJoinNotif\nuserId: 3PyDkUr8hpqUonuV' \
    > test.out 2>&1
eval_tap $? 55 'PartyJoinNotif' test.out

#- 56 PartyJoinRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyJoinRequest\nid: 4L4auOkY6sJzpwzF\ninvitationToken: HZH7fSH5f0hzq4Kh\npartyId: Oa4qJcYEI26E640A' \
    > test.out 2>&1
eval_tap $? 56 'PartyJoinRequest' test.out

#- 57 PartyJoinResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyJoinResponse\nid: ABHQZl68mgcnJfnK\ncode: 43\ninvitationToken: 0r5K1XqRQhIhGdlz\ninvitees: 6wRFj5a6MX4ik8MU\nleaderId: 9BwEZ0DH4bakbSxv\nmembers: ZLNTVdBIZM4eGsdE\npartyId: uu5IuT7urcb9eB1K' \
    > test.out 2>&1
eval_tap $? 57 'PartyJoinResponse' test.out

#- 58 PartyKickNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyKickNotif\nleaderId: 0wpv0Tj9QZbVsI10\npartyId: yk1AOzbFBqE9rZzF\nuserId: Gvr0cMzQTl09nq7N' \
    > test.out 2>&1
eval_tap $? 58 'PartyKickNotif' test.out

#- 59 PartyKickRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyKickRequest\nid: MZkxiZzgVZCoJnZb\nmemberId: RHB66l6yW6bX5rrD' \
    > test.out 2>&1
eval_tap $? 59 'PartyKickRequest' test.out

#- 60 PartyKickResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyKickResponse\nid: ItyeeovWimQYG45O\ncode: 80' \
    > test.out 2>&1
eval_tap $? 60 'PartyKickResponse' test.out

#- 61 PartyLeaveNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyLeaveNotif\nleaderId: 2CEKl4f8TmWPzNYA\nuserId: Ij5teYLaR04cX6eF' \
    > test.out 2>&1
eval_tap $? 61 'PartyLeaveNotif' test.out

#- 62 PartyLeaveRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyLeaveRequest\nid: rIcwUZLt4R6LQb90\nignoreUserRegistry: False' \
    > test.out 2>&1
eval_tap $? 62 'PartyLeaveRequest' test.out

#- 63 PartyLeaveResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyLeaveResponse\nid: 63cDvg7KH8AvxSIn\ncode: 2' \
    > test.out 2>&1
eval_tap $? 63 'PartyLeaveResponse' test.out

#- 64 PartyPromoteLeaderRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyPromoteLeaderRequest\nid: 1bmKlSMIDYAzEMTQ\nnewLeaderUserId: rUJX41MDfQHngtjv' \
    > test.out 2>&1
eval_tap $? 64 'PartyPromoteLeaderRequest' test.out

#- 65 PartyPromoteLeaderResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyPromoteLeaderResponse\nid: aF7csRE4XWVmkVgt\ncode: 48\ninvitationToken: 0d85djPGHVONfTxF\ninvitees: y7jbqD8oDUXlSloL\nleaderId: xVzQSCnW2l0Xi7G9\nmembers: hq3Ru6KPEJyP0whV\npartyId: 803OoREEswcgyydq' \
    > test.out 2>&1
eval_tap $? 65 'PartyPromoteLeaderResponse' test.out

#- 66 PartyRejectNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: partyRejectNotif\nleaderId: oClsX6VwTFScXHfJ\npartyId: SIPJs8cba77N4jDt\nuserId: 5b4PK4pCZ9xO4UDK' \
    > test.out 2>&1
eval_tap $? 66 'PartyRejectNotif' test.out

#- 67 PartyRejectRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: partyRejectRequest\nid: Uo4YSCvzjV9uC5sF\ninvitationToken: D6nsyMALkZKUxbfD\npartyId: wzBu9TO8DkPrzobl' \
    > test.out 2>&1
eval_tap $? 67 'PartyRejectRequest' test.out

#- 68 PartyRejectResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: partyRejectResponse\nid: d2glyXbJcRBBMorF\ncode: 73\npartyId: 19vxy8PTjLDxFROu' \
    > test.out 2>&1
eval_tap $? 68 'PartyRejectResponse' test.out

#- 69 PersonalChatHistoryRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatHistoryRequest\nid: 75ScaGyA0xOplWbW\nfriendId: FVwZO8jDfjQuANt7' \
    > test.out 2>&1
eval_tap $? 69 'PersonalChatHistoryRequest' test.out

#- 70 PersonalChatHistoryResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatHistoryResponse\nid: JMYCgx0xdISC5j25\nchat: gJOSWaSJB6lpTFS3\ncode: 15\nfriendId: izOTDGIu7PrIxHJi' \
    > test.out 2>&1
eval_tap $? 70 'PersonalChatHistoryResponse' test.out

#- 71 PersonalChatNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatNotif\nid: PYe87mBc8epwbjo1\nfrom: j4oyAyCNdgDQF10e\npayload: SZS34pOggKVFsllQ\nreceivedAt: 29\nto: vHel2zHC7hb1mHnl' \
    > test.out 2>&1
eval_tap $? 71 'PersonalChatNotif' test.out

#- 72 PersonalChatRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatRequest\nid: JZfijdWrJ5Iuu15B\nfrom: fypwz7jxsl7EeT6R\npayload: WWOa2BYJjGs94Qik\nreceivedAt: 8\nto: cf2luajTnBZQgVS7' \
    > test.out 2>&1
eval_tap $? 72 'PersonalChatRequest' test.out

#- 73 PersonalChatResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: personalChatResponse\nid: rYr82t0hlcp3ZGHY\ncode: 66' \
    > test.out 2>&1
eval_tap $? 73 'PersonalChatResponse' test.out

#- 74 RejectFriendsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: rejectFriendsNotif\nuserId: UfgX4JSaqec3tS9f' \
    > test.out 2>&1
eval_tap $? 74 'RejectFriendsNotif' test.out

#- 75 RejectFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: rejectFriendsRequest\nid: BBYJtZ7r6vBpcIOr\nfriendId: DdGYpUICeo30gcpI' \
    > test.out 2>&1
eval_tap $? 75 'RejectFriendsRequest' test.out

#- 76 RejectFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: rejectFriendsResponse\nid: 5xVEbyLkAdt1HtIH\ncode: 56' \
    > test.out 2>&1
eval_tap $? 76 'RejectFriendsResponse' test.out

#- 77 RematchmakingNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: rematchmakingNotif\nbanDuration: 89' \
    > test.out 2>&1
eval_tap $? 77 'RematchmakingNotif' test.out

#- 78 RequestFriendsNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: requestFriendsNotif\nfriendId: cgPzHzEqsmOSyLbe' \
    > test.out 2>&1
eval_tap $? 78 'RequestFriendsNotif' test.out

#- 79 RequestFriendsRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: requestFriendsRequest\nid: d1PJWBhuWTlfnZUl\nfriendId: s2z6DmNbw4obphxx' \
    > test.out 2>&1
eval_tap $? 79 'RequestFriendsRequest' test.out

#- 80 RequestFriendsResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: requestFriendsResponse\nid: QckoIDMwtnZOkkfm\ncode: 42' \
    > test.out 2>&1
eval_tap $? 80 'RequestFriendsResponse' test.out

#- 81 SendChannelChatRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: sendChannelChatRequest\nid: YsKl0azK78O6MrD9\nchannelSlug: sJGqOXBuXkgyJCvP\npayload: PcUwjtoJzvkE5PMP' \
    > test.out 2>&1
eval_tap $? 81 'SendChannelChatRequest' test.out

#- 82 SendChannelChatResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: sendChannelChatResponse\nid: uPIIalFeLFXGeto8\ncode: 92' \
    > test.out 2>&1
eval_tap $? 82 'SendChannelChatResponse' test.out

#- 83 SetReadyConsentNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: setReadyConsentNotif\nmatchId: Pwy2n4ZnsrglTL9T\nuserId: 658i373yAkHHdmad' \
    > test.out 2>&1
eval_tap $? 83 'SetReadyConsentNotif' test.out

#- 84 SetReadyConsentRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: setReadyConsentRequest\nid: TB9KoFazl63CMMFl\nmatchId: Fk2qElHi4QoR3BmA' \
    > test.out 2>&1
eval_tap $? 84 'SetReadyConsentRequest' test.out

#- 85 SetReadyConsentResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: setReadyConsentResponse\nid: SwNr6n6h2iKj3844\ncode: 15' \
    > test.out 2>&1
eval_tap $? 85 'SetReadyConsentResponse' test.out

#- 86 SetSessionAttributeRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: setSessionAttributeRequest\nid: xIaCmcOdFc5KYL5R\nkey: MF4cVyzA9BuS7ulT\nnamespace: Pa7KRBE4ljYfd8ek\nvalue: uDw1klMSBRB301gK' \
    > test.out 2>&1
eval_tap $? 86 'SetSessionAttributeRequest' test.out

#- 87 SetSessionAttributeResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: setSessionAttributeResponse\nid: eELtQhgdi1BY3vLe\ncode: 2' \
    > test.out 2>&1
eval_tap $? 87 'SetSessionAttributeResponse' test.out

#- 88 SetUserStatusRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: setUserStatusRequest\nid: qejKNRRR8y7Zfw6u\nactivity: NMwSnLqVXM0PpZwm\navailability: 54' \
    > test.out 2>&1
eval_tap $? 88 'SetUserStatusRequest' test.out

#- 89 SetUserStatusResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: setUserStatusResponse\nid: 3MyJKbZ5zgqM9Lpg\ncode: 4' \
    > test.out 2>&1
eval_tap $? 89 'SetUserStatusResponse' test.out

#- 90 ShutdownNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: shutdownNotif\nmessage: Pgpju39gUiuwT2jC' \
    > test.out 2>&1
eval_tap $? 90 'ShutdownNotif' test.out

#- 91 SignalingP2PNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: signalingP2PNotif\ndestinationId: ovDKFzZtoHnZmueS\nmessage: zPTH4bKJ7DiDejST' \
    > test.out 2>&1
eval_tap $? 91 'SignalingP2PNotif' test.out

#- 92 StartMatchmakingRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: startMatchmakingRequest\nid: AaWrxEoQ8DJL1ozd\nextraAttributes: OpglWrGcJrYAxKVR\ngameMode: vQ5dNPMcC2WS8dW3\npartyAttributes: {"bKa95SKznkaZPNUd":{},"mue0u8piCNrThdoR":{},"SLD4UxcwXwenGodW":{}}\npriority: 11\ntempParty: ksPOV9K1Sk9FZEu0' \
    > test.out 2>&1
eval_tap $? 92 'StartMatchmakingRequest' test.out

#- 93 StartMatchmakingResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: startMatchmakingResponse\nid: yyktTqLK6crRIZsr\ncode: 3' \
    > test.out 2>&1
eval_tap $? 93 'StartMatchmakingResponse' test.out

#- 94 SystemComponentsStatus
samples/cli/sample-apps --wsModeStandalone \
    'type: systemComponentsStatus\ncomponents: {"zTaAaEyzwE4KAf5q":false,"On7OmKfBtqpwcGs3":true,"jv9mK9tFrqVBL16V":false}' \
    > test.out 2>&1
eval_tap $? 94 'SystemComponentsStatus' test.out

#- 95 UnblockPlayerNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: unblockPlayerNotif\nunblockedUserId: sG6rM9Hkai03AKy4\nuserId: LRShtwuFpebIYOxP' \
    > test.out 2>&1
eval_tap $? 95 'UnblockPlayerNotif' test.out

#- 96 UnblockPlayerRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: unblockPlayerRequest\nid: eekRMEi3xCGaQrUS\nnamespace: u6DXyDll9hyYR9Gk\nunblockedUserId: wUo6VGX7EMHW9dcD' \
    > test.out 2>&1
eval_tap $? 96 'UnblockPlayerRequest' test.out

#- 97 UnblockPlayerResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: unblockPlayerResponse\nid: cH47uowtwRn4RG7J\ncode: 67\nnamespace: Lv9bq5z1PQT8wAri\nunblockedUserId: VAtGKA9SG76jICGO' \
    > test.out 2>&1
eval_tap $? 97 'UnblockPlayerResponse' test.out

#- 98 UnfriendNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: unfriendNotif\nfriendId: aiFjJKbll0FvTpS4' \
    > test.out 2>&1
eval_tap $? 98 'UnfriendNotif' test.out

#- 99 UnfriendRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: unfriendRequest\nid: tQBLUkJlekNar8Zs\nfriendId: 1QP9wJgAnTmXIvUn' \
    > test.out 2>&1
eval_tap $? 99 'UnfriendRequest' test.out

#- 100 UnfriendResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: unfriendResponse\nid: errtQkKgAbxtmQIV\ncode: 77' \
    > test.out 2>&1
eval_tap $? 100 'UnfriendResponse' test.out

#- 101 UserBannedNotification
samples/cli/sample-apps --wsModeStandalone \
    'type: userBannedNotification' \
    > test.out 2>&1
eval_tap $? 101 'UserBannedNotification' test.out

#- 102 UserMetricRequest
samples/cli/sample-apps --wsModeStandalone \
    'type: userMetricRequest\nid: CVPJE8Gr6jCpxQmF' \
    > test.out 2>&1
eval_tap $? 102 'UserMetricRequest' test.out

#- 103 UserMetricResponse
samples/cli/sample-apps --wsModeStandalone \
    'type: userMetricResponse\nid: Aplaotn5hz3gM0pm\ncode: 45\nplayerCount: 53' \
    > test.out 2>&1
eval_tap $? 103 'UserMetricResponse' test.out

#- 104 UserStatusNotif
samples/cli/sample-apps --wsModeStandalone \
    'type: userStatusNotif\nactivity: DEsdurBgq7qRMMsM\navailability: 63\nlastSeenAt: 7Tx5xT2nht1Vr6M8\nuserId: KFaeI5grzdQy23md' \
    > test.out 2>&1
eval_tap $? 104 'UserStatusNotif' test.out


rm -f "tmp.dat"

exit $EXIT_CODE