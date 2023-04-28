// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package section

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

// NewPurgeExpiredSectionParams creates a new PurgeExpiredSectionParams object
// with the default values initialized.
func NewPurgeExpiredSectionParams() *PurgeExpiredSectionParams {
	var ()
	return &PurgeExpiredSectionParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPurgeExpiredSectionParamsWithTimeout creates a new PurgeExpiredSectionParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPurgeExpiredSectionParamsWithTimeout(timeout time.Duration) *PurgeExpiredSectionParams {
	var ()
	return &PurgeExpiredSectionParams{

		timeout: timeout,
	}
}

// NewPurgeExpiredSectionParamsWithContext creates a new PurgeExpiredSectionParams object
// with the default values initialized, and the ability to set a context for a request
func NewPurgeExpiredSectionParamsWithContext(ctx context.Context) *PurgeExpiredSectionParams {
	var ()
	return &PurgeExpiredSectionParams{

		Context: ctx,
	}
}

// NewPurgeExpiredSectionParamsWithHTTPClient creates a new PurgeExpiredSectionParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPurgeExpiredSectionParamsWithHTTPClient(client *http.Client) *PurgeExpiredSectionParams {
	var ()
	return &PurgeExpiredSectionParams{
		HTTPClient: client,
	}
}

/*PurgeExpiredSectionParams contains all the parameters to send to the API endpoint
for the purge expired section operation typically these are written to a http.Request
*/
type PurgeExpiredSectionParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  Namespace

	*/
	Namespace string
	/*StoreID*/
	StoreID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the purge expired section params
func (o *PurgeExpiredSectionParams) WithTimeout(timeout time.Duration) *PurgeExpiredSectionParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the purge expired section params
func (o *PurgeExpiredSectionParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the purge expired section params
func (o *PurgeExpiredSectionParams) WithContext(ctx context.Context) *PurgeExpiredSectionParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the purge expired section params
func (o *PurgeExpiredSectionParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the purge expired section params
func (o *PurgeExpiredSectionParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the purge expired section params
func (o *PurgeExpiredSectionParams) WithHTTPClient(client *http.Client) *PurgeExpiredSectionParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the purge expired section params
func (o *PurgeExpiredSectionParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the purge expired section params
func (o *PurgeExpiredSectionParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the purge expired section params
func (o *PurgeExpiredSectionParams) WithNamespace(namespace string) *PurgeExpiredSectionParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the purge expired section params
func (o *PurgeExpiredSectionParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithStoreID adds the storeID to the purge expired section params
func (o *PurgeExpiredSectionParams) WithStoreID(storeID string) *PurgeExpiredSectionParams {
	o.SetStoreID(storeID)
	return o
}

// SetStoreID adds the storeId to the purge expired section params
func (o *PurgeExpiredSectionParams) SetStoreID(storeID string) {
	o.StoreID = storeID
}

// WriteToRequest writes these params to a swagger request
func (o *PurgeExpiredSectionParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// query param storeId
	qrStoreID := o.StoreID
	qStoreID := qrStoreID
	if qStoreID != "" {
		if err := r.SetQueryParam("storeId", qStoreID); err != nil {
			return err
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
