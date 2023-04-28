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

// NewDeleteStoreParams creates a new DeleteStoreParams object
// with the default values initialized.
func NewDeleteStoreParams() *DeleteStoreParams {
	var ()
	return &DeleteStoreParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewDeleteStoreParamsWithTimeout creates a new DeleteStoreParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewDeleteStoreParamsWithTimeout(timeout time.Duration) *DeleteStoreParams {
	var ()
	return &DeleteStoreParams{

		timeout: timeout,
	}
}

// NewDeleteStoreParamsWithContext creates a new DeleteStoreParams object
// with the default values initialized, and the ability to set a context for a request
func NewDeleteStoreParamsWithContext(ctx context.Context) *DeleteStoreParams {
	var ()
	return &DeleteStoreParams{

		Context: ctx,
	}
}

// NewDeleteStoreParamsWithHTTPClient creates a new DeleteStoreParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewDeleteStoreParamsWithHTTPClient(client *http.Client) *DeleteStoreParams {
	var ()
	return &DeleteStoreParams{
		HTTPClient: client,
	}
}

/*DeleteStoreParams contains all the parameters to send to the API endpoint
for the delete store operation typically these are written to a http.Request
*/
type DeleteStoreParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace*/
	Namespace string
	/*StoreID*/
	StoreID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the delete store params
func (o *DeleteStoreParams) WithTimeout(timeout time.Duration) *DeleteStoreParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the delete store params
func (o *DeleteStoreParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the delete store params
func (o *DeleteStoreParams) WithContext(ctx context.Context) *DeleteStoreParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the delete store params
func (o *DeleteStoreParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the delete store params
func (o *DeleteStoreParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the delete store params
func (o *DeleteStoreParams) WithHTTPClient(client *http.Client) *DeleteStoreParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the delete store params
func (o *DeleteStoreParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the delete store params
func (o *DeleteStoreParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the delete store params
func (o *DeleteStoreParams) WithNamespace(namespace string) *DeleteStoreParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the delete store params
func (o *DeleteStoreParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithStoreID adds the storeID to the delete store params
func (o *DeleteStoreParams) WithStoreID(storeID string) *DeleteStoreParams {
	o.SetStoreID(storeID)
	return o
}

// SetStoreID adds the storeId to the delete store params
func (o *DeleteStoreParams) SetStoreID(storeID string) {
	o.StoreID = storeID
}

// WriteToRequest writes these params to a swagger request
func (o *DeleteStoreParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param storeId
	if err := r.SetPathParam("storeId", o.StoreID); err != nil {
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
