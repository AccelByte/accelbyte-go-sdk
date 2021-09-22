// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package models

var GeneratedAllPartyMembers []RequestPartyMember

type RequestPartyMember struct {
	UserID string `json:"user_id"`
}

type MatchmakingTicket struct {
	Channel       string               `json:"channelList,omitempty"`
	UserID        string               `json:"user_id"`
	PartyID       string               `json:"party_id"`
	PartyMembers  []RequestPartyMember `json:"party_members"`
	Priority      int                  `json:"priority"`
	ServerName    string               `json:"server_name"`
	ClientVersion string               `json:"client_version"`
	CreatedAt     int64                `json:"created_at"`
}

// MatchmakingRequest is the request for a party to get matched
// PartyAttributes can contain any of:
// - server_name: string of preferred server name (for local DS)
// - client_version: string of preferred client version (for matching with DS version)
// - latencies: map of string: int containing pairs of region name and latency in ms
// - match_attempt: (internal use only) int of number of retries to match this request
// - member_attributes: (internal use only) map of attribute name (string) and value (interface{})
//						containing mean value of member attributes
type MatchmakingRequest struct {
	MatchmakingTicket
}

// Channel contains channelList information
type Channel struct {
	Slug    string  `json:"slug" bson:"_id"`
	Ruleset RuleSet `json:"ruleset" bson:"ruleset"`
	ChannelMetadata
}

// RuleSet is a rule set
type RuleSet struct {
	AllianceRule AllianceRule   `json:"alliance" bson:"allianceRule"`
	MatchingRule []MatchingRule `json:"matching_rule" bson:"matchingRule"`
	FlexingRule  []FlexingRule  `json:"flexing_rule" bson:"flexingRule"`
}

// MatchingRule defines a matching rule
// attribute is the target attribute name
// criteria is property condition need to be met
// reference is value to test against the criteria
// example :
// rule : match players with mmr(attribute) distance(criteria) 500(reference)
// attribute="mmr"
// criteria="distance"
// reference="500"
type MatchingRule struct {
	Attribute string  `json:"attribute" valid:"stringlength(1|64),lowercase" x-nullable:"false" bson:"attribute"`
	Criteria  string  `json:"criteria" valid:"in(distance|average|smaller|greater)" x-nullable:"false" bson:"criteria"`
	Reference float64 `json:"reference" valid:"range(0|2147483647)" x-nullable:"false" bson:"reference"`
}

// FlexingRule defines a matching rule
type FlexingRule struct {
	Duration int64 `json:"duration" valid:"range(0|2147483647)" bson:"duration"`
	MatchingRule
}

type AllianceRule struct {
	MinNumber       int `json:"min_number" valid:"range(0|2147483647),required"`
	MaxNumber       int `json:"max_number" valid:"range(0|2147483647),required"`
	PlayerMinNumber int `json:"player_min_number" valid:"range(0|2147483647),required"`
	PlayerMaxNumber int `json:"player_max_number" valid:"range(0|2147483647),required"`
}

// ChannelMetadata is the extra information of a channelList
type ChannelMetadata struct {
	Namespace           string `json:"namespace" bson:"namespace"`
	GameMode            string `json:"game_mode" bson:"gameMode"`
	UpdatedAt           string `json:"updated_at" bson:"updatedAt"`
	Description         string `json:"description" bson:"description"`
	FindMatchTimeout    int    `json:"find_match_timeout_seconds" bson:"findMatchTimeout"`
	SessionQueueTimeout int    `json:"session_queue_timeout_seconds" bson:"sessionQueueTimeoutSeconds"`
	Joinable            bool   `json:"joinable" bson:"joinable"`
	SocialMatchmaking   bool   `json:"social_matchmaking" bson:"social_matchmaking"`
	Deployment          string `json:"deployment" bson:"deployment"`
	MaxDelayMs          int    `json:"max_delay_ms" bson:"max_delay_ms"`
}
