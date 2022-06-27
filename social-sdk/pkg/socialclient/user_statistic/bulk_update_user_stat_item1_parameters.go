// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated by go-swagger; DO NOT EDIT.

package user_statistic

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

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

// NewBulkUpdateUserStatItem1Params creates a new BulkUpdateUserStatItem1Params object
// with the default values initialized.
func NewBulkUpdateUserStatItem1Params() *BulkUpdateUserStatItem1Params {
	var ()
	return &BulkUpdateUserStatItem1Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewBulkUpdateUserStatItem1ParamsWithTimeout creates a new BulkUpdateUserStatItem1Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewBulkUpdateUserStatItem1ParamsWithTimeout(timeout time.Duration) *BulkUpdateUserStatItem1Params {
	var ()
	return &BulkUpdateUserStatItem1Params{

		timeout: timeout,
	}
}

// NewBulkUpdateUserStatItem1ParamsWithContext creates a new BulkUpdateUserStatItem1Params object
// with the default values initialized, and the ability to set a context for a request
func NewBulkUpdateUserStatItem1ParamsWithContext(ctx context.Context) *BulkUpdateUserStatItem1Params {
	var ()
	return &BulkUpdateUserStatItem1Params{

		Context: ctx,
	}
}

// NewBulkUpdateUserStatItem1ParamsWithHTTPClient creates a new BulkUpdateUserStatItem1Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewBulkUpdateUserStatItem1ParamsWithHTTPClient(client *http.Client) *BulkUpdateUserStatItem1Params {
	var ()
	return &BulkUpdateUserStatItem1Params{
		HTTPClient: client,
	}
}

/*BulkUpdateUserStatItem1Params contains all the parameters to send to the API endpoint
for the bulk update user stat item 1 operation typically these are written to a http.Request
*/
type BulkUpdateUserStatItem1Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body []*socialclientmodels.BulkUserStatItemUpdate
	/*Namespace
	  namespace

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the bulk update user stat item 1 params
func (o *BulkUpdateUserStatItem1Params) WithTimeout(timeout time.Duration) *BulkUpdateUserStatItem1Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the bulk update user stat item 1 params
func (o *BulkUpdateUserStatItem1Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the bulk update user stat item 1 params
func (o *BulkUpdateUserStatItem1Params) WithContext(ctx context.Context) *BulkUpdateUserStatItem1Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the bulk update user stat item 1 params
func (o *BulkUpdateUserStatItem1Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the bulk update user stat item 1 params
func (o *BulkUpdateUserStatItem1Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the bulk update user stat item 1 params
func (o *BulkUpdateUserStatItem1Params) WithHTTPClient(client *http.Client) *BulkUpdateUserStatItem1Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the bulk update user stat item 1 params
func (o *BulkUpdateUserStatItem1Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the bulk update user stat item 1 params
func (o *BulkUpdateUserStatItem1Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the bulk update user stat item 1 params
func (o *BulkUpdateUserStatItem1Params) WithBody(body []*socialclientmodels.BulkUserStatItemUpdate) *BulkUpdateUserStatItem1Params {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the bulk update user stat item 1 params
func (o *BulkUpdateUserStatItem1Params) SetBody(body []*socialclientmodels.BulkUserStatItemUpdate) {
	o.Body = body
}

// WithNamespace adds the namespace to the bulk update user stat item 1 params
func (o *BulkUpdateUserStatItem1Params) WithNamespace(namespace string) *BulkUpdateUserStatItem1Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the bulk update user stat item 1 params
func (o *BulkUpdateUserStatItem1Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *BulkUpdateUserStatItem1Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
