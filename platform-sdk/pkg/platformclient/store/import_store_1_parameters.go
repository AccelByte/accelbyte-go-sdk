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
	"github.com/go-openapi/swag"
)

// NewImportStore1Params creates a new ImportStore1Params object
// with the default values initialized.
func NewImportStore1Params() *ImportStore1Params {
	var (
		strictModeDefault = bool(true)
	)
	return &ImportStore1Params{
		StrictMode: &strictModeDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewImportStore1ParamsWithTimeout creates a new ImportStore1Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewImportStore1ParamsWithTimeout(timeout time.Duration) *ImportStore1Params {
	var (
		strictModeDefault = bool(true)
	)
	return &ImportStore1Params{
		StrictMode: &strictModeDefault,

		timeout: timeout,
	}
}

// NewImportStore1ParamsWithContext creates a new ImportStore1Params object
// with the default values initialized, and the ability to set a context for a request
func NewImportStore1ParamsWithContext(ctx context.Context) *ImportStore1Params {
	var (
		strictModeDefault = bool(true)
	)
	return &ImportStore1Params{
		StrictMode: &strictModeDefault,

		Context: ctx,
	}
}

// NewImportStore1ParamsWithHTTPClient creates a new ImportStore1Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewImportStore1ParamsWithHTTPClient(client *http.Client) *ImportStore1Params {
	var (
		strictModeDefault = bool(true)
	)
	return &ImportStore1Params{
		StrictMode: &strictModeDefault,
		HTTPClient: client,
	}
}

/*ImportStore1Params contains all the parameters to send to the API endpoint
for the import store 1 operation typically these are written to a http.Request
*/
type ImportStore1Params struct {

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
	/*StrictMode
	  default strict mode is true, if strict mode is false, will not do any validation.

	*/
	StrictMode *bool

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the import store 1 params
func (o *ImportStore1Params) WithTimeout(timeout time.Duration) *ImportStore1Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the import store 1 params
func (o *ImportStore1Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the import store 1 params
func (o *ImportStore1Params) WithContext(ctx context.Context) *ImportStore1Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the import store 1 params
func (o *ImportStore1Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the import store 1 params
func (o *ImportStore1Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the import store 1 params
func (o *ImportStore1Params) WithHTTPClient(client *http.Client) *ImportStore1Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the import store 1 params
func (o *ImportStore1Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the import store 1 params
func (o *ImportStore1Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *ImportStore1Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithFile adds the file to the import store 1 params
func (o *ImportStore1Params) WithFile(file runtime.NamedReadCloser) *ImportStore1Params {
	o.SetFile(file)
	return o
}

// SetFile adds the file to the import store 1 params
func (o *ImportStore1Params) SetFile(file runtime.NamedReadCloser) {
	o.File = file
}

// WithNamespace adds the namespace to the import store 1 params
func (o *ImportStore1Params) WithNamespace(namespace string) *ImportStore1Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the import store 1 params
func (o *ImportStore1Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithStoreID adds the storeID to the import store 1 params
func (o *ImportStore1Params) WithStoreID(storeID *string) *ImportStore1Params {
	o.SetStoreID(storeID)
	return o
}

// SetStoreID adds the storeId to the import store 1 params
func (o *ImportStore1Params) SetStoreID(storeID *string) {
	o.StoreID = storeID
}

// WithStrictMode adds the strictMode to the import store 1 params
func (o *ImportStore1Params) WithStrictMode(strictMode *bool) *ImportStore1Params {
	o.SetStrictMode(strictMode)
	return o
}

// SetStrictMode adds the strictMode to the import store 1 params
func (o *ImportStore1Params) SetStrictMode(strictMode *bool) {
	o.StrictMode = strictMode
}

// WriteToRequest writes these params to a swagger request
func (o *ImportStore1Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	if o.StrictMode != nil {

		// query param strictMode
		var qrStrictMode bool
		if o.StrictMode != nil {
			qrStrictMode = *o.StrictMode
		}
		qStrictMode := swag.FormatBool(qrStrictMode)
		if qStrictMode != "" {
			if err := r.SetQueryParam("strictMode", qStrictMode); err != nil {
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
