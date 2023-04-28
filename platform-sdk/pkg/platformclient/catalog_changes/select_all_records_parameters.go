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

// NewSelectAllRecordsParams creates a new SelectAllRecordsParams object
// with the default values initialized.
func NewSelectAllRecordsParams() *SelectAllRecordsParams {
	var ()
	return &SelectAllRecordsParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewSelectAllRecordsParamsWithTimeout creates a new SelectAllRecordsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewSelectAllRecordsParamsWithTimeout(timeout time.Duration) *SelectAllRecordsParams {
	var ()
	return &SelectAllRecordsParams{

		timeout: timeout,
	}
}

// NewSelectAllRecordsParamsWithContext creates a new SelectAllRecordsParams object
// with the default values initialized, and the ability to set a context for a request
func NewSelectAllRecordsParamsWithContext(ctx context.Context) *SelectAllRecordsParams {
	var ()
	return &SelectAllRecordsParams{

		Context: ctx,
	}
}

// NewSelectAllRecordsParamsWithHTTPClient creates a new SelectAllRecordsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewSelectAllRecordsParamsWithHTTPClient(client *http.Client) *SelectAllRecordsParams {
	var ()
	return &SelectAllRecordsParams{
		HTTPClient: client,
	}
}

/*SelectAllRecordsParams contains all the parameters to send to the API endpoint
for the select all records operation typically these are written to a http.Request
*/
type SelectAllRecordsParams struct {

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

// WithTimeout adds the timeout to the select all records params
func (o *SelectAllRecordsParams) WithTimeout(timeout time.Duration) *SelectAllRecordsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the select all records params
func (o *SelectAllRecordsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the select all records params
func (o *SelectAllRecordsParams) WithContext(ctx context.Context) *SelectAllRecordsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the select all records params
func (o *SelectAllRecordsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the select all records params
func (o *SelectAllRecordsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the select all records params
func (o *SelectAllRecordsParams) WithHTTPClient(client *http.Client) *SelectAllRecordsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the select all records params
func (o *SelectAllRecordsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the select all records params
func (o *SelectAllRecordsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the select all records params
func (o *SelectAllRecordsParams) WithNamespace(namespace string) *SelectAllRecordsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the select all records params
func (o *SelectAllRecordsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithStoreID adds the storeID to the select all records params
func (o *SelectAllRecordsParams) WithStoreID(storeID string) *SelectAllRecordsParams {
	o.SetStoreID(storeID)
	return o
}

// SetStoreID adds the storeId to the select all records params
func (o *SelectAllRecordsParams) SetStoreID(storeID string) {
	o.StoreID = storeID
}

// WriteToRequest writes these params to a swagger request
func (o *SelectAllRecordsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
