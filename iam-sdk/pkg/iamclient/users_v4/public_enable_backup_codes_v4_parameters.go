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

// NewPublicEnableBackupCodesV4Params creates a new PublicEnableBackupCodesV4Params object
// with the default values initialized.
func NewPublicEnableBackupCodesV4Params() *PublicEnableBackupCodesV4Params {
	var ()
	return &PublicEnableBackupCodesV4Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicEnableBackupCodesV4ParamsWithTimeout creates a new PublicEnableBackupCodesV4Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicEnableBackupCodesV4ParamsWithTimeout(timeout time.Duration) *PublicEnableBackupCodesV4Params {
	var ()
	return &PublicEnableBackupCodesV4Params{

		timeout: timeout,
	}
}

// NewPublicEnableBackupCodesV4ParamsWithContext creates a new PublicEnableBackupCodesV4Params object
// with the default values initialized, and the ability to set a context for a request
func NewPublicEnableBackupCodesV4ParamsWithContext(ctx context.Context) *PublicEnableBackupCodesV4Params {
	var ()
	return &PublicEnableBackupCodesV4Params{

		Context: ctx,
	}
}

// NewPublicEnableBackupCodesV4ParamsWithHTTPClient creates a new PublicEnableBackupCodesV4Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicEnableBackupCodesV4ParamsWithHTTPClient(client *http.Client) *PublicEnableBackupCodesV4Params {
	var ()
	return &PublicEnableBackupCodesV4Params{
		HTTPClient: client,
	}
}

/*PublicEnableBackupCodesV4Params contains all the parameters to send to the API endpoint
for the public enable backup codes v4 operation typically these are written to a http.Request
*/
type PublicEnableBackupCodesV4Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  Namespace, only accept alphabet and numeric

	*/
	Namespace string
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

// WithTimeout adds the timeout to the public enable backup codes v4 params
func (o *PublicEnableBackupCodesV4Params) WithTimeout(timeout time.Duration) *PublicEnableBackupCodesV4Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public enable backup codes v4 params
func (o *PublicEnableBackupCodesV4Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public enable backup codes v4 params
func (o *PublicEnableBackupCodesV4Params) WithContext(ctx context.Context) *PublicEnableBackupCodesV4Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public enable backup codes v4 params
func (o *PublicEnableBackupCodesV4Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public enable backup codes v4 params
func (o *PublicEnableBackupCodesV4Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public enable backup codes v4 params
func (o *PublicEnableBackupCodesV4Params) WithHTTPClient(client *http.Client) *PublicEnableBackupCodesV4Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public enable backup codes v4 params
func (o *PublicEnableBackupCodesV4Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public enable backup codes v4 params
func (o *PublicEnableBackupCodesV4Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PublicEnableBackupCodesV4Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the public enable backup codes v4 params
func (o *PublicEnableBackupCodesV4Params) WithNamespace(namespace string) *PublicEnableBackupCodesV4Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public enable backup codes v4 params
func (o *PublicEnableBackupCodesV4Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithLanguageTag adds the languageTag to the public enable backup codes v4 params
func (o *PublicEnableBackupCodesV4Params) WithLanguageTag(languageTag *string) *PublicEnableBackupCodesV4Params {
	o.SetLanguageTag(languageTag)
	return o
}

// SetLanguageTag adds the languageTag to the public enable backup codes v4 params
func (o *PublicEnableBackupCodesV4Params) SetLanguageTag(languageTag *string) {
	o.LanguageTag = languageTag
}

// WriteToRequest writes these params to a swagger request
func (o *PublicEnableBackupCodesV4Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

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
