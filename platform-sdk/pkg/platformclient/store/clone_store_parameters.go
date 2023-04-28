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

// NewCloneStoreParams creates a new CloneStoreParams object
// with the default values initialized.
func NewCloneStoreParams() *CloneStoreParams {
	var ()
	return &CloneStoreParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewCloneStoreParamsWithTimeout creates a new CloneStoreParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewCloneStoreParamsWithTimeout(timeout time.Duration) *CloneStoreParams {
	var ()
	return &CloneStoreParams{

		timeout: timeout,
	}
}

// NewCloneStoreParamsWithContext creates a new CloneStoreParams object
// with the default values initialized, and the ability to set a context for a request
func NewCloneStoreParamsWithContext(ctx context.Context) *CloneStoreParams {
	var ()
	return &CloneStoreParams{

		Context: ctx,
	}
}

// NewCloneStoreParamsWithHTTPClient creates a new CloneStoreParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewCloneStoreParamsWithHTTPClient(client *http.Client) *CloneStoreParams {
	var ()
	return &CloneStoreParams{
		HTTPClient: client,
	}
}

/*CloneStoreParams contains all the parameters to send to the API endpoint
for the clone store operation typically these are written to a http.Request
*/
type CloneStoreParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace*/
	Namespace string
	/*StoreID*/
	StoreID string
	/*TargetStoreID
	  default is published store

	*/
	TargetStoreID *string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the clone store params
func (o *CloneStoreParams) WithTimeout(timeout time.Duration) *CloneStoreParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the clone store params
func (o *CloneStoreParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the clone store params
func (o *CloneStoreParams) WithContext(ctx context.Context) *CloneStoreParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the clone store params
func (o *CloneStoreParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the clone store params
func (o *CloneStoreParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the clone store params
func (o *CloneStoreParams) WithHTTPClient(client *http.Client) *CloneStoreParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the clone store params
func (o *CloneStoreParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the clone store params
func (o *CloneStoreParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the clone store params
func (o *CloneStoreParams) WithNamespace(namespace string) *CloneStoreParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the clone store params
func (o *CloneStoreParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithStoreID adds the storeID to the clone store params
func (o *CloneStoreParams) WithStoreID(storeID string) *CloneStoreParams {
	o.SetStoreID(storeID)
	return o
}

// SetStoreID adds the storeId to the clone store params
func (o *CloneStoreParams) SetStoreID(storeID string) {
	o.StoreID = storeID
}

// WithTargetStoreID adds the targetStoreID to the clone store params
func (o *CloneStoreParams) WithTargetStoreID(targetStoreID *string) *CloneStoreParams {
	o.SetTargetStoreID(targetStoreID)
	return o
}

// SetTargetStoreID adds the targetStoreId to the clone store params
func (o *CloneStoreParams) SetTargetStoreID(targetStoreID *string) {
	o.TargetStoreID = targetStoreID
}

// WriteToRequest writes these params to a swagger request
func (o *CloneStoreParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	if o.TargetStoreID != nil {

		// query param targetStoreId
		var qrTargetStoreID string
		if o.TargetStoreID != nil {
			qrTargetStoreID = *o.TargetStoreID
		}
		qTargetStoreID := qrTargetStoreID
		if qTargetStoreID != "" {
			if err := r.SetQueryParam("targetStoreId", qTargetStoreID); err != nil {
				return err
			}
		}

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
