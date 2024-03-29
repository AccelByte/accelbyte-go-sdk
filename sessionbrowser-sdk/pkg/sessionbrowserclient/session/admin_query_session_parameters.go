// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package session

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
)

// NewAdminQuerySessionParams creates a new AdminQuerySessionParams object
// with the default values initialized.
func NewAdminQuerySessionParams() *AdminQuerySessionParams {
	var (
		limitDefault  = int64(25)
		offsetDefault = int64(0)
	)
	return &AdminQuerySessionParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminQuerySessionParamsWithTimeout creates a new AdminQuerySessionParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminQuerySessionParamsWithTimeout(timeout time.Duration) *AdminQuerySessionParams {
	var (
		limitDefault  = int64(25)
		offsetDefault = int64(0)
	)
	return &AdminQuerySessionParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: timeout,
	}
}

// NewAdminQuerySessionParamsWithContext creates a new AdminQuerySessionParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminQuerySessionParamsWithContext(ctx context.Context) *AdminQuerySessionParams {
	var (
		limitDefault  = int64(25)
		offsetDefault = int64(0)
	)
	return &AdminQuerySessionParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		Context: ctx,
	}
}

// NewAdminQuerySessionParamsWithHTTPClient creates a new AdminQuerySessionParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminQuerySessionParamsWithHTTPClient(client *http.Client) *AdminQuerySessionParams {
	var (
		limitDefault  = int64(25)
		offsetDefault = int64(0)
	)
	return &AdminQuerySessionParams{
		Limit:      &limitDefault,
		Offset:     &offsetDefault,
		HTTPClient: client,
	}
}

/*AdminQuerySessionParams contains all the parameters to send to the API endpoint
for the admin query session operation typically these are written to a http.Request
*/
type AdminQuerySessionParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace

	*/
	Namespace string
	/*GameMode
	  Game mode of the session to query

	*/
	GameMode *string
	/*GameVersion
	  Game version of the session to query

	*/
	GameVersion *string
	/*Joinable
	  filter session if joinable or not, accept 'true' or 'false'

	*/
	Joinable *string
	/*Limit
	  max item to be returned

	*/
	Limit *int64
	/*MatchExist
	  filter session by match existence, accept 'true' or 'false'

	*/
	MatchExist *string
	/*MatchID
	  filter session by matchmaking ID

	*/
	MatchID *string
	/*Offset
	  skip some item(s), offset=3, will skip 3 first items

	*/
	Offset *int64
	/*ServerStatus
	  filter session by server status (only for dedicated), accept CREATING,READY,BUSY,REMOVING,UNREACHABLE

	*/
	ServerStatus *string
	/*UserID
	  Owner of the P2P session. Dedicated server does not have user_id

	*/
	UserID *string
	/*SessionType
	  Session type to query, value is 'p2p' or 'dedicated'

	*/
	SessionType string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin query session params
func (o *AdminQuerySessionParams) WithTimeout(timeout time.Duration) *AdminQuerySessionParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin query session params
func (o *AdminQuerySessionParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin query session params
func (o *AdminQuerySessionParams) WithContext(ctx context.Context) *AdminQuerySessionParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin query session params
func (o *AdminQuerySessionParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin query session params
func (o *AdminQuerySessionParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin query session params
func (o *AdminQuerySessionParams) WithHTTPClient(client *http.Client) *AdminQuerySessionParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin query session params
func (o *AdminQuerySessionParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin query session params
func (o *AdminQuerySessionParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminQuerySessionParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the admin query session params
func (o *AdminQuerySessionParams) WithNamespace(namespace string) *AdminQuerySessionParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin query session params
func (o *AdminQuerySessionParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithGameMode adds the gameMode to the admin query session params
func (o *AdminQuerySessionParams) WithGameMode(gameMode *string) *AdminQuerySessionParams {
	o.SetGameMode(gameMode)
	return o
}

// SetGameMode adds the gameMode to the admin query session params
func (o *AdminQuerySessionParams) SetGameMode(gameMode *string) {
	o.GameMode = gameMode
}

// WithGameVersion adds the gameVersion to the admin query session params
func (o *AdminQuerySessionParams) WithGameVersion(gameVersion *string) *AdminQuerySessionParams {
	o.SetGameVersion(gameVersion)
	return o
}

// SetGameVersion adds the gameVersion to the admin query session params
func (o *AdminQuerySessionParams) SetGameVersion(gameVersion *string) {
	o.GameVersion = gameVersion
}

// WithJoinable adds the joinable to the admin query session params
func (o *AdminQuerySessionParams) WithJoinable(joinable *string) *AdminQuerySessionParams {
	o.SetJoinable(joinable)
	return o
}

// SetJoinable adds the joinable to the admin query session params
func (o *AdminQuerySessionParams) SetJoinable(joinable *string) {
	o.Joinable = joinable
}

// WithLimit adds the limit to the admin query session params
func (o *AdminQuerySessionParams) WithLimit(limit *int64) *AdminQuerySessionParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the admin query session params
func (o *AdminQuerySessionParams) SetLimit(limit *int64) {
	o.Limit = limit
}

// WithMatchExist adds the matchExist to the admin query session params
func (o *AdminQuerySessionParams) WithMatchExist(matchExist *string) *AdminQuerySessionParams {
	o.SetMatchExist(matchExist)
	return o
}

// SetMatchExist adds the matchExist to the admin query session params
func (o *AdminQuerySessionParams) SetMatchExist(matchExist *string) {
	o.MatchExist = matchExist
}

// WithMatchID adds the matchID to the admin query session params
func (o *AdminQuerySessionParams) WithMatchID(matchID *string) *AdminQuerySessionParams {
	o.SetMatchID(matchID)
	return o
}

// SetMatchID adds the matchId to the admin query session params
func (o *AdminQuerySessionParams) SetMatchID(matchID *string) {
	o.MatchID = matchID
}

// WithOffset adds the offset to the admin query session params
func (o *AdminQuerySessionParams) WithOffset(offset *int64) *AdminQuerySessionParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the admin query session params
func (o *AdminQuerySessionParams) SetOffset(offset *int64) {
	o.Offset = offset
}

// WithServerStatus adds the serverStatus to the admin query session params
func (o *AdminQuerySessionParams) WithServerStatus(serverStatus *string) *AdminQuerySessionParams {
	o.SetServerStatus(serverStatus)
	return o
}

// SetServerStatus adds the serverStatus to the admin query session params
func (o *AdminQuerySessionParams) SetServerStatus(serverStatus *string) {
	o.ServerStatus = serverStatus
}

// WithUserID adds the userID to the admin query session params
func (o *AdminQuerySessionParams) WithUserID(userID *string) *AdminQuerySessionParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the admin query session params
func (o *AdminQuerySessionParams) SetUserID(userID *string) {
	o.UserID = userID
}

// WithSessionType adds the sessionType to the admin query session params
func (o *AdminQuerySessionParams) WithSessionType(sessionType string) *AdminQuerySessionParams {
	o.SetSessionType(sessionType)
	return o
}

// SetSessionType adds the sessionType to the admin query session params
func (o *AdminQuerySessionParams) SetSessionType(sessionType string) {
	o.SessionType = sessionType
}

// WriteToRequest writes these params to a swagger request
func (o *AdminQuerySessionParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	if o.GameMode != nil {

		// query param game_mode
		var qrGameMode string
		if o.GameMode != nil {
			qrGameMode = *o.GameMode
		}
		qGameMode := qrGameMode
		if qGameMode != "" {
			if err := r.SetQueryParam("game_mode", qGameMode); err != nil {
				return err
			}
		}

	}

	if o.GameVersion != nil {

		// query param game_version
		var qrGameVersion string
		if o.GameVersion != nil {
			qrGameVersion = *o.GameVersion
		}
		qGameVersion := qrGameVersion
		if qGameVersion != "" {
			if err := r.SetQueryParam("game_version", qGameVersion); err != nil {
				return err
			}
		}

	}

	if o.Joinable != nil {

		// query param joinable
		var qrJoinable string
		if o.Joinable != nil {
			qrJoinable = *o.Joinable
		}
		qJoinable := qrJoinable
		if qJoinable != "" {
			if err := r.SetQueryParam("joinable", qJoinable); err != nil {
				return err
			}
		}

	}

	if o.Limit != nil {

		// query param limit
		var qrLimit int64
		if o.Limit != nil {
			qrLimit = *o.Limit
		}
		qLimit := swag.FormatInt64(qrLimit)
		if qLimit != "" {
			if err := r.SetQueryParam("limit", qLimit); err != nil {
				return err
			}
		}

	}

	if o.MatchExist != nil {

		// query param match_exist
		var qrMatchExist string
		if o.MatchExist != nil {
			qrMatchExist = *o.MatchExist
		}
		qMatchExist := qrMatchExist
		if qMatchExist != "" {
			if err := r.SetQueryParam("match_exist", qMatchExist); err != nil {
				return err
			}
		}

	}

	if o.MatchID != nil {

		// query param match_id
		var qrMatchID string
		if o.MatchID != nil {
			qrMatchID = *o.MatchID
		}
		qMatchID := qrMatchID
		if qMatchID != "" {
			if err := r.SetQueryParam("match_id", qMatchID); err != nil {
				return err
			}
		}

	}

	if o.Offset != nil {

		// query param offset
		var qrOffset int64
		if o.Offset != nil {
			qrOffset = *o.Offset
		}
		qOffset := swag.FormatInt64(qrOffset)
		if qOffset != "" {
			if err := r.SetQueryParam("offset", qOffset); err != nil {
				return err
			}
		}

	}

	if o.ServerStatus != nil {

		// query param server_status
		var qrServerStatus string
		if o.ServerStatus != nil {
			qrServerStatus = *o.ServerStatus
		}
		qServerStatus := qrServerStatus
		if qServerStatus != "" {
			if err := r.SetQueryParam("server_status", qServerStatus); err != nil {
				return err
			}
		}

	}

	if o.UserID != nil {

		// query param user_id
		var qrUserID string
		if o.UserID != nil {
			qrUserID = *o.UserID
		}
		qUserID := qrUserID
		if qUserID != "" {
			if err := r.SetQueryParam("user_id", qUserID); err != nil {
				return err
			}
		}

	}

	// query param session_type
	qrSessionType := o.SessionType
	qSessionType := qrSessionType
	if qSessionType != "" {
		if err := r.SetQueryParam("session_type", qSessionType); err != nil {
			return err
		}
	}

	// setting the default header value
	if err := r.SetHeaderParam("User-Agent", utils.UserAgentGen()); err != nil {
		return err
	}

	if err := r.SetHeaderParam("X-Amzn-Trace-Id", utils.AmazonTraceIDGen()); err != nil {
		return err
	}

	if o.XFlightId == nil {
		if err := r.SetHeaderParam("X-Flight-Id", utils.GetDefaultFlightID().Value); err != nil {
			return err
		}
	} else {
		if err := r.SetHeaderParam("X-Flight-Id", *o.XFlightId); err != nil {
			return err
		}
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
