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

// NewDeleteClientParams creates a new DeleteClientParams object
// with the default values initialized.
func NewDeleteClientParams() *DeleteClientParams {
	var ()
	return &DeleteClientParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewDeleteClientParamsWithTimeout creates a new DeleteClientParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewDeleteClientParamsWithTimeout(timeout time.Duration) *DeleteClientParams {
	var ()
	return &DeleteClientParams{

		timeout: timeout,
	}
}

// NewDeleteClientParamsWithContext creates a new DeleteClientParams object
// with the default values initialized, and the ability to set a context for a request
func NewDeleteClientParamsWithContext(ctx context.Context) *DeleteClientParams {
	var ()
	return &DeleteClientParams{

		Context: ctx,
	}
}

// NewDeleteClientParamsWithHTTPClient creates a new DeleteClientParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewDeleteClientParamsWithHTTPClient(client *http.Client) *DeleteClientParams {
	var ()
	return &DeleteClientParams{
		HTTPClient: client,
	}
}

/*DeleteClientParams contains all the parameters to send to the API endpoint
for the delete client operation typically these are written to a http.Request
*/
type DeleteClientParams struct {

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
}

// WithTimeout adds the timeout to the delete client params
func (o *DeleteClientParams) WithTimeout(timeout time.Duration) *DeleteClientParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the delete client params
func (o *DeleteClientParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the delete client params
func (o *DeleteClientParams) WithContext(ctx context.Context) *DeleteClientParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the delete client params
func (o *DeleteClientParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the delete client params
func (o *DeleteClientParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the delete client params
func (o *DeleteClientParams) WithHTTPClient(client *http.Client) *DeleteClientParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the delete client params
func (o *DeleteClientParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the delete client params
func (o *DeleteClientParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithClientID adds the clientID to the delete client params
func (o *DeleteClientParams) WithClientID(clientID string) *DeleteClientParams {
	o.SetClientID(clientID)
	return o
}

// SetClientID adds the clientId to the delete client params
func (o *DeleteClientParams) SetClientID(clientID string) {
	o.ClientID = clientID
}

// WriteToRequest writes these params to a swagger request
func (o *DeleteClientParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
