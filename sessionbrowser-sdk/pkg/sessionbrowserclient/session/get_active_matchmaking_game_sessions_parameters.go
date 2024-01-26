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

// NewGetActiveMatchmakingGameSessionsParams creates a new GetActiveMatchmakingGameSessionsParams object
// with the default values initialized.
func NewGetActiveMatchmakingGameSessionsParams() *GetActiveMatchmakingGameSessionsParams {
	var (
		limitDefault  = int64(25)
		offsetDefault = int64(0)
	)
	return &GetActiveMatchmakingGameSessionsParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewGetActiveMatchmakingGameSessionsParamsWithTimeout creates a new GetActiveMatchmakingGameSessionsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetActiveMatchmakingGameSessionsParamsWithTimeout(timeout time.Duration) *GetActiveMatchmakingGameSessionsParams {
	var (
		limitDefault  = int64(25)
		offsetDefault = int64(0)
	)
	return &GetActiveMatchmakingGameSessionsParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: timeout,
	}
}

// NewGetActiveMatchmakingGameSessionsParamsWithContext creates a new GetActiveMatchmakingGameSessionsParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetActiveMatchmakingGameSessionsParamsWithContext(ctx context.Context) *GetActiveMatchmakingGameSessionsParams {
	var (
		limitDefault  = int64(25)
		offsetDefault = int64(0)
	)
	return &GetActiveMatchmakingGameSessionsParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		Context: ctx,
	}
}

// NewGetActiveMatchmakingGameSessionsParamsWithHTTPClient creates a new GetActiveMatchmakingGameSessionsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetActiveMatchmakingGameSessionsParamsWithHTTPClient(client *http.Client) *GetActiveMatchmakingGameSessionsParams {
	var (
		limitDefault  = int64(25)
		offsetDefault = int64(0)
	)
	return &GetActiveMatchmakingGameSessionsParams{
		Limit:      &limitDefault,
		Offset:     &offsetDefault,
		HTTPClient: client,
	}
}

/*GetActiveMatchmakingGameSessionsParams contains all the parameters to send to the API endpoint
for the get active matchmaking game sessions operation typically these are written to a http.Request
*/
type GetActiveMatchmakingGameSessionsParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace

	*/
	Namespace string
	/*Limit
	  max item to be returned

	*/
	Limit *int64
	/*MatchID
	  matchmaking ID

	*/
	MatchID *string
	/*Offset
	  skip some item(s), offset=3, will skip 3 first items

	*/
	Offset *int64
	/*ServerRegion
	  server region

	*/
	ServerRegion *string
	/*SessionID
	  game session ID

	*/
	SessionID *string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the get active matchmaking game sessions params
func (o *GetActiveMatchmakingGameSessionsParams) WithTimeout(timeout time.Duration) *GetActiveMatchmakingGameSessionsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get active matchmaking game sessions params
func (o *GetActiveMatchmakingGameSessionsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get active matchmaking game sessions params
func (o *GetActiveMatchmakingGameSessionsParams) WithContext(ctx context.Context) *GetActiveMatchmakingGameSessionsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get active matchmaking game sessions params
func (o *GetActiveMatchmakingGameSessionsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get active matchmaking game sessions params
func (o *GetActiveMatchmakingGameSessionsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get active matchmaking game sessions params
func (o *GetActiveMatchmakingGameSessionsParams) WithHTTPClient(client *http.Client) *GetActiveMatchmakingGameSessionsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get active matchmaking game sessions params
func (o *GetActiveMatchmakingGameSessionsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get active matchmaking game sessions params
func (o *GetActiveMatchmakingGameSessionsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *GetActiveMatchmakingGameSessionsParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the get active matchmaking game sessions params
func (o *GetActiveMatchmakingGameSessionsParams) WithNamespace(namespace string) *GetActiveMatchmakingGameSessionsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get active matchmaking game sessions params
func (o *GetActiveMatchmakingGameSessionsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithLimit adds the limit to the get active matchmaking game sessions params
func (o *GetActiveMatchmakingGameSessionsParams) WithLimit(limit *int64) *GetActiveMatchmakingGameSessionsParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the get active matchmaking game sessions params
func (o *GetActiveMatchmakingGameSessionsParams) SetLimit(limit *int64) {
	o.Limit = limit
}

// WithMatchID adds the matchID to the get active matchmaking game sessions params
func (o *GetActiveMatchmakingGameSessionsParams) WithMatchID(matchID *string) *GetActiveMatchmakingGameSessionsParams {
	o.SetMatchID(matchID)
	return o
}

// SetMatchID adds the matchId to the get active matchmaking game sessions params
func (o *GetActiveMatchmakingGameSessionsParams) SetMatchID(matchID *string) {
	o.MatchID = matchID
}

// WithOffset adds the offset to the get active matchmaking game sessions params
func (o *GetActiveMatchmakingGameSessionsParams) WithOffset(offset *int64) *GetActiveMatchmakingGameSessionsParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the get active matchmaking game sessions params
func (o *GetActiveMatchmakingGameSessionsParams) SetOffset(offset *int64) {
	o.Offset = offset
}

// WithServerRegion adds the serverRegion to the get active matchmaking game sessions params
func (o *GetActiveMatchmakingGameSessionsParams) WithServerRegion(serverRegion *string) *GetActiveMatchmakingGameSessionsParams {
	o.SetServerRegion(serverRegion)
	return o
}

// SetServerRegion adds the serverRegion to the get active matchmaking game sessions params
func (o *GetActiveMatchmakingGameSessionsParams) SetServerRegion(serverRegion *string) {
	o.ServerRegion = serverRegion
}

// WithSessionID adds the sessionID to the get active matchmaking game sessions params
func (o *GetActiveMatchmakingGameSessionsParams) WithSessionID(sessionID *string) *GetActiveMatchmakingGameSessionsParams {
	o.SetSessionID(sessionID)
	return o
}

// SetSessionID adds the sessionId to the get active matchmaking game sessions params
func (o *GetActiveMatchmakingGameSessionsParams) SetSessionID(sessionID *string) {
	o.SessionID = sessionID
}

// WriteToRequest writes these params to a swagger request
func (o *GetActiveMatchmakingGameSessionsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
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

	if o.ServerRegion != nil {

		// query param server_region
		var qrServerRegion string
		if o.ServerRegion != nil {
			qrServerRegion = *o.ServerRegion
		}
		qServerRegion := qrServerRegion
		if qServerRegion != "" {
			if err := r.SetQueryParam("server_region", qServerRegion); err != nil {
				return err
			}
		}

	}

	if o.SessionID != nil {

		// query param session_id
		var qrSessionID string
		if o.SessionID != nil {
			qrSessionID = *o.SessionID
		}
		qSessionID := qrSessionID
		if qSessionID != "" {
			if err := r.SetQueryParam("session_id", qSessionID); err != nil {
				return err
			}
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
