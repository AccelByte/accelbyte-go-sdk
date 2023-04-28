// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package season

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

// NewPublicGetCurrentSeasonParams creates a new PublicGetCurrentSeasonParams object
// with the default values initialized.
func NewPublicGetCurrentSeasonParams() *PublicGetCurrentSeasonParams {
	var ()
	return &PublicGetCurrentSeasonParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicGetCurrentSeasonParamsWithTimeout creates a new PublicGetCurrentSeasonParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicGetCurrentSeasonParamsWithTimeout(timeout time.Duration) *PublicGetCurrentSeasonParams {
	var ()
	return &PublicGetCurrentSeasonParams{

		timeout: timeout,
	}
}

// NewPublicGetCurrentSeasonParamsWithContext creates a new PublicGetCurrentSeasonParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicGetCurrentSeasonParamsWithContext(ctx context.Context) *PublicGetCurrentSeasonParams {
	var ()
	return &PublicGetCurrentSeasonParams{

		Context: ctx,
	}
}

// NewPublicGetCurrentSeasonParamsWithHTTPClient creates a new PublicGetCurrentSeasonParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicGetCurrentSeasonParamsWithHTTPClient(client *http.Client) *PublicGetCurrentSeasonParams {
	var ()
	return &PublicGetCurrentSeasonParams{
		HTTPClient: client,
	}
}

/*PublicGetCurrentSeasonParams contains all the parameters to send to the API endpoint
for the public get current season operation typically these are written to a http.Request
*/
type PublicGetCurrentSeasonParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  Namespace

	*/
	Namespace string
	/*Language*/
	Language *string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the public get current season params
func (o *PublicGetCurrentSeasonParams) WithTimeout(timeout time.Duration) *PublicGetCurrentSeasonParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public get current season params
func (o *PublicGetCurrentSeasonParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public get current season params
func (o *PublicGetCurrentSeasonParams) WithContext(ctx context.Context) *PublicGetCurrentSeasonParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public get current season params
func (o *PublicGetCurrentSeasonParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public get current season params
func (o *PublicGetCurrentSeasonParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public get current season params
func (o *PublicGetCurrentSeasonParams) WithHTTPClient(client *http.Client) *PublicGetCurrentSeasonParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public get current season params
func (o *PublicGetCurrentSeasonParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public get current season params
func (o *PublicGetCurrentSeasonParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the public get current season params
func (o *PublicGetCurrentSeasonParams) WithNamespace(namespace string) *PublicGetCurrentSeasonParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public get current season params
func (o *PublicGetCurrentSeasonParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithLanguage adds the language to the public get current season params
func (o *PublicGetCurrentSeasonParams) WithLanguage(language *string) *PublicGetCurrentSeasonParams {
	o.SetLanguage(language)
	return o
}

// SetLanguage adds the language to the public get current season params
func (o *PublicGetCurrentSeasonParams) SetLanguage(language *string) {
	o.Language = language
}

// WriteToRequest writes these params to a swagger request
func (o *PublicGetCurrentSeasonParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	if o.Language != nil {

		// query param language
		var qrLanguage string
		if o.Language != nil {
			qrLanguage = *o.Language
		}
		qLanguage := qrLanguage
		if qLanguage != "" {
			if err := r.SetQueryParam("language", qLanguage); err != nil {
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

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
