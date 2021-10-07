// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package model

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
	UpdatedAt        int64
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
	PartyCode       string
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

type GeneratePartyCodeRequest struct {
	*BaseRequest
}

func (GeneratePartyCodeRequest) Type() string {
	return TypeGeneratePartyCodeRequest
}

type GeneratePartyCodeResponse struct {
	*BaseResponse
	PartyCode string
}

func (GeneratePartyCodeResponse) Type() string {
	return TypeGeneratePartyCodeResponse
}

type GetPartyCodeRequest struct {
	*BaseRequest
}

func (GetPartyCodeRequest) Type() string {
	return TypeGetPartyCodeRequest
}

type GetPartyCodeResponse struct {
	*BaseResponse
	PartyCode string
}

func (GetPartyCodeResponse) Type() string {
	return TypeGetPartyCodeResponse
}

type DeletePartyCodeRequest struct {
	*BaseRequest
}

func (DeletePartyCodeRequest) Type() string {
	return TypeDeletePartyCodeRequest
}

type DeletePartyCodeResponse struct {
	*BaseResponse
}

func (DeletePartyCodeResponse) Type() string {
	return TypeDeletePartyCodeResponse
}

type JoinViaPartyCodeRequest struct {
	*BaseRequest
	PartyCode string
}

func (JoinViaPartyCodeRequest) Type() string {
	return TypeJoinViaPartyCodeRequest
}

type JoinViaPartyCodeResponse struct {
	*BaseResponse
	PartyID         string
	LeaderID        string
	Members         string
	Invitees        string
	InvitationToken string
}

func (JoinViaPartyCodeResponse) Type() string {
	return TypeJoinViaPartyCodeResponse
}

// PartyDataUpdateNotification is the message of PartyDataUpdateNotification
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

type SendPartyNotifRequest struct {
	*BaseRequest
	Topic   string
	Payload string
}

func (SendPartyNotifRequest) Type() string {
	return TypeSendPartyNotifRequest
}

type SendPartyNotifResponse struct {
	*BaseResponse
}

func (SendPartyNotifResponse) Type() string {
	return TypeSendPartyNotifResponse
}

type PartyNotif struct {
	Sender  string
	Topic   string
	Payload string
}

func (PartyNotif) Type() string {
	return TypePartyNotif
}
