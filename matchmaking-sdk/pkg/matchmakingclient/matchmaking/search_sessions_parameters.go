// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package matchmaking

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

// NewSearchSessionsParams creates a new SearchSessionsParams object
// with the default values initialized.
func NewSearchSessionsParams() *SearchSessionsParams {
	var ()
	return &SearchSessionsParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewSearchSessionsParamsWithTimeout creates a new SearchSessionsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewSearchSessionsParamsWithTimeout(timeout time.Duration) *SearchSessionsParams {
	var ()
	return &SearchSessionsParams{

		timeout: timeout,
	}
}

// NewSearchSessionsParamsWithContext creates a new SearchSessionsParams object
// with the default values initialized, and the ability to set a context for a request
func NewSearchSessionsParamsWithContext(ctx context.Context) *SearchSessionsParams {
	var ()
	return &SearchSessionsParams{

		Context: ctx,
	}
}

// NewSearchSessionsParamsWithHTTPClient creates a new SearchSessionsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewSearchSessionsParamsWithHTTPClient(client *http.Client) *SearchSessionsParams {
	var ()
	return &SearchSessionsParams{
		HTTPClient: client,
	}
}

/*SearchSessionsParams contains all the parameters to send to the API endpoint
for the search sessions operation typically these are written to a http.Request
*/
type SearchSessionsParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace of the game, only accept alphabet and numeric

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

// WithTimeout adds the timeout to the search sessions params
func (o *SearchSessionsParams) WithTimeout(timeout time.Duration) *SearchSessionsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the search sessions params
func (o *SearchSessionsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the search sessions params
func (o *SearchSessionsParams) WithContext(ctx context.Context) *SearchSessionsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the search sessions params
func (o *SearchSessionsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the search sessions params
func (o *SearchSessionsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the search sessions params
func (o *SearchSessionsParams) WithHTTPClient(client *http.Client) *SearchSessionsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the search sessions params
func (o *SearchSessionsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the search sessions params
func (o *SearchSessionsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *SearchSessionsParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the search sessions params
func (o *SearchSessionsParams) WithNamespace(namespace string) *SearchSessionsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the search sessions params
func (o *SearchSessionsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithChannel adds the channel to the search sessions params
func (o *SearchSessionsParams) WithChannel(channel *string) *SearchSessionsParams {
	o.SetChannel(channel)
	return o
}

// SetChannel adds the channel to the search sessions params
func (o *SearchSessionsParams) SetChannel(channel *string) {
	o.Channel = channel
}

// WithDeleted adds the deleted to the search sessions params
func (o *SearchSessionsParams) WithDeleted(deleted *bool) *SearchSessionsParams {
	o.SetDeleted(deleted)
	return o
}

// SetDeleted adds the deleted to the search sessions params
func (o *SearchSessionsParams) SetDeleted(deleted *bool) {
	o.Deleted = deleted
}

// WithMatchID adds the matchID to the search sessions params
func (o *SearchSessionsParams) WithMatchID(matchID *string) *SearchSessionsParams {
	o.SetMatchID(matchID)
	return o
}

// SetMatchID adds the matchId to the search sessions params
func (o *SearchSessionsParams) SetMatchID(matchID *string) {
	o.MatchID = matchID
}

// WithPartyID adds the partyID to the search sessions params
func (o *SearchSessionsParams) WithPartyID(partyID *string) *SearchSessionsParams {
	o.SetPartyID(partyID)
	return o
}

// SetPartyID adds the partyId to the search sessions params
func (o *SearchSessionsParams) SetPartyID(partyID *string) {
	o.PartyID = partyID
}

// WithUserID adds the userID to the search sessions params
func (o *SearchSessionsParams) WithUserID(userID *string) *SearchSessionsParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the search sessions params
func (o *SearchSessionsParams) SetUserID(userID *string) {
	o.UserID = userID
}

// WithLimit adds the limit to the search sessions params
func (o *SearchSessionsParams) WithLimit(limit int64) *SearchSessionsParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the search sessions params
func (o *SearchSessionsParams) SetLimit(limit int64) {
	o.Limit = limit
}

// WithOffset adds the offset to the search sessions params
func (o *SearchSessionsParams) WithOffset(offset int64) *SearchSessionsParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the search sessions params
func (o *SearchSessionsParams) SetOffset(offset int64) {
	o.Offset = offset
}

// WriteToRequest writes these params to a swagger request
func (o *SearchSessionsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
