// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package trade_action

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
)

// NewCommitParams creates a new CommitParams object
// with the default values initialized.
func NewCommitParams() *CommitParams {
	var ()
	return &CommitParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewCommitParamsWithTimeout creates a new CommitParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewCommitParamsWithTimeout(timeout time.Duration) *CommitParams {
	var ()
	return &CommitParams{

		timeout: timeout,
	}
}

// NewCommitParamsWithContext creates a new CommitParams object
// with the default values initialized, and the ability to set a context for a request
func NewCommitParamsWithContext(ctx context.Context) *CommitParams {
	var ()
	return &CommitParams{

		Context: ctx,
	}
}

// NewCommitParamsWithHTTPClient creates a new CommitParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewCommitParamsWithHTTPClient(client *http.Client) *CommitParams {
	var ()
	return &CommitParams{
		HTTPClient: client,
	}
}

/*CommitParams contains all the parameters to send to the API endpoint
for the commit operation typically these are written to a http.Request
*/
type CommitParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *platformclientmodels.TradeChainedActionCommitRequest
	/*Namespace
	  Namespace

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the commit params
func (o *CommitParams) WithTimeout(timeout time.Duration) *CommitParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the commit params
func (o *CommitParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the commit params
func (o *CommitParams) WithContext(ctx context.Context) *CommitParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the commit params
func (o *CommitParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the commit params
func (o *CommitParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the commit params
func (o *CommitParams) WithHTTPClient(client *http.Client) *CommitParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the commit params
func (o *CommitParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the commit params
func (o *CommitParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the commit params
func (o *CommitParams) WithBody(body *platformclientmodels.TradeChainedActionCommitRequest) *CommitParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the commit params
func (o *CommitParams) SetBody(body *platformclientmodels.TradeChainedActionCommitRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the commit params
func (o *CommitParams) WithNamespace(namespace string) *CommitParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the commit params
func (o *CommitParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *CommitParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
