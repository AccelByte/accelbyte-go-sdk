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

// NewAdminSearchSessionsV2Params creates a new AdminSearchSessionsV2Params object
// with the default values initialized.
func NewAdminSearchSessionsV2Params() *AdminSearchSessionsV2Params {
	var ()
	return &AdminSearchSessionsV2Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminSearchSessionsV2ParamsWithTimeout creates a new AdminSearchSessionsV2Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminSearchSessionsV2ParamsWithTimeout(timeout time.Duration) *AdminSearchSessionsV2Params {
	var ()
	return &AdminSearchSessionsV2Params{

		timeout: timeout,
	}
}

// NewAdminSearchSessionsV2ParamsWithContext creates a new AdminSearchSessionsV2Params object
// with the default values initialized, and the ability to set a context for a request
func NewAdminSearchSessionsV2ParamsWithContext(ctx context.Context) *AdminSearchSessionsV2Params {
	var ()
	return &AdminSearchSessionsV2Params{

		Context: ctx,
	}
}

// NewAdminSearchSessionsV2ParamsWithHTTPClient creates a new AdminSearchSessionsV2Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminSearchSessionsV2ParamsWithHTTPClient(client *http.Client) *AdminSearchSessionsV2Params {
	var ()
	return &AdminSearchSessionsV2Params{
		HTTPClient: client,
	}
}

/*AdminSearchSessionsV2Params contains all the parameters to send to the API endpoint
for the admin search sessions v2 operation typically these are written to a http.Request
*/
type AdminSearchSessionsV2Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace

	*/
	Namespace string
	/*Channel
	  ID of the channel

	*/
	Channel *string
	/*Deleted
	  only deleted session

	*/
	Deleted *bool
	/*MatchID
	  ID of the match session

	*/
	MatchID *string
	/*PartyID
	  ID of the party

	*/
	PartyID *string
	/*SessionType
	  Type of the session, value must be 'p2p' or 'dedicated'

	*/
	SessionType *string
	/*Status
	  Status of the session, value must be 'active' or 'deleted'. Only work with p2p session type

	*/
	Status *string
	/*UserID
	  ID of the user

	*/
	UserID *string
	/*Limit
	  limit

	*/
	Limit int64
	/*Offset
	  offset

	*/
	Offset int64

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin search sessions v2 params
func (o *AdminSearchSessionsV2Params) WithTimeout(timeout time.Duration) *AdminSearchSessionsV2Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin search sessions v2 params
func (o *AdminSearchSessionsV2Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin search sessions v2 params
func (o *AdminSearchSessionsV2Params) WithContext(ctx context.Context) *AdminSearchSessionsV2Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin search sessions v2 params
func (o *AdminSearchSessionsV2Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin search sessions v2 params
func (o *AdminSearchSessionsV2Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin search sessions v2 params
func (o *AdminSearchSessionsV2Params) WithHTTPClient(client *http.Client) *AdminSearchSessionsV2Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin search sessions v2 params
func (o *AdminSearchSessionsV2Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin search sessions v2 params
func (o *AdminSearchSessionsV2Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminSearchSessionsV2Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the admin search sessions v2 params
func (o *AdminSearchSessionsV2Params) WithNamespace(namespace string) *AdminSearchSessionsV2Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin search sessions v2 params
func (o *AdminSearchSessionsV2Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithChannel adds the channel to the admin search sessions v2 params
func (o *AdminSearchSessionsV2Params) WithChannel(channel *string) *AdminSearchSessionsV2Params {
	o.SetChannel(channel)
	return o
}

// SetChannel adds the channel to the admin search sessions v2 params
func (o *AdminSearchSessionsV2Params) SetChannel(channel *string) {
	o.Channel = channel
}

// WithDeleted adds the deleted to the admin search sessions v2 params
func (o *AdminSearchSessionsV2Params) WithDeleted(deleted *bool) *AdminSearchSessionsV2Params {
	o.SetDeleted(deleted)
	return o
}

// SetDeleted adds the deleted to the admin search sessions v2 params
func (o *AdminSearchSessionsV2Params) SetDeleted(deleted *bool) {
	o.Deleted = deleted
}

// WithMatchID adds the matchID to the admin search sessions v2 params
func (o *AdminSearchSessionsV2Params) WithMatchID(matchID *string) *AdminSearchSessionsV2Params {
	o.SetMatchID(matchID)
	return o
}

// SetMatchID adds the matchId to the admin search sessions v2 params
func (o *AdminSearchSessionsV2Params) SetMatchID(matchID *string) {
	o.MatchID = matchID
}

// WithPartyID adds the partyID to the admin search sessions v2 params
func (o *AdminSearchSessionsV2Params) WithPartyID(partyID *string) *AdminSearchSessionsV2Params {
	o.SetPartyID(partyID)
	return o
}

// SetPartyID adds the partyId to the admin search sessions v2 params
func (o *AdminSearchSessionsV2Params) SetPartyID(partyID *string) {
	o.PartyID = partyID
}

// WithSessionType adds the sessionType to the admin search sessions v2 params
func (o *AdminSearchSessionsV2Params) WithSessionType(sessionType *string) *AdminSearchSessionsV2Params {
	o.SetSessionType(sessionType)
	return o
}

// SetSessionType adds the sessionType to the admin search sessions v2 params
func (o *AdminSearchSessionsV2Params) SetSessionType(sessionType *string) {
	o.SessionType = sessionType
}

// WithStatus adds the status to the admin search sessions v2 params
func (o *AdminSearchSessionsV2Params) WithStatus(status *string) *AdminSearchSessionsV2Params {
	o.SetStatus(status)
	return o
}

// SetStatus adds the status to the admin search sessions v2 params
func (o *AdminSearchSessionsV2Params) SetStatus(status *string) {
	o.Status = status
}

// WithUserID adds the userID to the admin search sessions v2 params
func (o *AdminSearchSessionsV2Params) WithUserID(userID *string) *AdminSearchSessionsV2Params {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the admin search sessions v2 params
func (o *AdminSearchSessionsV2Params) SetUserID(userID *string) {
	o.UserID = userID
}

// WithLimit adds the limit to the admin search sessions v2 params
func (o *AdminSearchSessionsV2Params) WithLimit(limit int64) *AdminSearchSessionsV2Params {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the admin search sessions v2 params
func (o *AdminSearchSessionsV2Params) SetLimit(limit int64) {
	o.Limit = limit
}

// WithOffset adds the offset to the admin search sessions v2 params
func (o *AdminSearchSessionsV2Params) WithOffset(offset int64) *AdminSearchSessionsV2Params {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the admin search sessions v2 params
func (o *AdminSearchSessionsV2Params) SetOffset(offset int64) {
	o.Offset = offset
}

// WriteToRequest writes these params to a swagger request
func (o *AdminSearchSessionsV2Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	if o.Channel != nil {

		// query param channel
		var qrChannel string
		if o.Channel != nil {
			qrChannel = *o.Channel
		}
		qChannel := qrChannel
		if qChannel != "" {
			if err := r.SetQueryParam("channel", qChannel); err != nil {
				return err
			}
		}

	}

	if o.Deleted != nil {

		// query param deleted
		var qrDeleted bool
		if o.Deleted != nil {
			qrDeleted = *o.Deleted
		}
		qDeleted := swag.FormatBool(qrDeleted)
		if qDeleted != "" {
			if err := r.SetQueryParam("deleted", qDeleted); err != nil {
				return err
			}
		}

	}

	if o.MatchID != nil {

		// query param matchID
		var qrMatchID string
		if o.MatchID != nil {
			qrMatchID = *o.MatchID
		}
		qMatchID := qrMatchID
		if qMatchID != "" {
			if err := r.SetQueryParam("matchID", qMatchID); err != nil {
				return err
			}
		}

	}

	if o.PartyID != nil {

		// query param partyID
		var qrPartyID string
		if o.PartyID != nil {
			qrPartyID = *o.PartyID
		}
		qPartyID := qrPartyID
		if qPartyID != "" {
			if err := r.SetQueryParam("partyID", qPartyID); err != nil {
				return err
			}
		}

	}

	if o.SessionType != nil {

		// query param sessionType
		var qrSessionType string
		if o.SessionType != nil {
			qrSessionType = *o.SessionType
		}
		qSessionType := qrSessionType
		if qSessionType != "" {
			if err := r.SetQueryParam("sessionType", qSessionType); err != nil {
				return err
			}
		}

	}

	if o.Status != nil {

		// query param status
		var qrStatus string
		if o.Status != nil {
			qrStatus = *o.Status
		}
		qStatus := qrStatus
		if qStatus != "" {
			if err := r.SetQueryParam("status", qStatus); err != nil {
				return err
			}
		}

	}

	if o.UserID != nil {

		// query param userID
		var qrUserID string
		if o.UserID != nil {
			qrUserID = *o.UserID
		}
		qUserID := qrUserID
		if qUserID != "" {
			if err := r.SetQueryParam("userID", qUserID); err != nil {
				return err
			}
		}

	}

	// query param limit
	qrLimit := o.Limit
	qLimit := swag.FormatInt64(qrLimit)
	if qLimit != "" {
		if err := r.SetQueryParam("limit", qLimit); err != nil {
			return err
		}
	}

	// query param offset
	qrOffset := o.Offset
	qOffset := swag.FormatInt64(qrOffset)
	if qOffset != "" {
		if err := r.SetQueryParam("offset", qOffset); err != nil {
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
