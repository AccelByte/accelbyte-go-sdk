// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package user_statistic

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

// NewBulkResetUserStatItemParams creates a new BulkResetUserStatItemParams object
// with the default values initialized.
func NewBulkResetUserStatItemParams() *BulkResetUserStatItemParams {
	var ()
	return &BulkResetUserStatItemParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewBulkResetUserStatItemParamsWithTimeout creates a new BulkResetUserStatItemParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewBulkResetUserStatItemParamsWithTimeout(timeout time.Duration) *BulkResetUserStatItemParams {
	var ()
	return &BulkResetUserStatItemParams{

		timeout: timeout,
	}
}

// NewBulkResetUserStatItemParamsWithContext creates a new BulkResetUserStatItemParams object
// with the default values initialized, and the ability to set a context for a request
func NewBulkResetUserStatItemParamsWithContext(ctx context.Context) *BulkResetUserStatItemParams {
	var ()
	return &BulkResetUserStatItemParams{

		Context: ctx,
	}
}

// NewBulkResetUserStatItemParamsWithHTTPClient creates a new BulkResetUserStatItemParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewBulkResetUserStatItemParamsWithHTTPClient(client *http.Client) *BulkResetUserStatItemParams {
	var ()
	return &BulkResetUserStatItemParams{
		HTTPClient: client,
	}
}

/*BulkResetUserStatItemParams contains all the parameters to send to the API endpoint
for the bulk reset user stat item operation typically these are written to a http.Request
*/
type BulkResetUserStatItemParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body []*socialclientmodels.BulkUserStatItemReset
	/*Namespace
	  namespace

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the bulk reset user stat item params
func (o *BulkResetUserStatItemParams) WithTimeout(timeout time.Duration) *BulkResetUserStatItemParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the bulk reset user stat item params
func (o *BulkResetUserStatItemParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the bulk reset user stat item params
func (o *BulkResetUserStatItemParams) WithContext(ctx context.Context) *BulkResetUserStatItemParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the bulk reset user stat item params
func (o *BulkResetUserStatItemParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the bulk reset user stat item params
func (o *BulkResetUserStatItemParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the bulk reset user stat item params
func (o *BulkResetUserStatItemParams) WithHTTPClient(client *http.Client) *BulkResetUserStatItemParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the bulk reset user stat item params
func (o *BulkResetUserStatItemParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the bulk reset user stat item params
func (o *BulkResetUserStatItemParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the bulk reset user stat item params
func (o *BulkResetUserStatItemParams) WithBody(body []*socialclientmodels.BulkUserStatItemReset) *BulkResetUserStatItemParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the bulk reset user stat item params
func (o *BulkResetUserStatItemParams) SetBody(body []*socialclientmodels.BulkUserStatItemReset) {
	o.Body = body
}

// WithNamespace adds the namespace to the bulk reset user stat item params
func (o *BulkResetUserStatItemParams) WithNamespace(namespace string) *BulkResetUserStatItemParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the bulk reset user stat item params
func (o *BulkResetUserStatItemParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *BulkResetUserStatItemParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
