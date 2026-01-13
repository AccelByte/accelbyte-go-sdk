// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package platform_credential

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

// Deprecated: 2025-07-16 - Use AdminUploadPlatformCredentialsPlatformID<EnumValue>Constant instead.
// Get the enum in AdminUploadPlatformCredentialsParams
const (
	AdminUploadPlatformCredentialsXBOXConstant = "XBOX"
)

// Get the enum in AdminUploadPlatformCredentialsParams
const (
	AdminUploadPlatformCredentialsPlatformIDXBOXConstant = "XBOX"
)

// NewAdminUploadPlatformCredentialsParams creates a new AdminUploadPlatformCredentialsParams object
// with the default values initialized.
func NewAdminUploadPlatformCredentialsParams() *AdminUploadPlatformCredentialsParams {
	var ()
	return &AdminUploadPlatformCredentialsParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminUploadPlatformCredentialsParamsWithTimeout creates a new AdminUploadPlatformCredentialsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminUploadPlatformCredentialsParamsWithTimeout(timeout time.Duration) *AdminUploadPlatformCredentialsParams {
	var ()
	return &AdminUploadPlatformCredentialsParams{

		timeout: timeout,
	}
}

// NewAdminUploadPlatformCredentialsParamsWithContext creates a new AdminUploadPlatformCredentialsParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminUploadPlatformCredentialsParamsWithContext(ctx context.Context) *AdminUploadPlatformCredentialsParams {
	var ()
	return &AdminUploadPlatformCredentialsParams{

		Context: ctx,
	}
}

// NewAdminUploadPlatformCredentialsParamsWithHTTPClient creates a new AdminUploadPlatformCredentialsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminUploadPlatformCredentialsParamsWithHTTPClient(client *http.Client) *AdminUploadPlatformCredentialsParams {
	var ()
	return &AdminUploadPlatformCredentialsParams{
		HTTPClient: client,
	}
}

/*AdminUploadPlatformCredentialsParams contains all the parameters to send to the API endpoint
for the admin upload platform credentials operation typically these are written to a http.Request
*/
type AdminUploadPlatformCredentialsParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Description
	  the description of the uploaded file

	*/
	Description *string
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
	/*PlatformID
	  Platform ID

	*/
	PlatformID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin upload platform credentials params
func (o *AdminUploadPlatformCredentialsParams) WithTimeout(timeout time.Duration) *AdminUploadPlatformCredentialsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin upload platform credentials params
func (o *AdminUploadPlatformCredentialsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin upload platform credentials params
func (o *AdminUploadPlatformCredentialsParams) WithContext(ctx context.Context) *AdminUploadPlatformCredentialsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin upload platform credentials params
func (o *AdminUploadPlatformCredentialsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin upload platform credentials params
func (o *AdminUploadPlatformCredentialsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin upload platform credentials params
func (o *AdminUploadPlatformCredentialsParams) WithHTTPClient(client *http.Client) *AdminUploadPlatformCredentialsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin upload platform credentials params
func (o *AdminUploadPlatformCredentialsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin upload platform credentials params
func (o *AdminUploadPlatformCredentialsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminUploadPlatformCredentialsParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithDescription adds the description to the admin upload platform credentials params
func (o *AdminUploadPlatformCredentialsParams) WithDescription(description *string) *AdminUploadPlatformCredentialsParams {
	o.SetDescription(description)
	return o
}

// SetDescription adds the description to the admin upload platform credentials params
func (o *AdminUploadPlatformCredentialsParams) SetDescription(description *string) {
	o.Description = description
}

// WithFile adds the file to the admin upload platform credentials params
func (o *AdminUploadPlatformCredentialsParams) WithFile(file runtime.NamedReadCloser) *AdminUploadPlatformCredentialsParams {
	o.SetFile(file)
	return o
}

// SetFile adds the file to the admin upload platform credentials params
func (o *AdminUploadPlatformCredentialsParams) SetFile(file runtime.NamedReadCloser) {
	o.File = file
}

// WithPassword adds the password to the admin upload platform credentials params
func (o *AdminUploadPlatformCredentialsParams) WithPassword(password string) *AdminUploadPlatformCredentialsParams {
	o.SetPassword(password)
	return o
}

// SetPassword adds the password to the admin upload platform credentials params
func (o *AdminUploadPlatformCredentialsParams) SetPassword(password string) {
	o.Password = password
}

// WithNamespace adds the namespace to the admin upload platform credentials params
func (o *AdminUploadPlatformCredentialsParams) WithNamespace(namespace string) *AdminUploadPlatformCredentialsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin upload platform credentials params
func (o *AdminUploadPlatformCredentialsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithPlatformID adds the platformID to the admin upload platform credentials params
func (o *AdminUploadPlatformCredentialsParams) WithPlatformID(platformID string) *AdminUploadPlatformCredentialsParams {
	o.SetPlatformID(platformID)
	return o
}

// SetPlatformID adds the platformId to the admin upload platform credentials params
func (o *AdminUploadPlatformCredentialsParams) SetPlatformID(platformID string) {
	o.PlatformID = platformID
}

// WriteToRequest writes these params to a swagger request
func (o *AdminUploadPlatformCredentialsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	// path param platformId
	if err := r.SetPathParam("platformId", o.PlatformID); err != nil {
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
