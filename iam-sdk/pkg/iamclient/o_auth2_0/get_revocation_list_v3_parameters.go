// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package o_auth2_0

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

// NewGetRevocationListV3Params creates a new GetRevocationListV3Params object
// with the default values initialized.
func NewGetRevocationListV3Params() *GetRevocationListV3Params {
	var ()
	return &GetRevocationListV3Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetRevocationListV3ParamsWithTimeout creates a new GetRevocationListV3Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetRevocationListV3ParamsWithTimeout(timeout time.Duration) *GetRevocationListV3Params {
	var ()
	return &GetRevocationListV3Params{

		timeout: timeout,
	}
}

// NewGetRevocationListV3ParamsWithContext creates a new GetRevocationListV3Params object
// with the default values initialized, and the ability to set a context for a request
func NewGetRevocationListV3ParamsWithContext(ctx context.Context) *GetRevocationListV3Params {
	var ()
	return &GetRevocationListV3Params{

		Context: ctx,
	}
}

// NewGetRevocationListV3ParamsWithHTTPClient creates a new GetRevocationListV3Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetRevocationListV3ParamsWithHTTPClient(client *http.Client) *GetRevocationListV3Params {
	var ()
	return &GetRevocationListV3Params{
		HTTPClient: client,
	}
}

/*GetRevocationListV3Params contains all the parameters to send to the API endpoint
for the get revocation list v3 operation typically these are written to a http.Request
*/
type GetRevocationListV3Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the get revocation list v3 params
func (o *GetRevocationListV3Params) WithTimeout(timeout time.Duration) *GetRevocationListV3Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get revocation list v3 params
func (o *GetRevocationListV3Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get revocation list v3 params
func (o *GetRevocationListV3Params) WithContext(ctx context.Context) *GetRevocationListV3Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get revocation list v3 params
func (o *GetRevocationListV3Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get revocation list v3 params
func (o *GetRevocationListV3Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get revocation list v3 params
func (o *GetRevocationListV3Params) WithHTTPClient(client *http.Client) *GetRevocationListV3Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get revocation list v3 params
func (o *GetRevocationListV3Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get revocation list v3 params
func (o *GetRevocationListV3Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WriteToRequest writes these params to a swagger request
func (o *GetRevocationListV3Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

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
