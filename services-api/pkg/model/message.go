// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// TODO: move it into different package, suggestion: message
package model

import (
	"fmt"
)

const (
	TypeUnknown = "unknown"

	// Server messages
	TypeConnected    = "connectNotif"
	TypeDisconnected = "disconnectNotif"
	TypeError        = "errorNotif"
	TypeShutdown     = "shutdownNotif"
	TypeHeartbeat    = "heartbeat"

	// SuccessCode
	SuccessCode = 0

	// Matchmaking status
	MMStatusStart   = "start"
	MMStatusDone    = "done"
	MMStatusCancel  = "cancel"
	MMStatusTimeout = "timeout"

	// System Components
	SystemComponentChat = "chat"
)

// Lobby messaging protocol type
const (
	// Party
	TypeInfoRequest                 = "partyInfoRequest"
	TypeInfoResponse                = "partyInfoResponse"
	TypeCreateRequest               = "partyCreateRequest"
	TypeCreateResponse              = "partyCreateResponse"
	TypeLeaveRequest                = "partyLeaveRequest"
	TypeLeaveResponse               = "partyLeaveResponse"
	TypeLeaveNotif                  = "partyLeaveNotif"
	TypeInviteRequest               = "partyInviteRequest"
	TypeInviteResponse              = "partyInviteResponse"
	TypeInviteNotif                 = "partyInviteNotif"
	TypeGetInvitatedNotif           = "partyGetInvitedNotif"
	TypeJoinRequest                 = "partyJoinRequest"
	TypeJoinResponse                = "partyJoinResponse"
	TypeJoinNotif                   = "partyJoinNotif"
	TypeRejectRequest               = "partyRejectRequest"
	TypeRejectResponse              = "partyRejectResponse"
	TypeRejectNotif                 = "partyRejectNotif"
	TypeKickRequest                 = "partyKickRequest"
	TypeKickResponse                = "partyKickResponse"
	TypeKickNotice                  = "partyKickNotif"
	TypePersonalChatRequest         = "personalChatRequest"
	TypePersonalChatResponse        = "personalChatResponse"
	TypePersonalChatNotif           = "personalChatNotif"
	TypePartyChatRequest            = "partyChatRequest"
	TypePartyChatResponse           = "partyChatResponse"
	TypePartyChatNotif              = "partyChatNotif"
	TypePersonalChatHistoryRequest  = "personalChatHistoryRequest"
	TypePersonalChatHistoryResponse = "personalChatHistoryResponse"
	TypePromoteLeaderRequest        = "partyPromoteLeaderRequest"
	TypePromoteLeaderResponse       = "partyPromoteLeaderResponse"

	// Presence
	TypeFriendsPresenceRequest  = "friendsStatusRequest"
	TypeFriendsPresenceResponse = "friendsStatusResponse"
	TypeSetUserStatusRequest    = "setUserStatusRequest"
	TypeSetUserStatusResponse   = "setUserStatusResponse"
	TypeUserStatusNotif         = "userStatusNotif"

	// TypeClientResetRequest is request from clienthandler to lobby
	TypeClientResetRequest = "clientResetRequest"

	// Notification
	TypeGetOfflineNotificationRequest  = "offlineNotificationRequest"
	TypeGetOfflineNotificationResponse = "offlineNotificationResponse"
	TypeNotificationMessage            = "messageNotif"

	// Matchmaking
	TypeStartMatchmakingRequest   = "startMatchmakingRequest"
	TypeStartMatchmakingResponse  = "startMatchmakingResponse"
	TypeCancelMatchmakingRequest  = "cancelMatchmakingRequest"
	TypeCancelMatchmakingResponse = "cancelMatchmakingResponse"
	TypeMatchmakingNotif          = "matchmakingNotif"
	TypeSetReadyConsentRequest    = "setReadyConsentRequest"
	TypeSetReadyConsentResponse   = "setReadyConsentResponse"
	TypeSetReadyConsentNotif      = "setReadyConsentNotif"
	TypeRematchmakingNotif        = "rematchmakingNotif"

	// Deprecated presence
	TypeOnlineFriends            = "onlineFriends"
	TypeListOnlineFriendsRequest = "listOnlineFriendsRequest"

	// Friends
	TypeRequestFriendsRequest       = "requestFriendsRequest"
	TypeRequestFriendsResponse      = "requestFriendsResponse"
	TypeRequestFriendsNotif         = "requestFriendsNotif"
	TypeListIncomingFriendsRequest  = "listIncomingFriendsRequest"
	TypeListIncomingFriendsResponse = "listIncomingFriendsResponse"
	TypeListOutgoingFriendsRequest  = "listOutgoingFriendsRequest"
	TypeListOutgoingFriendsResponse = "listOutgoingFriendsResponse"
	TypeAcceptFriendsRequest        = "acceptFriendsRequest"
	TypeAcceptFriendsResponse       = "acceptFriendsResponse"
	TypeAcceptFriendsNotif          = "acceptFriendsNotif"
	TypeRejectFriendsRequest        = "rejectFriendsRequest"
	TypeRejectFriendsResponse       = "rejectFriendsResponse"
	TypeCancelFriendsRequest        = "cancelFriendsRequest"
	TypeCancelFriendsResponse       = "cancelFriendsResponse"
	TypeUnfriendRequest             = "unfriendRequest"
	TypeUnfriendResponse            = "unfriendResponse"
	TypeUnfriendNotif               = "unfriendNotif"
	TypeListOfFriendsRequest        = "listOfFriendsRequest"
	TypeListOfFriendsResponse       = "listOfFriendsResponse"
	TypeGetFriendshipStatusRequest  = "getFriendshipStatusRequest"
	TypeGetFriendshipStatusResponse = "getFriendshipStatusResponse"
	TypeBlockPlayerRequest          = "blockPlayerRequest"
	TypeBlockPlayerResponse         = "blockPlayerResponse"
	TypeBlockPlayerNotif            = "blockPlayerNotif"
	TypeUnblockPlayerRequest        = "unblockPlayerRequest"
	TypeUnblockPlayerResponse       = "unblockPlayerResponse"
	TypeUnblockPlayerNotif          = "unblockPlayerNotif"

	// DSM
	TypeCreateDSRequest  = "createDSRequest"
	TypeWaitForDSRequest = "waitForDSRequest"
	TypeClaimDSRequest   = "claimDSRequest"
	TypeNotifyDSRequest  = "notifyDSRequest"
	TypeDSNotif          = "dsNotif"

	// System events
	TypeSystemComponentsStatus = "systemComponentsStatus"

	// Party
	TypePartyDataUpdateNotif = "partyDataUpdateNotif"

	// Channel Chat
	TypeJoinDefaultChannelRequest  = "joinDefaultChannelRequest"
	TypeJoinDefaultChannelResponse = "joinDefaultChannelResponse"
	TypeUserBannedNotification     = "userBannedNotification"
	TypeExitAllChannel             = "exitAllChannel"
	TypeSendChannelChatRequest     = "sendChannelChatRequest"
	TypeSendChannelChatResponse    = "sendChannelChatResponse"
	TypeChannelChatNotif           = "channelChatNotif"

	// session attribute
	TypeSetSessionAttributeRequest  = "setSessionAttributeRequest"
	TypeSetSessionAttributeResponse = "setSessionAttributeResponse"

	// Signaling
	TypeSignalingP2PNotif = "signalingP2PNotif"

	// User Metric
	TypeUserMetricRequest  = "userMetricRequest"
	TypeUserMetricResponse = "userMetricResponse"
)

// SystemDisplayName is the sender display name for user notification
const SystemDisplayName = "system"

// Message will be passed around internally
type Message interface {
	Type() string // Returns the message type
}

// BaseRequest will be expanded by other message
// types and contains user's ID
type BaseRequest struct {
	MessageID string
	UserID    string
}

// Type implements Message interface
func (BaseRequest) Type() string {
	return TypeUnknown
}

// BaseResponse will be expanded by other response
// types and contains HTTP response code
type BaseResponse struct {
	MessageID string
	Code      int
}

// Type implements Message interface
func (BaseResponse) Type() string {
	return TypeUnknown
}

// Connected contains result of making connection
type Connected struct {
	*BaseResponse
	LobbySessionID string
}

// Type implements Message interface
func (Connected) Type() string {
	return TypeConnected
}

// Disconnected contains info of disconnected user
type Disconnected struct {
	*BaseRequest
	Namespace    string
	ConnectionID string
}

// Type implements Message interface
func (Disconnected) Type() string {
	return TypeDisconnected
}

// ErrorMessage contains info of error
type ErrorMessage struct {
	*BaseResponse
	Message string
}

// Type implements Message interface
func (ErrorMessage) Type() string {
	return TypeError
}

// Shutdown contains info of server shutting down
type Shutdown struct {
	Message string
}

// Type implements Message interface
func (Shutdown) Type() string {
	return TypeShutdown
}

// Heartbeat used for keeping connection alive
type Heartbeat struct {
	*BaseRequest
}

// Type implements Message interface
func (Heartbeat) Type() string {
	return TypeHeartbeat
}

// InfoRequest contains user's info request
type InfoRequest struct {
	*BaseRequest
}

// Type implements Message interface
func (InfoRequest) Type() string {
	return TypeInfoRequest
}

// InfoResponse contains info of user's lobby state
type InfoResponse struct {
	*BaseResponse
	PartyID          string
	LeaderID         string
	Members          string
	Invitees         string
	InvitationToken  string
	CustomAttributes map[string]interface{}
}

// Type implements Message interface
func (InfoResponse) Type() string {
	return TypeInfoResponse
}

// CreateRequest contains user's create request
type CreateRequest struct {
	*BaseRequest
}

// Type implements Message interface
func (CreateRequest) Type() string {
	return TypeCreateRequest
}

// CreateResponse contains result of creating party
type CreateResponse struct {
	*BaseResponse
	PartyID         string
	LeaderID        string
	Members         string
	Invitees        string
	InvitationToken string
}

// Type implements Message interface
func (CreateResponse) Type() string {
	return TypeCreateResponse
}

// LeaveRequest contains user's create request
type LeaveRequest struct {
	*BaseRequest

	// Internal use, to force player leave party on disconnected
	IgnoreUserRegistry bool
}

// Type implements Message interface
func (LeaveRequest) Type() string {
	return TypeLeaveRequest
}

// LeaveResponse contains result of creating party
type LeaveResponse struct {
	*BaseResponse
}

// Type implements Message interface
func (LeaveResponse) Type() string {
	return TypeLeaveResponse
}

// InviteRequest contains user's invite request
type InviteRequest struct {
	*BaseRequest
	FriendID string
}

// Type implements Message interface
func (InviteRequest) Type() string {
	return TypeInviteRequest
}

// InviteResponse contains result of inviting friend to party
type InviteResponse struct {
	*BaseResponse
}

// Type implements Message interface
func (InviteResponse) Type() string {
	return TypeInviteResponse
}

// Invitation contains user's invitation to other user
type Invitation struct {
	From            string
	PartyID         string
	InvitationToken string
}

// Type implements Message interface
func (Invitation) Type() string {
	return TypeGetInvitatedNotif
}

// JoinRequest contains user's join request
type JoinRequest struct {
	*BaseRequest
	PartyID         string
	InvitationToken string
}

// Type implements Message interface
func (JoinRequest) Type() string {
	return TypeJoinRequest
}

// JoinResponse contains result of user's join request
type JoinResponse struct {
	*BaseResponse
	PartyID         string
	LeaderID        string
	Members         string
	Invitees        string
	InvitationToken string
}

// Type implements Message interface
func (JoinResponse) Type() string {
	return TypeJoinResponse
}

// RejectRequest contains user's reject request
type RejectRequest struct {
	*BaseRequest
	PartyID         string
	InvitationToken string
}

// Type implements Message interface
func (RejectRequest) Type() string {
	return TypeRejectRequest
}

// RejectResponse contains result of user's reject request
type RejectResponse struct {
	*BaseResponse
	PartyID string
}

// Type implements Message interface
func (RejectResponse) Type() string {
	return TypeRejectResponse
}

// RejectNotice contains party's reject notice
type RejectNotice struct {
	LeaderID string
	UserID   string
	PartyID  string
}

// Type implements Message interface
func (RejectNotice) Type() string {
	return TypeRejectNotif
}

// KickRequest contains user's kick request
type KickRequest struct {
	*BaseRequest
	MemberID string
}

// Type implements Message interface
func (KickRequest) Type() string {
	return TypeKickRequest
}

// KickResponse contains result of kicking member from party
type KickResponse struct {
	*BaseResponse
}

// Type implements Message interface
func (KickResponse) Type() string {
	return TypeKickResponse
}

// KickNotice contains party's kicked notice
type KickNotice struct {
	LeaderID string
	UserID   string
	PartyID  string
}

// Type implements Message interface
func (KickNotice) Type() string {
	return TypeKickNotice
}

// JoinNotice contains party's join notice
type JoinNotice struct {
	UserID string
}

// Type implements Message interface
func (JoinNotice) Type() string {
	return TypeJoinNotif
}

// InviteNotice contains party's invite notice
type InviteNotice struct {
	InviterID string
	InviteeID string
}

// Type implements Message interface
func (InviteNotice) Type() string {
	return TypeInviteNotif
}

// LeaveNotice contains party's leave notice
type LeaveNotice struct {
	UserID   string
	LeaderID string
}

// Type implements Message interface
func (LeaveNotice) Type() string {
	return TypeLeaveNotif
}

// ChatMessage contains user's chat
type ChatMessage struct {
	ID         string
	From       string
	To         string
	Payload    string
	ReceivedAt int64
}

// PersonalChatRequest contains user's personal chat
type PersonalChatRequest struct {
	*ChatMessage
}

// Type implements Message interface
func (PersonalChatRequest) Type() string {
	return TypePersonalChatRequest
}

// PersonalChatResponse response model after sending chat request
type PersonalChatResponse struct {
	*BaseResponse
}

// Type implements Message interface
func (PersonalChatResponse) Type() string {
	return TypePersonalChatResponse
}

// PersonalChatNotif is the notif model for incoming chat message
type PersonalChatNotif struct {
	*ChatMessage
}

// Type implements Message interface
func (PersonalChatNotif) Type() string {
	return TypePersonalChatNotif
}

// PartyChatRequest contains user's party chat
type PartyChatRequest struct {
	*ChatMessage
}

// Type implements Message interface
func (PartyChatRequest) Type() string {
	return TypePartyChatRequest
}

// PartyChatResponse contains user's party chat
type PartyChatResponse struct {
	*BaseResponse
}

// Type implements Message interface
func (PartyChatResponse) Type() string {
	return TypePartyChatResponse
}

// PartyChatNotif contains user's party chat
type PartyChatNotif struct {
	*ChatMessage
}

// Type implements Message interface
func (PartyChatNotif) Type() string {
	return TypePartyChatNotif
}

//
// PersonalChatHistoryRequest list of user's personal chat request
type PersonalChatHistoryRequest struct {
	*BaseRequest
	FriendID string
}

// Type implements Message interface
func (PersonalChatHistoryRequest) Type() string {
	return TypePersonalChatHistoryRequest
}

// PersonalChatHistoryResponse list of user's personal chat response
type PersonalChatHistoryResponse struct {
	*BaseResponse
	FriendID string
	Chat     string
}

// Type implements Message interface
func (PersonalChatHistoryResponse) Type() string {
	return TypePersonalChatHistoryResponse
}

// ListOnlineFriends message command to list user's friends
type ListOnlineFriends struct {
	*BaseRequest
}

// Type implements Message interface
func (ListOnlineFriends) Type() string {
	return TypeListOnlineFriendsRequest
}

// GetOfflineNotificationRequest message comment
type GetOfflineNotificationRequest struct {
	*BaseRequest
}

// Type implements Message interface
func (GetOfflineNotificationRequest) Type() string {
	return TypeGetOfflineNotificationRequest
}

// GetOfflineNotificationResponse message comment
type GetOfflineNotificationResponse struct {
	*BaseResponse
}

// Type implements Message interface
func (GetOfflineNotificationResponse) Type() string {
	return TypeGetOfflineNotificationResponse
}

// OnlineFriendsResponse message response to list user's online friends
type OnlineFriendsResponse struct {
	*BaseResponse
	UserID []string
}

// Type implements Message interface
func (OnlineFriendsResponse) Type() string {
	return TypeOnlineFriends
}

// NotificationMessage contains user notification message to be sent to user
type NotificationMessage struct {
	ID      string
	From    string
	To      string
	Topic   string
	Payload string
	SentAt  int64
}

// Type implements Message interface
func (NotificationMessage) Type() string {
	return TypeNotificationMessage
}

// ListFriendsPresenceRequest message command to list user's friends (Request)
type ListFriendsPresenceRequest struct {
	*BaseRequest
}

// Type implements Message interface
func (ListFriendsPresenceRequest) Type() string {
	return TypeFriendsPresenceRequest
}

// ListFriendsPresenceResponse message command to list user's friends (Response)
type ListFriendsPresenceResponse struct {
	*BaseResponse
	UserID       []string
	Availability []int
	Activity     []string
	LastSeenAt   []string
}

// Type implements Message interface
func (ListFriendsPresenceResponse) Type() string {
	return TypeFriendsPresenceResponse
}

// SetUserStatusRequest message command to set user status (Request)
type SetUserStatusRequest struct {
	*BaseRequest
	Availability int    `json:"availability"`
	Activity     string `json:"activity"`
}

// Type implements Message interface
func (SetUserStatusRequest) Type() string {
	return TypeSetUserStatusRequest
}

// ResetUserStatusRequest request directly from client to reset user status when the client get disconnected
type ResetUserStatusRequest struct {
	UserID    string
	Namespace string
}

// Type implements Message interface
func (ResetUserStatusRequest) Type() string {
	return TypeClientResetRequest
}

// SetUserStatusResponse message command to set user status (Response)
type SetUserStatusResponse struct {
	*BaseResponse
}

// Type implements Message interface
func (SetUserStatusResponse) Type() string {
	return TypeSetUserStatusResponse
}

// FriendsPresenceNotif message command to notify friends
type FriendsPresenceNotif struct {
	UserID       string
	Availability int
	Activity     string
	LastSeenAt   string
}

// Type implements Message interface
func (FriendsPresenceNotif) Type() string {
	return TypeUserStatusNotif
}

// StartMatchmakingRequest message model to start matchmaking
// The user id should be the leader user ID
// Priority spans from 0-10 the highest the priority the faster it party will get matched
//
// PartyAttributes can contain any of:
// - server_name: string of preferred server name (for local DS)
// - client_version: string of preferred client version (for matching with DS version)
// - latencies: string of JSON map of {"region name string": latency int} containing pairs of region name and latency in ms
//
// Temp party should contain comma separated user IDs in a temporary party for matchmaking only
type StartMatchmakingRequest struct {
	*BaseRequest
	GameMode        string
	Priority        int
	PartyAttributes map[string]interface{} `json:"party_attributes"`
	TempParty       string
	ExtraAttributes string
}

// Type implements Message interface
func (StartMatchmakingRequest) Type() string {
	return TypeStartMatchmakingRequest
}

// StartMatchmakingResponse message model to reply start matchmaking request
type StartMatchmakingResponse struct {
	*BaseResponse
}

// Type implements Message interface
func (StartMatchmakingResponse) Type() string {
	return TypeStartMatchmakingResponse
}

// CancelMatchmakingRequest message model to request matchmaking cancel
type CancelMatchmakingRequest struct {
	*BaseRequest
	GameMode    string
	IsTempParty bool
}

// Type implements Message interface
func (CancelMatchmakingRequest) Type() string {
	return TypeCancelMatchmakingRequest
}

// CancelMatchmakingResponse message model to reply start matchmaking request
type CancelMatchmakingResponse struct {
	*BaseResponse
}

// Type implements Message interface
func (CancelMatchmakingResponse) Type() string {
	return TypeCancelMatchmakingResponse
}

// MatchmakingNotification is the model of matchmaking result
type MatchmakingNotification struct {
	Status                   string
	MatchID                  string
	PartyMemberUserID        []string
	CounterPartyMemberUserID []string
	ReadyDuration            int
}

// Type implements Message interface
func (MatchmakingNotification) Type() string {
	return TypeMatchmakingNotif
}

// SetReadyConsentRequest is the model of set ready consent request
type SetReadyConsentRequest struct {
	*BaseRequest
	MatchID string
}

// Type implements Message interface
func (SetReadyConsentRequest) Type() string {
	return TypeSetReadyConsentRequest
}

// SetReadyConsentResponse is the model of set ready consent response
type SetReadyConsentResponse struct {
	*BaseResponse
}

// Type implements Message interface
func (SetReadyConsentResponse) Type() string {
	return TypeSetReadyConsentResponse
}

// SetReadyConsentNotif is the model of set ready consent response
type SetReadyConsentNotif struct {
	MatchID string
	UserID  string
}

// Type implements Message interface
func (SetReadyConsentNotif) Type() string {
	return TypeSetReadyConsentNotif
}

// RematchmakingNotif is the model of rematchmaking notification
type RematchmakingNotif struct {
	BanDuration int
}

// Type implements Message interface
func (RematchmakingNotif) Type() string {
	return TypeRematchmakingNotif
}

// RequestFriendsRequest message command to request friends (Request)
type RequestFriendsRequest struct {
	*BaseRequest
	FriendID string `json:"friendId"`
}

// Type implements Message interface
func (RequestFriendsRequest) Type() string {
	return TypeRequestFriendsRequest
}

// RequestFriendsResponse message command to request friends (Response)
type RequestFriendsResponse struct {
	*BaseResponse
}

// Type implements Message interface
func (RequestFriendsResponse) Type() string {
	return TypeRequestFriendsResponse
}

// RequestFriendsNotif message notification when someone requesting friends relation
type RequestFriendsNotif struct {
	FriendID string `json:"friendId"`
}

// Type implements Message interface
func (RequestFriendsNotif) Type() string {
	return TypeRequestFriendsNotif
}

// ListIncomingFriendsRequest message command to get list of incoming friends (Request)
type ListIncomingFriendsRequest struct {
	*BaseRequest
}

// Type implements Message interface
func (ListIncomingFriendsRequest) Type() string {
	return TypeListIncomingFriendsRequest
}

// ListIncomingFriendsResponse message command to get list of Incoming friends (Response)
type ListIncomingFriendsResponse struct {
	*BaseResponse
	UserIDs []string
}

// Type implements Message interface
func (ListIncomingFriendsResponse) Type() string {
	return TypeListIncomingFriendsResponse
}

// ListOutgoingFriendsRequest message command to get list of Outgoing friends (Request)
type ListOutgoingFriendsRequest struct {
	*BaseRequest
}

// Type implements Message interface
func (ListOutgoingFriendsRequest) Type() string {
	return TypeListOutgoingFriendsRequest
}

// ListOutgoingFriendsResponse message command to get list of Outgoing friends (Response)
type ListOutgoingFriendsResponse struct {
	*BaseResponse
	UserIDs []string
}

// Type implements Message interface
func (ListOutgoingFriendsResponse) Type() string {
	return TypeListOutgoingFriendsResponse
}

// AcceptFriendsRequest message command to accept friends request (Request)
type AcceptFriendsRequest struct {
	*BaseRequest
	FriendID string `json:"friendId"`
}

// Type implements Message interface
func (AcceptFriendsRequest) Type() string {
	return TypeAcceptFriendsRequest
}

// AcceptFriendsResponse message command to accept friends request (Response)
type AcceptFriendsResponse struct {
	*BaseResponse
}

// Type implements Message interface
func (AcceptFriendsResponse) Type() string {
	return TypeAcceptFriendsResponse
}

// AcceptFriendsNotif is notification message when someone accept friends request
type AcceptFriendsNotif struct {
	FriendID string `json:"friendId"`
}

// Type implements Message interface
func (AcceptFriendsNotif) Type() string {
	return TypeAcceptFriendsNotif
}

// RejectFriendsRequest message command to reject friends request (Request)
type RejectFriendsRequest struct {
	*BaseRequest
	FriendID string `json:"friendId"`
}

// Type implements Message interface
func (RejectFriendsRequest) Type() string {
	return TypeRejectFriendsRequest
}

// RejectFriendsResponse message command to reject friends request (Response)
type RejectFriendsResponse struct {
	*BaseResponse
}

// Type implements Message interface
func (RejectFriendsResponse) Type() string {
	return TypeRejectFriendsResponse
}

// CancelFriendsRequest message command to cancel friends request (Request)
type CancelFriendsRequest struct {
	*BaseRequest
	FriendID string `json:"friendId"`
}

// Type implements Message interface
func (CancelFriendsRequest) Type() string {
	return TypeCancelFriendsRequest
}

// CancelFriendsResponse message command to cancel friends request (Response)
type CancelFriendsResponse struct {
	*BaseResponse
}

// Type implements Message interface
func (CancelFriendsResponse) Type() string {
	return TypeCancelFriendsResponse
}

// UnfriendRequest message command to unfriends (Request)
type UnfriendRequest struct {
	*BaseRequest
	FriendID string `json:"friendId"`
}

// Type implements Message interface
func (UnfriendRequest) Type() string {
	return TypeUnfriendRequest
}

// UnfriendResponse message command to unfriends (Response)
type UnfriendResponse struct {
	*BaseResponse
}

// Type implements Message interface
func (UnfriendResponse) Type() string {
	return TypeUnfriendResponse
}

// UnfriendNotif is notification message when someone unfriend a friend
type UnfriendNotif struct {
	FriendID string `json:"friendId"`
}

// Type implements Message interface
func (UnfriendNotif) Type() string {
	return TypeUnfriendNotif
}

// ListOfFriendsRequest message command to get list of friends (Request)
type ListOfFriendsRequest struct {
	*BaseRequest
	FriendID string `json:"friendId"`
}

// Type implements Message interface
func (ListOfFriendsRequest) Type() string {
	return TypeListOfFriendsRequest
}

// ListOfFriendsResponse message command to get list of friends (Response)
type ListOfFriendsResponse struct {
	*BaseResponse
	UserIDs []string
}

// Type implements Message interface
func (ListOfFriendsResponse) Type() string {
	return TypeListOfFriendsResponse
}

// GetFriendshipStatusRequest message command to get friendship status (Request)
type GetFriendshipStatusRequest struct {
	*BaseRequest
	FriendID string `json:"friendId"`
}

// Type implements Message interface
func (GetFriendshipStatusRequest) Type() string {
	return TypeGetFriendshipStatusRequest
}

// GetFriendshipStatusResponse message command to get friendship status (Response)
type GetFriendshipStatusResponse struct {
	*BaseResponse
	FriendshipStatus string `json:"friendshipStatus"`
}

// Type implements Message interface
func (GetFriendshipStatusResponse) Type() string {
	return TypeGetFriendshipStatusResponse
}

// CreateDSRequest message command to create a DS (Request)
type CreateDSRequest struct {
	MMResult *MatchmakingResult
}

func (req *CreateDSRequest) String() string {
	return fmt.Sprintf("CreateDSRequest{MMResult:%v}", req.MMResult)
}

// Type implements Message interface
func (CreateDSRequest) Type() string {
	return TypeCreateDSRequest
}

// WaitForDSRequest message command to wait a DS creation (Request)
type WaitForDSRequest struct {
	Session *Session
	Request *CreateSessionRequest
}

func (req *WaitForDSRequest) String() string {
	return fmt.Sprintf("WaitForDSRequest{Session:%v, Request:%v}", req.Session, req.Request)
}

// Type implements Message interface
func (WaitForDSRequest) Type() string {
	return TypeWaitForDSRequest
}

// ClaimDSRequest message command to claim a DS (Request)
type ClaimDSRequest struct {
	Session *Session
	Request *CreateSessionRequest
}

func (req *ClaimDSRequest) String() string {
	return fmt.Sprintf("ClaimDSRequest{Session:%v, Request:%v}", req.Session, req.Request)
}

// Type implements Message interface
func (ClaimDSRequest) Type() string {
	return TypeClaimDSRequest
}

// NotifyDSRequest message command to notify users that DS is ready (Request)
type NotifyDSRequest struct {
	Session        *Session
	MatchingAllies []RequestMatchingAlly
	PartyIDsToSkip []string
	Error          error
}

// Type implements Message interface
func (NotifyDSRequest) Type() string {
	return TypeNotifyDSRequest
}

// DSNotification is the model of DS status notification
type DSNotification struct {
	Session *Session
	IsOK    bool
	Message string
}

// Type implements Message interface
func (DSNotification) Type() string {
	return TypeDSNotif
}

// SystemComponentsStatus is the model of System Components Status
type SystemComponentsStatus struct {
	Components map[string]bool
}

// Type implements Message interface
func (SystemComponentsStatus) Type() string {
	return TypeSystemComponentsStatus
}

// PartyDataUpdateNotification is the model of PartyDataUpdateNotification
type PartyDataUpdateNotification struct {
	PartyID         string
	LeaderID        string
	Namespace       string
	Members         []string
	Invitees        []string
	CustomAttribute map[string]interface{}
	UpdatedAt       int64
}

// Type implements Message interface
func (PartyDataUpdateNotification) Type() string {
	return TypePartyDataUpdateNotif
}

// BlockPlayerRequest is the model of BlockPlayerRequest
type BlockPlayerRequest struct {
	*BaseRequest
	Namespace     string
	BlockedUserID string
}

// Type implements Message interface
func (BlockPlayerRequest) Type() string {
	return TypeBlockPlayerRequest
}

// BlockPlayerResponse is the model of BlockPlayerResponse
type BlockPlayerResponse struct {
	*BaseResponse
	Namespace     string
	BlockedUserID string
}

// Type implements Message interface
func (BlockPlayerResponse) Type() string {
	return TypeBlockPlayerResponse
}

// PlayerBlockedNotification is the model of PlayerBlockedNotification
type PlayerBlockedNotification struct {
	UserID        string
	BlockedUserID string
}

// Type implements Message interface
func (PlayerBlockedNotification) Type() string {
	return TypeBlockPlayerNotif
}

// UnblockPlayerRequest is the model of UnblockPlayerRequest
type UnblockPlayerRequest struct {
	*BaseRequest
	Namespace       string
	UnblockedUserID string
}

// Type implements Message interface
func (UnblockPlayerRequest) Type() string {
	return TypeUnblockPlayerRequest
}

// UnblockPlayerResponse is the model of UnblockPlayerResponse
type UnblockPlayerResponse struct {
	*BaseResponse
	Namespace       string
	UnblockedUserID string
}

// Type implements Message interface
func (UnblockPlayerResponse) Type() string {
	return TypeUnblockPlayerResponse
}

// PlayerUnblockedNotification is the model of PlayerUnblockedNotification
type PlayerUnblockedNotification struct {
	UserID          string
	UnblockedUserID string
}

// Type implements Message interface
func (PlayerUnblockedNotification) Type() string {
	return TypeUnblockPlayerNotif
}

type SetSessionAttributeRequest struct {
	*BaseRequest
	Namespace string
	Key       string
	Value     string
}

func (SetSessionAttributeRequest) Type() string {
	return TypeSetSessionAttributeRequest
}

type SetSessionAttributeResponse struct {
	*BaseResponse
}

func (SetSessionAttributeResponse) Type() string {
	return TypeSetSessionAttributeResponse
}

type PromoteLeaderRequest struct {
	*BaseRequest
	NewLeaderUserID string
}

func (PromoteLeaderRequest) Type() string {
	return TypePromoteLeaderRequest
}

type PromoteLeaderResponse struct {
	*BaseResponse
	PartyID         string
	LeaderID        string
	Members         string
	Invitees        string
	InvitationToken string
}

func (PromoteLeaderResponse) Type() string {
	return TypePromoteLeaderResponse
}

type UserMetricRequest struct {
	*BaseRequest
}

func (UserMetricRequest) Type() string {
	return TypeUserMetricRequest
}

type UserMetricResponse struct {
	*BaseResponse
	PlayerCount int
}

func (UserMetricResponse) Type() string {
	return TypeUserMetricResponse
}
