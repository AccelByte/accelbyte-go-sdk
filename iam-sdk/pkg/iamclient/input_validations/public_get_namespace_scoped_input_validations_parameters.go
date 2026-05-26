// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package input_validations

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
)

// NewPublicGetNamespaceScopedInputValidationsParams creates a new PublicGetNamespaceScopedInputValidationsParams object
// with the default values initialized.
func NewPublicGetNamespaceScopedInputValidationsParams() *PublicGetNamespaceScopedInputValidationsParams {
	var (
		defaultOnEmptyDefault = bool(true)
	)
	return &PublicGetNamespaceScopedInputValidationsParams{
		DefaultOnEmpty: &defaultOnEmptyDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicGetNamespaceScopedInputValidationsParamsWithTimeout creates a new PublicGetNamespaceScopedInputValidationsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicGetNamespaceScopedInputValidationsParamsWithTimeout(timeout time.Duration) *PublicGetNamespaceScopedInputValidationsParams {
	var (
		defaultOnEmptyDefault = bool(true)
	)
	return &PublicGetNamespaceScopedInputValidationsParams{
		DefaultOnEmpty: &defaultOnEmptyDefault,

		timeout: timeout,
	}
}

// NewPublicGetNamespaceScopedInputValidationsParamsWithContext creates a new PublicGetNamespaceScopedInputValidationsParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicGetNamespaceScopedInputValidationsParamsWithContext(ctx context.Context) *PublicGetNamespaceScopedInputValidationsParams {
	var (
		defaultOnEmptyDefault = bool(true)
	)
	return &PublicGetNamespaceScopedInputValidationsParams{
		DefaultOnEmpty: &defaultOnEmptyDefault,

		Context: ctx,
	}
}

// NewPublicGetNamespaceScopedInputValidationsParamsWithHTTPClient creates a new PublicGetNamespaceScopedInputValidationsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicGetNamespaceScopedInputValidationsParamsWithHTTPClient(client *http.Client) *PublicGetNamespaceScopedInputValidationsParams {
	var (
		defaultOnEmptyDefault = bool(true)
	)
	return &PublicGetNamespaceScopedInputValidationsParams{
		DefaultOnEmpty: &defaultOnEmptyDefault,
		HTTPClient:     client,
	}
}

/*PublicGetNamespaceScopedInputValidationsParams contains all the parameters to send to the API endpoint
for the public get namespace scoped input validations operation typically these are written to a http.Request
*/
type PublicGetNamespaceScopedInputValidationsParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  Accepts alphanumeric, with hyphens allowed between segments

	*/
	Namespace string
	/*DefaultOnEmpty
	  default true, will return default language if languageCode is empty or language not available

	*/
	DefaultOnEmpty *bool
	/*LanguageCode
	  Language Code for description

	*/
	LanguageCode *string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the public get namespace scoped input validations params
func (o *PublicGetNamespaceScopedInputValidationsParams) WithTimeout(timeout time.Duration) *PublicGetNamespaceScopedInputValidationsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public get namespace scoped input validations params
func (o *PublicGetNamespaceScopedInputValidationsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public get namespace scoped input validations params
func (o *PublicGetNamespaceScopedInputValidationsParams) WithContext(ctx context.Context) *PublicGetNamespaceScopedInputValidationsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public get namespace scoped input validations params
func (o *PublicGetNamespaceScopedInputValidationsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public get namespace scoped input validations params
func (o *PublicGetNamespaceScopedInputValidationsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public get namespace scoped input validations params
func (o *PublicGetNamespaceScopedInputValidationsParams) WithHTTPClient(client *http.Client) *PublicGetNamespaceScopedInputValidationsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public get namespace scoped input validations params
func (o *PublicGetNamespaceScopedInputValidationsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public get namespace scoped input validations params
func (o *PublicGetNamespaceScopedInputValidationsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PublicGetNamespaceScopedInputValidationsParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the public get namespace scoped input validations params
func (o *PublicGetNamespaceScopedInputValidationsParams) WithNamespace(namespace string) *PublicGetNamespaceScopedInputValidationsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public get namespace scoped input validations params
func (o *PublicGetNamespaceScopedInputValidationsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithDefaultOnEmpty adds the defaultOnEmpty to the public get namespace scoped input validations params
func (o *PublicGetNamespaceScopedInputValidationsParams) WithDefaultOnEmpty(defaultOnEmpty *bool) *PublicGetNamespaceScopedInputValidationsParams {
	o.SetDefaultOnEmpty(defaultOnEmpty)
	return o
}

// SetDefaultOnEmpty adds the defaultOnEmpty to the public get namespace scoped input validations params
func (o *PublicGetNamespaceScopedInputValidationsParams) SetDefaultOnEmpty(defaultOnEmpty *bool) {
	o.DefaultOnEmpty = defaultOnEmpty
}

// WithLanguageCode adds the languageCode to the public get namespace scoped input validations params
func (o *PublicGetNamespaceScopedInputValidationsParams) WithLanguageCode(languageCode *string) *PublicGetNamespaceScopedInputValidationsParams {
	o.SetLanguageCode(languageCode)
	return o
}

// SetLanguageCode adds the languageCode to the public get namespace scoped input validations params
func (o *PublicGetNamespaceScopedInputValidationsParams) SetLanguageCode(languageCode *string) {
	o.LanguageCode = languageCode
}

// WriteToRequest writes these params to a swagger request
func (o *PublicGetNamespaceScopedInputValidationsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	if o.DefaultOnEmpty != nil {

		// query param defaultOnEmpty
		var qrDefaultOnEmpty bool
		if o.DefaultOnEmpty != nil {
			qrDefaultOnEmpty = *o.DefaultOnEmpty
		}
		qDefaultOnEmpty := swag.FormatBool(qrDefaultOnEmpty)
		if qDefaultOnEmpty != "" {
			if err := r.SetQueryParam("defaultOnEmpty", qDefaultOnEmpty); err != nil {
				return err
			}
		}

	}

	if o.LanguageCode != nil {

		// query param languageCode
		var qrLanguageCode string
		if o.LanguageCode != nil {
			qrLanguageCode = *o.LanguageCode
		}
		qLanguageCode := qrLanguageCode
		if qLanguageCode != "" {
			if err := r.SetQueryParam("languageCode", qLanguageCode); err != nil {
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
