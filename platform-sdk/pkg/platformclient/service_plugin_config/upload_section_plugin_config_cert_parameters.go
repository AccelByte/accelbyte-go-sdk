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

// NewUploadSectionPluginConfigCertParams creates a new UploadSectionPluginConfigCertParams object
// with the default values initialized.
func NewUploadSectionPluginConfigCertParams() *UploadSectionPluginConfigCertParams {
	var ()
	return &UploadSectionPluginConfigCertParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewUploadSectionPluginConfigCertParamsWithTimeout creates a new UploadSectionPluginConfigCertParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewUploadSectionPluginConfigCertParamsWithTimeout(timeout time.Duration) *UploadSectionPluginConfigCertParams {
	var ()
	return &UploadSectionPluginConfigCertParams{

		timeout: timeout,
	}
}

// NewUploadSectionPluginConfigCertParamsWithContext creates a new UploadSectionPluginConfigCertParams object
// with the default values initialized, and the ability to set a context for a request
func NewUploadSectionPluginConfigCertParamsWithContext(ctx context.Context) *UploadSectionPluginConfigCertParams {
	var ()
	return &UploadSectionPluginConfigCertParams{

		Context: ctx,
	}
}

// NewUploadSectionPluginConfigCertParamsWithHTTPClient creates a new UploadSectionPluginConfigCertParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewUploadSectionPluginConfigCertParamsWithHTTPClient(client *http.Client) *UploadSectionPluginConfigCertParams {
	var ()
	return &UploadSectionPluginConfigCertParams{
		HTTPClient: client,
	}
}

/*UploadSectionPluginConfigCertParams contains all the parameters to send to the API endpoint
for the upload section plugin config cert operation typically these are written to a http.Request
*/
type UploadSectionPluginConfigCertParams struct {

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

// WithTimeout adds the timeout to the upload section plugin config cert params
func (o *UploadSectionPluginConfigCertParams) WithTimeout(timeout time.Duration) *UploadSectionPluginConfigCertParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the upload section plugin config cert params
func (o *UploadSectionPluginConfigCertParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the upload section plugin config cert params
func (o *UploadSectionPluginConfigCertParams) WithContext(ctx context.Context) *UploadSectionPluginConfigCertParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the upload section plugin config cert params
func (o *UploadSectionPluginConfigCertParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the upload section plugin config cert params
func (o *UploadSectionPluginConfigCertParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the upload section plugin config cert params
func (o *UploadSectionPluginConfigCertParams) WithHTTPClient(client *http.Client) *UploadSectionPluginConfigCertParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the upload section plugin config cert params
func (o *UploadSectionPluginConfigCertParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the upload section plugin config cert params
func (o *UploadSectionPluginConfigCertParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *UploadSectionPluginConfigCertParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithFile adds the file to the upload section plugin config cert params
func (o *UploadSectionPluginConfigCertParams) WithFile(file runtime.NamedReadCloser) *UploadSectionPluginConfigCertParams {
	o.SetFile(file)
	return o
}

// SetFile adds the file to the upload section plugin config cert params
func (o *UploadSectionPluginConfigCertParams) SetFile(file runtime.NamedReadCloser) {
	o.File = file
}

// WithNamespace adds the namespace to the upload section plugin config cert params
func (o *UploadSectionPluginConfigCertParams) WithNamespace(namespace string) *UploadSectionPluginConfigCertParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the upload section plugin config cert params
func (o *UploadSectionPluginConfigCertParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *UploadSectionPluginConfigCertParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
