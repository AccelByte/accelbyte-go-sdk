// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package service_plugin_config

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

// NewUploadRevocationPluginConfigCertParams creates a new UploadRevocationPluginConfigCertParams object
// with the default values initialized.
func NewUploadRevocationPluginConfigCertParams() *UploadRevocationPluginConfigCertParams {
	var ()
	return &UploadRevocationPluginConfigCertParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewUploadRevocationPluginConfigCertParamsWithTimeout creates a new UploadRevocationPluginConfigCertParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewUploadRevocationPluginConfigCertParamsWithTimeout(timeout time.Duration) *UploadRevocationPluginConfigCertParams {
	var ()
	return &UploadRevocationPluginConfigCertParams{

		timeout: timeout,
	}
}

// NewUploadRevocationPluginConfigCertParamsWithContext creates a new UploadRevocationPluginConfigCertParams object
// with the default values initialized, and the ability to set a context for a request
func NewUploadRevocationPluginConfigCertParamsWithContext(ctx context.Context) *UploadRevocationPluginConfigCertParams {
	var ()
	return &UploadRevocationPluginConfigCertParams{

		Context: ctx,
	}
}

// NewUploadRevocationPluginConfigCertParamsWithHTTPClient creates a new UploadRevocationPluginConfigCertParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewUploadRevocationPluginConfigCertParamsWithHTTPClient(client *http.Client) *UploadRevocationPluginConfigCertParams {
	var ()
	return &UploadRevocationPluginConfigCertParams{
		HTTPClient: client,
	}
}

/*UploadRevocationPluginConfigCertParams contains all the parameters to send to the API endpoint
for the upload revocation plugin config cert operation typically these are written to a http.Request
*/
type UploadRevocationPluginConfigCertParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*File*/
	File runtime.NamedReadCloser
	/*Namespace*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the upload revocation plugin config cert params
func (o *UploadRevocationPluginConfigCertParams) WithTimeout(timeout time.Duration) *UploadRevocationPluginConfigCertParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the upload revocation plugin config cert params
func (o *UploadRevocationPluginConfigCertParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the upload revocation plugin config cert params
func (o *UploadRevocationPluginConfigCertParams) WithContext(ctx context.Context) *UploadRevocationPluginConfigCertParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the upload revocation plugin config cert params
func (o *UploadRevocationPluginConfigCertParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the upload revocation plugin config cert params
func (o *UploadRevocationPluginConfigCertParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the upload revocation plugin config cert params
func (o *UploadRevocationPluginConfigCertParams) WithHTTPClient(client *http.Client) *UploadRevocationPluginConfigCertParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the upload revocation plugin config cert params
func (o *UploadRevocationPluginConfigCertParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the upload revocation plugin config cert params
func (o *UploadRevocationPluginConfigCertParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *UploadRevocationPluginConfigCertParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithFile adds the file to the upload revocation plugin config cert params
func (o *UploadRevocationPluginConfigCertParams) WithFile(file runtime.NamedReadCloser) *UploadRevocationPluginConfigCertParams {
	o.SetFile(file)
	return o
}

// SetFile adds the file to the upload revocation plugin config cert params
func (o *UploadRevocationPluginConfigCertParams) SetFile(file runtime.NamedReadCloser) {
	o.File = file
}

// WithNamespace adds the namespace to the upload revocation plugin config cert params
func (o *UploadRevocationPluginConfigCertParams) WithNamespace(namespace string) *UploadRevocationPluginConfigCertParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the upload revocation plugin config cert params
func (o *UploadRevocationPluginConfigCertParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *UploadRevocationPluginConfigCertParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
