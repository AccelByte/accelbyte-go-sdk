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

// NewAdminImportConfigV1Params creates a new AdminImportConfigV1Params object
// with the default values initialized.
func NewAdminImportConfigV1Params() *AdminImportConfigV1Params {
	var ()
	return &AdminImportConfigV1Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminImportConfigV1ParamsWithTimeout creates a new AdminImportConfigV1Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminImportConfigV1ParamsWithTimeout(timeout time.Duration) *AdminImportConfigV1Params {
	var ()
	return &AdminImportConfigV1Params{

		timeout: timeout,
	}
}

// NewAdminImportConfigV1ParamsWithContext creates a new AdminImportConfigV1Params object
// with the default values initialized, and the ability to set a context for a request
func NewAdminImportConfigV1ParamsWithContext(ctx context.Context) *AdminImportConfigV1Params {
	var ()
	return &AdminImportConfigV1Params{

		Context: ctx,
	}
}

// NewAdminImportConfigV1ParamsWithHTTPClient creates a new AdminImportConfigV1Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminImportConfigV1ParamsWithHTTPClient(client *http.Client) *AdminImportConfigV1Params {
	var ()
	return &AdminImportConfigV1Params{
		HTTPClient: client,
	}
}

/*AdminImportConfigV1Params contains all the parameters to send to the API endpoint
for the admin import config v1 operation typically these are written to a http.Request
*/
type AdminImportConfigV1Params struct {

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

// WithTimeout adds the timeout to the admin import config v1 params
func (o *AdminImportConfigV1Params) WithTimeout(timeout time.Duration) *AdminImportConfigV1Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin import config v1 params
func (o *AdminImportConfigV1Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin import config v1 params
func (o *AdminImportConfigV1Params) WithContext(ctx context.Context) *AdminImportConfigV1Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin import config v1 params
func (o *AdminImportConfigV1Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin import config v1 params
func (o *AdminImportConfigV1Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin import config v1 params
func (o *AdminImportConfigV1Params) WithHTTPClient(client *http.Client) *AdminImportConfigV1Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin import config v1 params
func (o *AdminImportConfigV1Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin import config v1 params
func (o *AdminImportConfigV1Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminImportConfigV1Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithFile adds the file to the admin import config v1 params
func (o *AdminImportConfigV1Params) WithFile(file runtime.NamedReadCloser) *AdminImportConfigV1Params {
	o.SetFile(file)
	return o
}

// SetFile adds the file to the admin import config v1 params
func (o *AdminImportConfigV1Params) SetFile(file runtime.NamedReadCloser) {
	o.File = file
}

// WithNamespace adds the namespace to the admin import config v1 params
func (o *AdminImportConfigV1Params) WithNamespace(namespace string) *AdminImportConfigV1Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin import config v1 params
func (o *AdminImportConfigV1Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *AdminImportConfigV1Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
