// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package certificate

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

// NewHandleUploadXboxPFXCertificateParams creates a new HandleUploadXboxPFXCertificateParams object
// with the default values initialized.
func NewHandleUploadXboxPFXCertificateParams() *HandleUploadXboxPFXCertificateParams {
	var ()
	return &HandleUploadXboxPFXCertificateParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewHandleUploadXboxPFXCertificateParamsWithTimeout creates a new HandleUploadXboxPFXCertificateParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewHandleUploadXboxPFXCertificateParamsWithTimeout(timeout time.Duration) *HandleUploadXboxPFXCertificateParams {
	var ()
	return &HandleUploadXboxPFXCertificateParams{

		timeout: timeout,
	}
}

// NewHandleUploadXboxPFXCertificateParamsWithContext creates a new HandleUploadXboxPFXCertificateParams object
// with the default values initialized, and the ability to set a context for a request
func NewHandleUploadXboxPFXCertificateParamsWithContext(ctx context.Context) *HandleUploadXboxPFXCertificateParams {
	var ()
	return &HandleUploadXboxPFXCertificateParams{

		Context: ctx,
	}
}

// NewHandleUploadXboxPFXCertificateParamsWithHTTPClient creates a new HandleUploadXboxPFXCertificateParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewHandleUploadXboxPFXCertificateParamsWithHTTPClient(client *http.Client) *HandleUploadXboxPFXCertificateParams {
	var ()
	return &HandleUploadXboxPFXCertificateParams{
		HTTPClient: client,
	}
}

/*HandleUploadXboxPFXCertificateParams contains all the parameters to send to the API endpoint
for the handle upload xbox pfx certificate operation typically these are written to a http.Request
*/
type HandleUploadXboxPFXCertificateParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Description
	  the description of the uploaded file

	*/
	Description *string
	/*Certname
	  certificate name

	*/
	Certname string
	/*File
	  the file to upload

	*/
	File runtime.NamedReadCloser
	/*Password
	  the uploaded file password

	*/
	Password string
	/*Namespace
	  namespace of the game

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the handle upload xbox pfx certificate params
func (o *HandleUploadXboxPFXCertificateParams) WithTimeout(timeout time.Duration) *HandleUploadXboxPFXCertificateParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the handle upload xbox pfx certificate params
func (o *HandleUploadXboxPFXCertificateParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the handle upload xbox pfx certificate params
func (o *HandleUploadXboxPFXCertificateParams) WithContext(ctx context.Context) *HandleUploadXboxPFXCertificateParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the handle upload xbox pfx certificate params
func (o *HandleUploadXboxPFXCertificateParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the handle upload xbox pfx certificate params
func (o *HandleUploadXboxPFXCertificateParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the handle upload xbox pfx certificate params
func (o *HandleUploadXboxPFXCertificateParams) WithHTTPClient(client *http.Client) *HandleUploadXboxPFXCertificateParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the handle upload xbox pfx certificate params
func (o *HandleUploadXboxPFXCertificateParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the handle upload xbox pfx certificate params
func (o *HandleUploadXboxPFXCertificateParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithDescription adds the description to the handle upload xbox pfx certificate params
func (o *HandleUploadXboxPFXCertificateParams) WithDescription(description *string) *HandleUploadXboxPFXCertificateParams {
	o.SetDescription(description)
	return o
}

// SetDescription adds the description to the handle upload xbox pfx certificate params
func (o *HandleUploadXboxPFXCertificateParams) SetDescription(description *string) {
	o.Description = description
}

// WithCertname adds the certname to the handle upload xbox pfx certificate params
func (o *HandleUploadXboxPFXCertificateParams) WithCertname(certname string) *HandleUploadXboxPFXCertificateParams {
	o.SetCertname(certname)
	return o
}

// SetCertname adds the certname to the handle upload xbox pfx certificate params
func (o *HandleUploadXboxPFXCertificateParams) SetCertname(certname string) {
	o.Certname = certname
}

// WithFile adds the file to the handle upload xbox pfx certificate params
func (o *HandleUploadXboxPFXCertificateParams) WithFile(file runtime.NamedReadCloser) *HandleUploadXboxPFXCertificateParams {
	o.SetFile(file)
	return o
}

// SetFile adds the file to the handle upload xbox pfx certificate params
func (o *HandleUploadXboxPFXCertificateParams) SetFile(file runtime.NamedReadCloser) {
	o.File = file
}

// WithPassword adds the password to the handle upload xbox pfx certificate params
func (o *HandleUploadXboxPFXCertificateParams) WithPassword(password string) *HandleUploadXboxPFXCertificateParams {
	o.SetPassword(password)
	return o
}

// SetPassword adds the password to the handle upload xbox pfx certificate params
func (o *HandleUploadXboxPFXCertificateParams) SetPassword(password string) {
	o.Password = password
}

// WithNamespace adds the namespace to the handle upload xbox pfx certificate params
func (o *HandleUploadXboxPFXCertificateParams) WithNamespace(namespace string) *HandleUploadXboxPFXCertificateParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the handle upload xbox pfx certificate params
func (o *HandleUploadXboxPFXCertificateParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *HandleUploadXboxPFXCertificateParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Description != nil {

		// form param description
		var frDescription string
		if o.Description != nil {
			frDescription = *o.Description
		}
		fDescription := frDescription
		if fDescription != "" {
			if err := r.SetFormParam("description", fDescription); err != nil {
				return err
			}
		}

	}

	// form param certname
	frCertname := o.Certname
	fCertname := frCertname
	if fCertname != "" {
		if err := r.SetFormParam("certname", fCertname); err != nil {
			return err
		}
	}

	// form file param file
	if err := r.SetFileParam("file", o.File); err != nil {
		return err
	}

	// form param password
	frPassword := o.Password
	fPassword := frPassword
	if fPassword != "" {
		if err := r.SetFormParam("password", fPassword); err != nil {
			return err
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

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
