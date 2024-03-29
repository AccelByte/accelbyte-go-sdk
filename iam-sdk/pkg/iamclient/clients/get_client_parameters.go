// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package clients

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

// NewGetClientParams creates a new GetClientParams object
// with the default values initialized.
func NewGetClientParams() *GetClientParams {
	var ()
	return &GetClientParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetClientParamsWithTimeout creates a new GetClientParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetClientParamsWithTimeout(timeout time.Duration) *GetClientParams {
	var ()
	return &GetClientParams{

		timeout: timeout,
	}
}

// NewGetClientParamsWithContext creates a new GetClientParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetClientParamsWithContext(ctx context.Context) *GetClientParams {
	var ()
	return &GetClientParams{

		Context: ctx,
	}
}

// NewGetClientParamsWithHTTPClient creates a new GetClientParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetClientParamsWithHTTPClient(client *http.Client) *GetClientParams {
	var ()
	return &GetClientParams{
		HTTPClient: client,
	}
}

/*GetClientParams contains all the parameters to send to the API endpoint
for the get client operation typically these are written to a http.Request
*/
type GetClientParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*ClientID
	  Client ID

	*/
	ClientID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the get client params
func (o *GetClientParams) WithTimeout(timeout time.Duration) *GetClientParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get client params
func (o *GetClientParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get client params
func (o *GetClientParams) WithContext(ctx context.Context) *GetClientParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get client params
func (o *GetClientParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get client params
func (o *GetClientParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get client params
func (o *GetClientParams) WithHTTPClient(client *http.Client) *GetClientParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get client params
func (o *GetClientParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get client params
func (o *GetClientParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *GetClientParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithClientID adds the clientID to the get client params
func (o *GetClientParams) WithClientID(clientID string) *GetClientParams {
	o.SetClientID(clientID)
	return o
}

// SetClientID adds the clientId to the get client params
func (o *GetClientParams) SetClientID(clientID string) {
	o.ClientID = clientID
}

// WriteToRequest writes these params to a swagger request
func (o *GetClientParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param clientId
	if err := r.SetPathParam("clientId", o.ClientID); err != nil {
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
