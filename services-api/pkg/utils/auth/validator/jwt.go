// Copyright (c) 2023 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package validator

import (
	"time"

	"github.com/AccelByte/go-jose/jwt"
)

type Permission struct {
	Resource        string
	Action          int
	ScheduledAction int      `json:"SchedAction,omitempty"`
	CronSchedule    string   `json:"SchedCron,omitempty"`
	RangeSchedule   []string `json:"SchedRange,omitempty"`
}

// Role holds info about a user role.
type Role struct {
	RoleID      string `json:"RoleId"`
	RoleName    string
	Permissions []Permission
}

type NamespaceRole struct {
	RoleID    string `json:"roleId"`
	Namespace string `json:"namespace"`
}

// JWTClaims holds data stored in a JWT access token with additional Justice Flags field
type JWTClaims struct {
	Namespace       string          `json:"namespace"`
	DisplayName     string          `json:"display_name"`
	Roles           []string        `json:"roles"`
	NamespaceRoles  []NamespaceRole `json:"namespace_roles"`
	Permissions     []Permission    `json:"permissions"`
	Bans            []JWTBan        `json:"bans"`
	JusticeFlags    int             `json:"jflgs"`
	Scope           string          `json:"scope"`
	Country         string          `json:"country"`
	ClientID        string          `json:"client_id"`
	IsComply        bool            `json:"is_comply"`
	StudioNamespace string          `json:"studio_namespace,omitempty"`
	jwt.Claims
}

// JWTBan holds information about ban record in JWT
type JWTBan struct {
	Ban     string    `json:"Ban"`
	EndDate time.Time `json:"EndDate"`
}

// Validate checks if the JWT is still valid
func (c *JWTClaims) Validate() error {
	return c.Claims.Validate(jwt.Expected{
		Time: time.Now().UTC(),
	})
}
