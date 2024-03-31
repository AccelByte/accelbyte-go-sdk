// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package game_session_detail

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"
)

// NewGetPartyDetailParams creates a new GetPartyDetailParams object
// with the default values initialized.
func NewGetPartyDetailParams() *GetPartyDetailParams {
	var ()
	return &GetPartyDetailParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetPartyDetailParamsWithTimeout creates a new GetPartyDetailParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetPartyDetailParamsWithTimeout(timeout time.Duration) *GetPartyDetailParams {
	var ()
	return &GetPartyDetailParams{

		timeout: timeout,
	}
}

// NewGetPartyDetailParamsWithContext creates a new GetPartyDetailParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetPartyDetailParamsWithContext(ctx context.Context) *GetPartyDetailParams {
	var ()
	return &GetPartyDetailParams{

		Context: ctx,
	}
}

// NewGetPartyDetailParamsWithHTTPClient creates a new GetPartyDetailParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetPartyDetailParamsWithHTTPClient(client *http.Client) *GetPartyDetailParams {
	var ()
	return &GetPartyDetailParams{
		HTTPClient: client,
	}
}

/*GetPartyDetailParams contains all the parameters to send to the API endpoint
for the get party detail operation typically these are written to a http.Request
*/
type GetPartyDetailParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace of the game

	*/
	Namespace string
	/*SessionID
	  session ID

	*/
	SessionID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the get party detail params
func (o *GetPartyDetailParams) WithTimeout(timeout time.Duration) *GetPartyDetailParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get party detail params
func (o *GetPartyDetailParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get party detail params
func (o *GetPartyDetailParams) WithContext(ctx context.Context) *GetPartyDetailParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get party detail params
func (o *GetPartyDetailParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get party detail params
func (o *GetPartyDetailParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get party detail params
func (o *GetPartyDetailParams) WithHTTPClient(client *http.Client) *GetPartyDetailParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get party detail params
func (o *GetPartyDetailParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get party detail params
func (o *GetPartyDetailParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *GetPartyDetailParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the get party detail params
func (o *GetPartyDetailParams) WithNamespace(namespace string) *GetPartyDetailParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get party detail params
func (o *GetPartyDetailParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithSessionID adds the sessionID to the get party detail params
func (o *GetPartyDetailParams) WithSessionID(sessionID string) *GetPartyDetailParams {
	o.SetSessionID(sessionID)
	return o
}

// SetSessionID adds the sessionId to the get party detail params
func (o *GetPartyDetailParams) SetSessionID(sessionID string) {
	o.SessionID = sessionID
}

// WriteToRequest writes these params to a swagger request
func (o *GetPartyDetailParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param sessionId
	if err := r.SetPathParam("sessionId", o.SessionID); err != nil {
		return err
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
