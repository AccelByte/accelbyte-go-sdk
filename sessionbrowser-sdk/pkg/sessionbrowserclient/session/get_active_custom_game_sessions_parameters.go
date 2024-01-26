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

// NewGetActiveCustomGameSessionsParams creates a new GetActiveCustomGameSessionsParams object
// with the default values initialized.
func NewGetActiveCustomGameSessionsParams() *GetActiveCustomGameSessionsParams {
	var (
		limitDefault  = int64(25)
		offsetDefault = int64(0)
	)
	return &GetActiveCustomGameSessionsParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewGetActiveCustomGameSessionsParamsWithTimeout creates a new GetActiveCustomGameSessionsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetActiveCustomGameSessionsParamsWithTimeout(timeout time.Duration) *GetActiveCustomGameSessionsParams {
	var (
		limitDefault  = int64(25)
		offsetDefault = int64(0)
	)
	return &GetActiveCustomGameSessionsParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: timeout,
	}
}

// NewGetActiveCustomGameSessionsParamsWithContext creates a new GetActiveCustomGameSessionsParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetActiveCustomGameSessionsParamsWithContext(ctx context.Context) *GetActiveCustomGameSessionsParams {
	var (
		limitDefault  = int64(25)
		offsetDefault = int64(0)
	)
	return &GetActiveCustomGameSessionsParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		Context: ctx,
	}
}

// NewGetActiveCustomGameSessionsParamsWithHTTPClient creates a new GetActiveCustomGameSessionsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetActiveCustomGameSessionsParamsWithHTTPClient(client *http.Client) *GetActiveCustomGameSessionsParams {
	var (
		limitDefault  = int64(25)
		offsetDefault = int64(0)
	)
	return &GetActiveCustomGameSessionsParams{
		Limit:      &limitDefault,
		Offset:     &offsetDefault,
		HTTPClient: client,
	}
}

/*GetActiveCustomGameSessionsParams contains all the parameters to send to the API endpoint
for the get active custom game sessions operation typically these are written to a http.Request
*/
type GetActiveCustomGameSessionsParams struct {

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

// WithTimeout adds the timeout to the get active custom game sessions params
func (o *GetActiveCustomGameSessionsParams) WithTimeout(timeout time.Duration) *GetActiveCustomGameSessionsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get active custom game sessions params
func (o *GetActiveCustomGameSessionsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get active custom game sessions params
func (o *GetActiveCustomGameSessionsParams) WithContext(ctx context.Context) *GetActiveCustomGameSessionsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get active custom game sessions params
func (o *GetActiveCustomGameSessionsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get active custom game sessions params
func (o *GetActiveCustomGameSessionsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get active custom game sessions params
func (o *GetActiveCustomGameSessionsParams) WithHTTPClient(client *http.Client) *GetActiveCustomGameSessionsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get active custom game sessions params
func (o *GetActiveCustomGameSessionsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get active custom game sessions params
func (o *GetActiveCustomGameSessionsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *GetActiveCustomGameSessionsParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the get active custom game sessions params
func (o *GetActiveCustomGameSessionsParams) WithNamespace(namespace string) *GetActiveCustomGameSessionsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get active custom game sessions params
func (o *GetActiveCustomGameSessionsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithLimit adds the limit to the get active custom game sessions params
func (o *GetActiveCustomGameSessionsParams) WithLimit(limit *int64) *GetActiveCustomGameSessionsParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the get active custom game sessions params
func (o *GetActiveCustomGameSessionsParams) SetLimit(limit *int64) {
	o.Limit = limit
}

// WithOffset adds the offset to the get active custom game sessions params
func (o *GetActiveCustomGameSessionsParams) WithOffset(offset *int64) *GetActiveCustomGameSessionsParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the get active custom game sessions params
func (o *GetActiveCustomGameSessionsParams) SetOffset(offset *int64) {
	o.Offset = offset
}

// WithServerRegion adds the serverRegion to the get active custom game sessions params
func (o *GetActiveCustomGameSessionsParams) WithServerRegion(serverRegion *string) *GetActiveCustomGameSessionsParams {
	o.SetServerRegion(serverRegion)
	return o
}

// SetServerRegion adds the serverRegion to the get active custom game sessions params
func (o *GetActiveCustomGameSessionsParams) SetServerRegion(serverRegion *string) {
	o.ServerRegion = serverRegion
}

// WithSessionID adds the sessionID to the get active custom game sessions params
func (o *GetActiveCustomGameSessionsParams) WithSessionID(sessionID *string) *GetActiveCustomGameSessionsParams {
	o.SetSessionID(sessionID)
	return o
}

// SetSessionID adds the sessionId to the get active custom game sessions params
func (o *GetActiveCustomGameSessionsParams) SetSessionID(sessionID *string) {
	o.SessionID = sessionID
}

// WriteToRequest writes these params to a swagger request
func (o *GetActiveCustomGameSessionsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
