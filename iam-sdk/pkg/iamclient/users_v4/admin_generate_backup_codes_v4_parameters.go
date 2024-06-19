// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package users_v4

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

// NewAdminGenerateBackupCodesV4Params creates a new AdminGenerateBackupCodesV4Params object
// with the default values initialized.
func NewAdminGenerateBackupCodesV4Params() *AdminGenerateBackupCodesV4Params {
	var ()
	return &AdminGenerateBackupCodesV4Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminGenerateBackupCodesV4ParamsWithTimeout creates a new AdminGenerateBackupCodesV4Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminGenerateBackupCodesV4ParamsWithTimeout(timeout time.Duration) *AdminGenerateBackupCodesV4Params {
	var ()
	return &AdminGenerateBackupCodesV4Params{

		timeout: timeout,
	}
}

// NewAdminGenerateBackupCodesV4ParamsWithContext creates a new AdminGenerateBackupCodesV4Params object
// with the default values initialized, and the ability to set a context for a request
func NewAdminGenerateBackupCodesV4ParamsWithContext(ctx context.Context) *AdminGenerateBackupCodesV4Params {
	var ()
	return &AdminGenerateBackupCodesV4Params{

		Context: ctx,
	}
}

// NewAdminGenerateBackupCodesV4ParamsWithHTTPClient creates a new AdminGenerateBackupCodesV4Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminGenerateBackupCodesV4ParamsWithHTTPClient(client *http.Client) *AdminGenerateBackupCodesV4Params {
	var ()
	return &AdminGenerateBackupCodesV4Params{
		HTTPClient: client,
	}
}

/*AdminGenerateBackupCodesV4Params contains all the parameters to send to the API endpoint
for the admin generate backup codes v4 operation typically these are written to a http.Request
*/
type AdminGenerateBackupCodesV4Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*LanguageTag
	  Language tag for email notification

	*/
	LanguageTag *string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin generate backup codes v4 params
func (o *AdminGenerateBackupCodesV4Params) WithTimeout(timeout time.Duration) *AdminGenerateBackupCodesV4Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin generate backup codes v4 params
func (o *AdminGenerateBackupCodesV4Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin generate backup codes v4 params
func (o *AdminGenerateBackupCodesV4Params) WithContext(ctx context.Context) *AdminGenerateBackupCodesV4Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin generate backup codes v4 params
func (o *AdminGenerateBackupCodesV4Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin generate backup codes v4 params
func (o *AdminGenerateBackupCodesV4Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin generate backup codes v4 params
func (o *AdminGenerateBackupCodesV4Params) WithHTTPClient(client *http.Client) *AdminGenerateBackupCodesV4Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin generate backup codes v4 params
func (o *AdminGenerateBackupCodesV4Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin generate backup codes v4 params
func (o *AdminGenerateBackupCodesV4Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminGenerateBackupCodesV4Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithLanguageTag adds the languageTag to the admin generate backup codes v4 params
func (o *AdminGenerateBackupCodesV4Params) WithLanguageTag(languageTag *string) *AdminGenerateBackupCodesV4Params {
	o.SetLanguageTag(languageTag)
	return o
}

// SetLanguageTag adds the languageTag to the admin generate backup codes v4 params
func (o *AdminGenerateBackupCodesV4Params) SetLanguageTag(languageTag *string) {
	o.LanguageTag = languageTag
}

// WriteToRequest writes these params to a swagger request
func (o *AdminGenerateBackupCodesV4Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.LanguageTag != nil {

		// query param languageTag
		var qrLanguageTag string
		if o.LanguageTag != nil {
			qrLanguageTag = *o.LanguageTag
		}
		qLanguageTag := qrLanguageTag
		if qLanguageTag != "" {
			if err := r.SetQueryParam("languageTag", qLanguageTag); err != nil {
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
