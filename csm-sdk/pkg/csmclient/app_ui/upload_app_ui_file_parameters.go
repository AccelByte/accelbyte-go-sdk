// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package app_ui

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

// NewUploadAppUIFileParams creates a new UploadAppUIFileParams object
// with the default values initialized.
func NewUploadAppUIFileParams() *UploadAppUIFileParams {
	var ()
	return &UploadAppUIFileParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewUploadAppUIFileParamsWithTimeout creates a new UploadAppUIFileParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewUploadAppUIFileParamsWithTimeout(timeout time.Duration) *UploadAppUIFileParams {
	var ()
	return &UploadAppUIFileParams{

		timeout: timeout,
	}
}

// NewUploadAppUIFileParamsWithContext creates a new UploadAppUIFileParams object
// with the default values initialized, and the ability to set a context for a request
func NewUploadAppUIFileParamsWithContext(ctx context.Context) *UploadAppUIFileParams {
	var ()
	return &UploadAppUIFileParams{

		Context: ctx,
	}
}

// NewUploadAppUIFileParamsWithHTTPClient creates a new UploadAppUIFileParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewUploadAppUIFileParamsWithHTTPClient(client *http.Client) *UploadAppUIFileParams {
	var ()
	return &UploadAppUIFileParams{
		HTTPClient: client,
	}
}

/*UploadAppUIFileParams contains all the parameters to send to the API endpoint
for the upload app ui file operation typically these are written to a http.Request
*/
type UploadAppUIFileParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*File
	  Zip file containing App UI assets

	*/
	File runtime.NamedReadCloser
	/*AppUIName
	  App UI Name

	*/
	AppUIName string
	/*Namespace
	  Game Namespace

	*/
	Namespace string
	/*Version
	  Version of the App UI assets, can be left empty by default is 'default'

	*/
	Version *string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the upload app ui file params
func (o *UploadAppUIFileParams) WithTimeout(timeout time.Duration) *UploadAppUIFileParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the upload app ui file params
func (o *UploadAppUIFileParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the upload app ui file params
func (o *UploadAppUIFileParams) WithContext(ctx context.Context) *UploadAppUIFileParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the upload app ui file params
func (o *UploadAppUIFileParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the upload app ui file params
func (o *UploadAppUIFileParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the upload app ui file params
func (o *UploadAppUIFileParams) WithHTTPClient(client *http.Client) *UploadAppUIFileParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the upload app ui file params
func (o *UploadAppUIFileParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the upload app ui file params
func (o *UploadAppUIFileParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *UploadAppUIFileParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithFile adds the file to the upload app ui file params
func (o *UploadAppUIFileParams) WithFile(file runtime.NamedReadCloser) *UploadAppUIFileParams {
	o.SetFile(file)
	return o
}

// SetFile adds the file to the upload app ui file params
func (o *UploadAppUIFileParams) SetFile(file runtime.NamedReadCloser) {
	o.File = file
}

// WithAppUIName adds the appUIName to the upload app ui file params
func (o *UploadAppUIFileParams) WithAppUIName(appUIName string) *UploadAppUIFileParams {
	o.SetAppUIName(appUIName)
	return o
}

// SetAppUIName adds the appUiName to the upload app ui file params
func (o *UploadAppUIFileParams) SetAppUIName(appUIName string) {
	o.AppUIName = appUIName
}

// WithNamespace adds the namespace to the upload app ui file params
func (o *UploadAppUIFileParams) WithNamespace(namespace string) *UploadAppUIFileParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the upload app ui file params
func (o *UploadAppUIFileParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithVersion adds the version to the upload app ui file params
func (o *UploadAppUIFileParams) WithVersion(version *string) *UploadAppUIFileParams {
	o.SetVersion(version)
	return o
}

// SetVersion adds the version to the upload app ui file params
func (o *UploadAppUIFileParams) SetVersion(version *string) {
	o.Version = version
}

// WriteToRequest writes these params to a swagger request
func (o *UploadAppUIFileParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// form file param file
	if err := r.SetFileParam("file", o.File); err != nil {
		return err
	}

	// path param appUiName
	if err := r.SetPathParam("appUiName", o.AppUIName); err != nil {
		return err
	}

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	if o.Version != nil {

		// query param version
		var qrVersion string
		if o.Version != nil {
			qrVersion = *o.Version
		}
		qVersion := qrVersion
		if qVersion != "" {
			if err := r.SetQueryParam("version", qVersion); err != nil {
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
