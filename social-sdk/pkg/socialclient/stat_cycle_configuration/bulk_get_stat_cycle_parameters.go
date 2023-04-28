// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package stat_cycle_configuration

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/social-sdk/pkg/socialclientmodels"
)

// NewBulkGetStatCycleParams creates a new BulkGetStatCycleParams object
// with the default values initialized.
func NewBulkGetStatCycleParams() *BulkGetStatCycleParams {
	var ()
	return &BulkGetStatCycleParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewBulkGetStatCycleParamsWithTimeout creates a new BulkGetStatCycleParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewBulkGetStatCycleParamsWithTimeout(timeout time.Duration) *BulkGetStatCycleParams {
	var ()
	return &BulkGetStatCycleParams{

		timeout: timeout,
	}
}

// NewBulkGetStatCycleParamsWithContext creates a new BulkGetStatCycleParams object
// with the default values initialized, and the ability to set a context for a request
func NewBulkGetStatCycleParamsWithContext(ctx context.Context) *BulkGetStatCycleParams {
	var ()
	return &BulkGetStatCycleParams{

		Context: ctx,
	}
}

// NewBulkGetStatCycleParamsWithHTTPClient creates a new BulkGetStatCycleParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewBulkGetStatCycleParamsWithHTTPClient(client *http.Client) *BulkGetStatCycleParams {
	var ()
	return &BulkGetStatCycleParams{
		HTTPClient: client,
	}
}

/*BulkGetStatCycleParams contains all the parameters to send to the API endpoint
for the bulk get stat cycle operation typically these are written to a http.Request
*/
type BulkGetStatCycleParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *socialclientmodels.BulkStatCycleRequest
	/*Namespace
	  namespace

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the bulk get stat cycle params
func (o *BulkGetStatCycleParams) WithTimeout(timeout time.Duration) *BulkGetStatCycleParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the bulk get stat cycle params
func (o *BulkGetStatCycleParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the bulk get stat cycle params
func (o *BulkGetStatCycleParams) WithContext(ctx context.Context) *BulkGetStatCycleParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the bulk get stat cycle params
func (o *BulkGetStatCycleParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the bulk get stat cycle params
func (o *BulkGetStatCycleParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the bulk get stat cycle params
func (o *BulkGetStatCycleParams) WithHTTPClient(client *http.Client) *BulkGetStatCycleParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the bulk get stat cycle params
func (o *BulkGetStatCycleParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the bulk get stat cycle params
func (o *BulkGetStatCycleParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the bulk get stat cycle params
func (o *BulkGetStatCycleParams) WithBody(body *socialclientmodels.BulkStatCycleRequest) *BulkGetStatCycleParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the bulk get stat cycle params
func (o *BulkGetStatCycleParams) SetBody(body *socialclientmodels.BulkStatCycleRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the bulk get stat cycle params
func (o *BulkGetStatCycleParams) WithNamespace(namespace string) *BulkGetStatCycleParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the bulk get stat cycle params
func (o *BulkGetStatCycleParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *BulkGetStatCycleParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
	}

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
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
