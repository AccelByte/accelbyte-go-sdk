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

// NewImportStoreParams creates a new ImportStoreParams object
// with the default values initialized.
func NewImportStoreParams() *ImportStoreParams {
	var ()
	return &ImportStoreParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewImportStoreParamsWithTimeout creates a new ImportStoreParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewImportStoreParamsWithTimeout(timeout time.Duration) *ImportStoreParams {
	var ()
	return &ImportStoreParams{

		timeout: timeout,
	}
}

// NewImportStoreParamsWithContext creates a new ImportStoreParams object
// with the default values initialized, and the ability to set a context for a request
func NewImportStoreParamsWithContext(ctx context.Context) *ImportStoreParams {
	var ()
	return &ImportStoreParams{

		Context: ctx,
	}
}

// NewImportStoreParamsWithHTTPClient creates a new ImportStoreParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewImportStoreParamsWithHTTPClient(client *http.Client) *ImportStoreParams {
	var ()
	return &ImportStoreParams{
		HTTPClient: client,
	}
}

/*ImportStoreParams contains all the parameters to send to the API endpoint
for the import store operation typically these are written to a http.Request
*/
type ImportStoreParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*File*/
	File runtime.NamedReadCloser
	/*Namespace*/
	Namespace string
	/*StoreID
	  default we will use published store id,and will create published store if it dose not exist

	*/
	StoreID *string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the import store params
func (o *ImportStoreParams) WithTimeout(timeout time.Duration) *ImportStoreParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the import store params
func (o *ImportStoreParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the import store params
func (o *ImportStoreParams) WithContext(ctx context.Context) *ImportStoreParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the import store params
func (o *ImportStoreParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the import store params
func (o *ImportStoreParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the import store params
func (o *ImportStoreParams) WithHTTPClient(client *http.Client) *ImportStoreParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the import store params
func (o *ImportStoreParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the import store params
func (o *ImportStoreParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *ImportStoreParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithFile adds the file to the import store params
func (o *ImportStoreParams) WithFile(file runtime.NamedReadCloser) *ImportStoreParams {
	o.SetFile(file)
	return o
}

// SetFile adds the file to the import store params
func (o *ImportStoreParams) SetFile(file runtime.NamedReadCloser) {
	o.File = file
}

// WithNamespace adds the namespace to the import store params
func (o *ImportStoreParams) WithNamespace(namespace string) *ImportStoreParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the import store params
func (o *ImportStoreParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithStoreID adds the storeID to the import store params
func (o *ImportStoreParams) WithStoreID(storeID *string) *ImportStoreParams {
	o.SetStoreID(storeID)
	return o
}

// SetStoreID adds the storeId to the import store params
func (o *ImportStoreParams) SetStoreID(storeID *string) {
	o.StoreID = storeID
}

// WriteToRequest writes these params to a swagger request
func (o *ImportStoreParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.File != nil {

		if o.File != nil {

			// form file param file
			if err := r.SetFileParam("file", o.File); err != nil {
				return err
			}

		}

	}

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	if o.StoreID != nil {

		// query param storeId
		var qrStoreID string
		if o.StoreID != nil {
			qrStoreID = *o.StoreID
		}
		qStoreID := qrStoreID
		if qStoreID != "" {
			if err := r.SetQueryParam("storeId", qStoreID); err != nil {
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

	if o.XFlightId == nil {
		if err := r.SetHeaderParam("X-Flight-Id", utils.GetDefaultFlightID().Value); err != nil {
			return err
		}
	} else {
		if err := r.SetHeaderParam("X-Flight-Id", *o.XFlightId); err != nil {
			return err
		}
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
