// Copyright (c) 2017-2019 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package model

import "fmt"

// MatchmakingTicket contains information about matching party
// PartyAttributes can contain any of:
// - server_name: string of preferred server name (for local DS)
// - client_version: string of preferred client version (for matching with DS version)
// - latencies: string of JSON map of {"region name string": latency int} containing pairs of region name and latency in ms
type MatchmakingTicket struct {
	Channel         string                 `json:"channel,omitempty"`
	PartyID         string        `json:"party_id"`
	PartyMembers    []PartyMember `json:"party_members"`
	Priority        int           `json:"priority"`
	PartyAttributes map[string]interface{} `json:"party_attributes"`
}

// MatchMakingRequest is the request for a party to get matched
type MatchMakingRequest struct {
	MatchmakingTicket
}

// MatchMakingCancelRequest is the request for a party to get matched
type MatchMakingCancelRequest struct {
	Channel string `json:"channel,omitempty"`
	PartyID string `json:"party_id"`
}

// PartyMember is the member of the party and its predefined attribute
type PartyMember struct {
	UserID          string                 `json:"user_id"`
	ExtraAttributes map[string]interface{} `json:"extra_attributes"`
}

// PartyMemberV1 contains information party member
type PartyMemberV1 struct {
	UserID          string                 `json:"userId"`
	ExtraAttributes map[string]interface{} `json:"extraAttributes"`
}

// MatchmakingResult is the result of matchmaking
type MatchmakingResult struct {
	Status         string         `json:"status"`
	PartyID        string         `json:"party_id,omitempty"` // exists only on status cancel
	MatchID        string         `json:"match_id"`
	Channel        string         `json:"channel"`
	Namespace      string         `json:"namespace"`
	GameMode       string         `json:"game_mode"`
	ServerName     string         `json:"server_name"`
	ClientVersion  string         `json:"client_version"`
	Region         string         `json:"region"`
	Joinable       bool           `json:"joinable"`
	MatchingAllies []MatchingAlly `json:"matching_allies"`
	Deployment     string         `json:"deployment"`
}

// MatchingAlly is the model of a side
type MatchingAlly struct {
	MatchingParties []MatchingParty `json:"matching_parties"`
}

// MatchingParty contains information about matching party
type MatchingParty struct {
	PartyID         string                 `json:"party_id"`
	PartyAttributes map[string]interface{} `json:"party_attributes"`
	PartyMembers    []PartyMember          `json:"party_members"`
}

// MatchingPartyV1 contains information about matching party
type MatchingPartyV1 struct {
	PartyID      string          `json:"partyId"`
	PartyMembers []PartyMemberV1 `json:"partyMembers"`
}

// ReadyConsent contains information about readyness status in a party
// party leader was needed to do rematchmaking
type ReadyConsent struct {
	Namespace string   `json:"namespace"`
	PartyID   string   `json:"party_id"`
	GameMode  string   `json:"game_mode"`
	Members   []Member `json:"members"`
}

// Member store ready status and userID of user
type Member struct {
	UserID string `json:"user_id"`
	Status string `json:"status"`
}

func (res *MatchmakingResult) String() string {
	return fmt.Sprintf("MatchmakingResult{Status:%s, MatchID:%s, Namespace:%s, GameMode:%s, Deployment: %s, MatchingAllies:%v}", res.Status, res.MatchID, res.Namespace, res.GameMode, res.Deployment, res.MatchingAllies)
}
