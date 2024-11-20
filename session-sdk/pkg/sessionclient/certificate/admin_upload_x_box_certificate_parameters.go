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

// NewAdminUploadXBoxCertificateParams creates a new AdminUploadXBoxCertificateParams object
// with the default values initialized.
func NewAdminUploadXBoxCertificateParams() *AdminUploadXBoxCertificateParams {
	var ()
	return &AdminUploadXBoxCertificateParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminUploadXBoxCertificateParamsWithTimeout creates a new AdminUploadXBoxCertificateParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminUploadXBoxCertificateParamsWithTimeout(timeout time.Duration) *AdminUploadXBoxCertificateParams {
	var ()
	return &AdminUploadXBoxCertificateParams{

		timeout: timeout,
	}
}

// NewAdminUploadXBoxCertificateParamsWithContext creates a new AdminUploadXBoxCertificateParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminUploadXBoxCertificateParamsWithContext(ctx context.Context) *AdminUploadXBoxCertificateParams {
	var ()
	return &AdminUploadXBoxCertificateParams{

		Context: ctx,
	}
}

// NewAdminUploadXBoxCertificateParamsWithHTTPClient creates a new AdminUploadXBoxCertificateParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminUploadXBoxCertificateParamsWithHTTPClient(client *http.Client) *AdminUploadXBoxCertificateParams {
	var ()
	return &AdminUploadXBoxCertificateParams{
		HTTPClient: client,
	}
}

/*AdminUploadXBoxCertificateParams contains all the parameters to send to the API endpoint
for the admin upload x box certificate operation typically these are written to a http.Request
*/
type AdminUploadXBoxCertificateParams struct {

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

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin upload x box certificate params
func (o *AdminUploadXBoxCertificateParams) WithTimeout(timeout time.Duration) *AdminUploadXBoxCertificateParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin upload x box certificate params
func (o *AdminUploadXBoxCertificateParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin upload x box certificate params
func (o *AdminUploadXBoxCertificateParams) WithContext(ctx context.Context) *AdminUploadXBoxCertificateParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin upload x box certificate params
func (o *AdminUploadXBoxCertificateParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin upload x box certificate params
func (o *AdminUploadXBoxCertificateParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin upload x box certificate params
func (o *AdminUploadXBoxCertificateParams) WithHTTPClient(client *http.Client) *AdminUploadXBoxCertificateParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin upload x box certificate params
func (o *AdminUploadXBoxCertificateParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin upload x box certificate params
func (o *AdminUploadXBoxCertificateParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminUploadXBoxCertificateParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithDescription adds the description to the admin upload x box certificate params
func (o *AdminUploadXBoxCertificateParams) WithDescription(description *string) *AdminUploadXBoxCertificateParams {
	o.SetDescription(description)
	return o
}

// SetDescription adds the description to the admin upload x box certificate params
func (o *AdminUploadXBoxCertificateParams) SetDescription(description *string) {
	o.Description = description
}

// WithCertname adds the certname to the admin upload x box certificate params
func (o *AdminUploadXBoxCertificateParams) WithCertname(certname string) *AdminUploadXBoxCertificateParams {
	o.SetCertname(certname)
	return o
}

// SetCertname adds the certname to the admin upload x box certificate params
func (o *AdminUploadXBoxCertificateParams) SetCertname(certname string) {
	o.Certname = certname
}

// WithFile adds the file to the admin upload x box certificate params
func (o *AdminUploadXBoxCertificateParams) WithFile(file runtime.NamedReadCloser) *AdminUploadXBoxCertificateParams {
	o.SetFile(file)
	return o
}

// SetFile adds the file to the admin upload x box certificate params
func (o *AdminUploadXBoxCertificateParams) SetFile(file runtime.NamedReadCloser) {
	o.File = file
}

// WithPassword adds the password to the admin upload x box certificate params
func (o *AdminUploadXBoxCertificateParams) WithPassword(password string) *AdminUploadXBoxCertificateParams {
	o.SetPassword(password)
	return o
}

// SetPassword adds the password to the admin upload x box certificate params
func (o *AdminUploadXBoxCertificateParams) SetPassword(password string) {
	o.Password = password
}

// WithNamespace adds the namespace to the admin upload x box certificate params
func (o *AdminUploadXBoxCertificateParams) WithNamespace(namespace string) *AdminUploadXBoxCertificateParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin upload x box certificate params
func (o *AdminUploadXBoxCertificateParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *AdminUploadXBoxCertificateParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
