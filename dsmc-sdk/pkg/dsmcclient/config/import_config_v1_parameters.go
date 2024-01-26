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

// NewImportConfigV1Params creates a new ImportConfigV1Params object
// with the default values initialized.
func NewImportConfigV1Params() *ImportConfigV1Params {
	var ()
	return &ImportConfigV1Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewImportConfigV1ParamsWithTimeout creates a new ImportConfigV1Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewImportConfigV1ParamsWithTimeout(timeout time.Duration) *ImportConfigV1Params {
	var ()
	return &ImportConfigV1Params{

		timeout: timeout,
	}
}

// NewImportConfigV1ParamsWithContext creates a new ImportConfigV1Params object
// with the default values initialized, and the ability to set a context for a request
func NewImportConfigV1ParamsWithContext(ctx context.Context) *ImportConfigV1Params {
	var ()
	return &ImportConfigV1Params{

		Context: ctx,
	}
}

// NewImportConfigV1ParamsWithHTTPClient creates a new ImportConfigV1Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewImportConfigV1ParamsWithHTTPClient(client *http.Client) *ImportConfigV1Params {
	var ()
	return &ImportConfigV1Params{
		HTTPClient: client,
	}
}

/*ImportConfigV1Params contains all the parameters to send to the API endpoint
for the import config v1 operation typically these are written to a http.Request
*/
type ImportConfigV1Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*File
	  imported file

	*/
	File runtime.NamedReadCloser
	/*Namespace
	  namespace of the game

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the import config v1 params
func (o *ImportConfigV1Params) WithTimeout(timeout time.Duration) *ImportConfigV1Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the import config v1 params
func (o *ImportConfigV1Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the import config v1 params
func (o *ImportConfigV1Params) WithContext(ctx context.Context) *ImportConfigV1Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the import config v1 params
func (o *ImportConfigV1Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the import config v1 params
func (o *ImportConfigV1Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the import config v1 params
func (o *ImportConfigV1Params) WithHTTPClient(client *http.Client) *ImportConfigV1Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the import config v1 params
func (o *ImportConfigV1Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the import config v1 params
func (o *ImportConfigV1Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *ImportConfigV1Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithFile adds the file to the import config v1 params
func (o *ImportConfigV1Params) WithFile(file runtime.NamedReadCloser) *ImportConfigV1Params {
	o.SetFile(file)
	return o
}

// SetFile adds the file to the import config v1 params
func (o *ImportConfigV1Params) SetFile(file runtime.NamedReadCloser) {
	o.File = file
}

// WithNamespace adds the namespace to the import config v1 params
func (o *ImportConfigV1Params) WithNamespace(namespace string) *ImportConfigV1Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the import config v1 params
func (o *ImportConfigV1Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *ImportConfigV1Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
