// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package admin

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

// NewDeleteServerParams creates a new DeleteServerParams object
// with the default values initialized.
func NewDeleteServerParams() *DeleteServerParams {
	var ()
	return &DeleteServerParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewDeleteServerParamsWithTimeout creates a new DeleteServerParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewDeleteServerParamsWithTimeout(timeout time.Duration) *DeleteServerParams {
	var ()
	return &DeleteServerParams{

		timeout: timeout,
	}
}

// NewDeleteServerParamsWithContext creates a new DeleteServerParams object
// with the default values initialized, and the ability to set a context for a request
func NewDeleteServerParamsWithContext(ctx context.Context) *DeleteServerParams {
	var ()
	return &DeleteServerParams{

		Context: ctx,
	}
}

// NewDeleteServerParamsWithHTTPClient creates a new DeleteServerParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewDeleteServerParamsWithHTTPClient(client *http.Client) *DeleteServerParams {
	var ()
	return &DeleteServerParams{
		HTTPClient: client,
	}
}

/*DeleteServerParams contains all the parameters to send to the API endpoint
for the delete server operation typically these are written to a http.Request
*/
type DeleteServerParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Region
	  region of the QoS

	*/
	Region string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the delete server params
func (o *DeleteServerParams) WithTimeout(timeout time.Duration) *DeleteServerParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the delete server params
func (o *DeleteServerParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the delete server params
func (o *DeleteServerParams) WithContext(ctx context.Context) *DeleteServerParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the delete server params
func (o *DeleteServerParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the delete server params
func (o *DeleteServerParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the delete server params
func (o *DeleteServerParams) WithHTTPClient(client *http.Client) *DeleteServerParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the delete server params
func (o *DeleteServerParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the delete server params
func (o *DeleteServerParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithRegion adds the region to the delete server params
func (o *DeleteServerParams) WithRegion(region string) *DeleteServerParams {
	o.SetRegion(region)
	return o
}

// SetRegion adds the region to the delete server params
func (o *DeleteServerParams) SetRegion(region string) {
	o.Region = region
}

// WriteToRequest writes these params to a swagger request
func (o *DeleteServerParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param region
	if err := r.SetPathParam("region", o.Region); err != nil {
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
