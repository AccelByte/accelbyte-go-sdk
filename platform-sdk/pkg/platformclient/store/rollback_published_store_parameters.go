// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package store

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

// NewRollbackPublishedStoreParams creates a new RollbackPublishedStoreParams object
// with the default values initialized.
func NewRollbackPublishedStoreParams() *RollbackPublishedStoreParams {
	var ()
	return &RollbackPublishedStoreParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewRollbackPublishedStoreParamsWithTimeout creates a new RollbackPublishedStoreParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewRollbackPublishedStoreParamsWithTimeout(timeout time.Duration) *RollbackPublishedStoreParams {
	var ()
	return &RollbackPublishedStoreParams{

		timeout: timeout,
	}
}

// NewRollbackPublishedStoreParamsWithContext creates a new RollbackPublishedStoreParams object
// with the default values initialized, and the ability to set a context for a request
func NewRollbackPublishedStoreParamsWithContext(ctx context.Context) *RollbackPublishedStoreParams {
	var ()
	return &RollbackPublishedStoreParams{

		Context: ctx,
	}
}

// NewRollbackPublishedStoreParamsWithHTTPClient creates a new RollbackPublishedStoreParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewRollbackPublishedStoreParamsWithHTTPClient(client *http.Client) *RollbackPublishedStoreParams {
	var ()
	return &RollbackPublishedStoreParams{
		HTTPClient: client,
	}
}

/*RollbackPublishedStoreParams contains all the parameters to send to the API endpoint
for the rollback published store operation typically these are written to a http.Request
*/
type RollbackPublishedStoreParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the rollback published store params
func (o *RollbackPublishedStoreParams) WithTimeout(timeout time.Duration) *RollbackPublishedStoreParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the rollback published store params
func (o *RollbackPublishedStoreParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the rollback published store params
func (o *RollbackPublishedStoreParams) WithContext(ctx context.Context) *RollbackPublishedStoreParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the rollback published store params
func (o *RollbackPublishedStoreParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the rollback published store params
func (o *RollbackPublishedStoreParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the rollback published store params
func (o *RollbackPublishedStoreParams) WithHTTPClient(client *http.Client) *RollbackPublishedStoreParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the rollback published store params
func (o *RollbackPublishedStoreParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the rollback published store params
func (o *RollbackPublishedStoreParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the rollback published store params
func (o *RollbackPublishedStoreParams) WithNamespace(namespace string) *RollbackPublishedStoreParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the rollback published store params
func (o *RollbackPublishedStoreParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *RollbackPublishedStoreParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

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
