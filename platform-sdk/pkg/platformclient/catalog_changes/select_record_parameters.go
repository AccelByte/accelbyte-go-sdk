// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package catalog_changes

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

// NewSelectRecordParams creates a new SelectRecordParams object
// with the default values initialized.
func NewSelectRecordParams() *SelectRecordParams {
	var ()
	return &SelectRecordParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewSelectRecordParamsWithTimeout creates a new SelectRecordParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewSelectRecordParamsWithTimeout(timeout time.Duration) *SelectRecordParams {
	var ()
	return &SelectRecordParams{

		timeout: timeout,
	}
}

// NewSelectRecordParamsWithContext creates a new SelectRecordParams object
// with the default values initialized, and the ability to set a context for a request
func NewSelectRecordParamsWithContext(ctx context.Context) *SelectRecordParams {
	var ()
	return &SelectRecordParams{

		Context: ctx,
	}
}

// NewSelectRecordParamsWithHTTPClient creates a new SelectRecordParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewSelectRecordParamsWithHTTPClient(client *http.Client) *SelectRecordParams {
	var ()
	return &SelectRecordParams{
		HTTPClient: client,
	}
}

/*SelectRecordParams contains all the parameters to send to the API endpoint
for the select record operation typically these are written to a http.Request
*/
type SelectRecordParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*ChangeID*/
	ChangeID string
	/*Namespace*/
	Namespace string
	/*StoreID*/
	StoreID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the select record params
func (o *SelectRecordParams) WithTimeout(timeout time.Duration) *SelectRecordParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the select record params
func (o *SelectRecordParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the select record params
func (o *SelectRecordParams) WithContext(ctx context.Context) *SelectRecordParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the select record params
func (o *SelectRecordParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the select record params
func (o *SelectRecordParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the select record params
func (o *SelectRecordParams) WithHTTPClient(client *http.Client) *SelectRecordParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the select record params
func (o *SelectRecordParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the select record params
func (o *SelectRecordParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithChangeID adds the changeID to the select record params
func (o *SelectRecordParams) WithChangeID(changeID string) *SelectRecordParams {
	o.SetChangeID(changeID)
	return o
}

// SetChangeID adds the changeId to the select record params
func (o *SelectRecordParams) SetChangeID(changeID string) {
	o.ChangeID = changeID
}

// WithNamespace adds the namespace to the select record params
func (o *SelectRecordParams) WithNamespace(namespace string) *SelectRecordParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the select record params
func (o *SelectRecordParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithStoreID adds the storeID to the select record params
func (o *SelectRecordParams) WithStoreID(storeID string) *SelectRecordParams {
	o.SetStoreID(storeID)
	return o
}

// SetStoreID adds the storeId to the select record params
func (o *SelectRecordParams) SetStoreID(storeID string) {
	o.StoreID = storeID
}

// WriteToRequest writes these params to a swagger request
func (o *SelectRecordParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param changeId
	if err := r.SetPathParam("changeId", o.ChangeID); err != nil {
		return err
	}

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
