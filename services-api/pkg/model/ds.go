// Copyright (c) 2019-2020 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package model

import (
	"errors"
	"fmt"
	"time"
)

// Server status constants
const (
	ServerStatusCreating = "CREATING"
	ServerStatusReady    = "READY"
	ServerStatusBusy     = "BUSY"
)

// Error is response sent when an error occurs
type Error struct {
	ErrorCode    int    `json:"errorCode"`
	ErrorMessage string `json:"errorMessage"`
}

// CreateSessionRequest contains
// request to spawn a new dedicated server
type CreateSessionRequest struct {
	SessionID      string                `json:"session_id"`
	Namespace      string                `json:"namespace"`
	GameMode       string                `json:"game_mode"`
	PodName        string                `json:"pod_name"`
	ClientVersion  string                `json:"client_version"`
	Region         string                `json:"region"`
	Configuration  string                `json:"configuration"`
	MatchingAllies []RequestMatchingAlly `json:"matching_allies"`
	Deployment     string                `json:"deployment"`
}

func (req *CreateSessionRequest) String() string {
	return fmt.Sprintf("CreateSessionRequest{SessionID:%s, Namespace:%s, GameMode:%s, PodName:%s, ClientVersion:%s, Region:%s, MatchingAllies:%+v, Deployment:%s}", req.SessionID, req.Namespace, req.GameMode, req.PodName, req.ClientVersion, req.Region, req.MatchingAllies, req.Deployment)
}

// Validate returns error if any field is missing
func (req *CreateSessionRequest) Validate() error {
	if req.Namespace == "" {
		return errors.New("namespace cannot be empty")
	}
	if req.SessionID == "" {
		return errors.New("session ID cannot be empty")
	}
	if req.GameMode == "" {
		return errors.New("game mode cannot be empty")
	}
	if len(req.MatchingAllies) == 0 {
		return errors.New("need 1 or more allies")
	}
	for _, ally := range req.MatchingAllies {
		if err := ally.Validate(); err != nil {
			return err
		}
	}
	return nil
}

// RequestMatchingAlly contains party on the same side
type RequestMatchingAlly struct {
	MatchingParties []RequestMatchParty `json:"matching_parties"`
}

// Validate returns error if any field is missing
func (req *RequestMatchingAlly) Validate() error {
	if len(req.MatchingParties) == 0 {
		return errors.New("need 1 or more parties")
	}
	for _, party := range req.MatchingParties {
		if err := party.Validate(); err != nil {
			return err
		}
	}
	return nil
}

// RequestMatchParty is the matching party of a match
type RequestMatchParty struct {
	PartyID         string                 `json:"party_id"`
	PartyAttributes map[string]interface{} `json:"party_attributes"`
	PartyMembers    []RequestMatchMember   `json:"party_members"`
}

// Validate returns error if any field is missing
func (req *RequestMatchParty) Validate() error {
	if req.PartyID == "" {
		return errors.New("party ID cannot be empty")
	}
	if len(req.PartyMembers) == 0 {
		return errors.New("need 1 or more party members")
	}
	for _, member := range req.PartyMembers {
		if err := member.Validate(); err != nil {
			return err
		}
	}
	return nil
}

// Members return party member user ID in slice format
func (req *RequestMatchParty) Members() []string {
	ids := make([]string, 0, len(req.PartyMembers))
	for _, member := range req.PartyMembers {
		ids = append(ids, member.UserID)
	}
	return ids
}

// RequestMatchMember is the member of match party
type RequestMatchMember struct {
	UserID string `json:"user_id"`
}

// Validate returns error if any field is missing
func (req *RequestMatchMember) Validate() error {
	if req.UserID == "" {
		return errors.New("party member user ID cannot be empty")
	}
	return nil
}

// Server represents a DS server
// currently managed by the service
type Server struct {
	PodName               string         `json:"pod_name"`
	ImageVersion          string         `json:"image_version"`
	Namespace             string         `json:"namespace"`
	IP                    string         `json:"ip"`
	AlternateIPs          []string       `json:"alternate_ips"`
	Port                  int            `json:"port"`
	Protocol              string         `json:"protocol"`
	Ports                 map[string]int `json:"ports"`
	Provider              string         `json:"provider"`
	GameVersion           string         `json:"game_version"`
	StatusText            string         `json:"status"`
	LastUpdate            time.Time      `json:"last_update"`
	SessionID             string         `json:"session_id"`
	Deployment            string         `json:"deployment"`
	Region                string         `json:"region"`
	IsOverrideGameVersion bool           `json:"is_override_game_version"`
	CustomAttribute       string         `json:"custom_attribute"`
}

func (s *Server) String() string {
	return fmt.Sprintf("Server{PodName:%s, ImageVersion: %s, Namespace:%s, IP:%s, AlternateIPs:%v, Port:%d, StatusText:%s, Deployment:%s}",
		s.PodName, s.ImageVersion, s.Namespace, s.IP, s.AlternateIPs, s.Port, s.StatusText, s.Deployment)
}

// Session represents a game session
// currently managed by the service
type Session struct {
	ID      string `json:"id"`
	Region  string `json:"region"`
	*Server `json:"Server"`
}

func (s *Session) String() string {
	return fmt.Sprintf("Session{ID:%s, Region:%s, Server:%v}", s.ID, s.Region, s.Server)
}

// ClaimSessionRequest contains
// request to claim a dedicated server
type ClaimSessionRequest struct {
	SessionID string `json:"session_id"`
	Namespace string `json:"-"`
}

// SessionResponse is the response
// for get server endpoint
type SessionResponse struct {
	Session *Session `json:"session"`
}
