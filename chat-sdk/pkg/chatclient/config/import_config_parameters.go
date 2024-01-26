// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package config

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

// NewImportConfigParams creates a new ImportConfigParams object
// with the default values initialized.
func NewImportConfigParams() *ImportConfigParams {
	var ()
	return &ImportConfigParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewImportConfigParamsWithTimeout creates a new ImportConfigParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewImportConfigParamsWithTimeout(timeout time.Duration) *ImportConfigParams {
	var ()
	return &ImportConfigParams{

		timeout: timeout,
	}
}

// NewImportConfigParamsWithContext creates a new ImportConfigParams object
// with the default values initialized, and the ability to set a context for a request
func NewImportConfigParamsWithContext(ctx context.Context) *ImportConfigParams {
	var ()
	return &ImportConfigParams{

		Context: ctx,
	}
}

// NewImportConfigParamsWithHTTPClient creates a new ImportConfigParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewImportConfigParamsWithHTTPClient(client *http.Client) *ImportConfigParams {
	var ()
	return &ImportConfigParams{
		HTTPClient: client,
	}
}

/*ImportConfigParams contains all the parameters to send to the API endpoint
for the import config operation typically these are written to a http.Request
*/
type ImportConfigParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*File
	  file to be imported

	*/
	File runtime.NamedReadCloser
	/*Namespace
	  namespace

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the import config params
func (o *ImportConfigParams) WithTimeout(timeout time.Duration) *ImportConfigParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the import config params
func (o *ImportConfigParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the import config params
func (o *ImportConfigParams) WithContext(ctx context.Context) *ImportConfigParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the import config params
func (o *ImportConfigParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the import config params
func (o *ImportConfigParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the import config params
func (o *ImportConfigParams) WithHTTPClient(client *http.Client) *ImportConfigParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the import config params
func (o *ImportConfigParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the import config params
func (o *ImportConfigParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *ImportConfigParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithFile adds the file to the import config params
func (o *ImportConfigParams) WithFile(file runtime.NamedReadCloser) *ImportConfigParams {
	o.SetFile(file)
	return o
}

// SetFile adds the file to the import config params
func (o *ImportConfigParams) SetFile(file runtime.NamedReadCloser) {
	o.File = file
}

// WithNamespace adds the namespace to the import config params
func (o *ImportConfigParams) WithNamespace(namespace string) *ImportConfigParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the import config params
func (o *ImportConfigParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *ImportConfigParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
