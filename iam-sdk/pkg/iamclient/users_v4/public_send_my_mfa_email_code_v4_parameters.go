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

// NewPublicSendMyMFAEmailCodeV4Params creates a new PublicSendMyMFAEmailCodeV4Params object
// with the default values initialized.
func NewPublicSendMyMFAEmailCodeV4Params() *PublicSendMyMFAEmailCodeV4Params {
	var ()
	return &PublicSendMyMFAEmailCodeV4Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicSendMyMFAEmailCodeV4ParamsWithTimeout creates a new PublicSendMyMFAEmailCodeV4Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicSendMyMFAEmailCodeV4ParamsWithTimeout(timeout time.Duration) *PublicSendMyMFAEmailCodeV4Params {
	var ()
	return &PublicSendMyMFAEmailCodeV4Params{

		timeout: timeout,
	}
}

// NewPublicSendMyMFAEmailCodeV4ParamsWithContext creates a new PublicSendMyMFAEmailCodeV4Params object
// with the default values initialized, and the ability to set a context for a request
func NewPublicSendMyMFAEmailCodeV4ParamsWithContext(ctx context.Context) *PublicSendMyMFAEmailCodeV4Params {
	var ()
	return &PublicSendMyMFAEmailCodeV4Params{

		Context: ctx,
	}
}

// NewPublicSendMyMFAEmailCodeV4ParamsWithHTTPClient creates a new PublicSendMyMFAEmailCodeV4Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicSendMyMFAEmailCodeV4ParamsWithHTTPClient(client *http.Client) *PublicSendMyMFAEmailCodeV4Params {
	var ()
	return &PublicSendMyMFAEmailCodeV4Params{
		HTTPClient: client,
	}
}

/*PublicSendMyMFAEmailCodeV4Params contains all the parameters to send to the API endpoint
for the public send my mfa email code v4 operation typically these are written to a http.Request
*/
type PublicSendMyMFAEmailCodeV4Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Action
	  Sensitive Action

	*/
	Action *string
	/*LanguageTag
	  Language Tag

	*/
	LanguageTag *string
	/*Namespace
	  Namespace, only accept alphabet and numeric

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the public send my mfa email code v4 params
func (o *PublicSendMyMFAEmailCodeV4Params) WithTimeout(timeout time.Duration) *PublicSendMyMFAEmailCodeV4Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public send my mfa email code v4 params
func (o *PublicSendMyMFAEmailCodeV4Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public send my mfa email code v4 params
func (o *PublicSendMyMFAEmailCodeV4Params) WithContext(ctx context.Context) *PublicSendMyMFAEmailCodeV4Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public send my mfa email code v4 params
func (o *PublicSendMyMFAEmailCodeV4Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public send my mfa email code v4 params
func (o *PublicSendMyMFAEmailCodeV4Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public send my mfa email code v4 params
func (o *PublicSendMyMFAEmailCodeV4Params) WithHTTPClient(client *http.Client) *PublicSendMyMFAEmailCodeV4Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public send my mfa email code v4 params
func (o *PublicSendMyMFAEmailCodeV4Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public send my mfa email code v4 params
func (o *PublicSendMyMFAEmailCodeV4Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PublicSendMyMFAEmailCodeV4Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithAction adds the action to the public send my mfa email code v4 params
func (o *PublicSendMyMFAEmailCodeV4Params) WithAction(action *string) *PublicSendMyMFAEmailCodeV4Params {
	o.SetAction(action)
	return o
}

// SetAction adds the action to the public send my mfa email code v4 params
func (o *PublicSendMyMFAEmailCodeV4Params) SetAction(action *string) {
	o.Action = action
}

// WithLanguageTag adds the languageTag to the public send my mfa email code v4 params
func (o *PublicSendMyMFAEmailCodeV4Params) WithLanguageTag(languageTag *string) *PublicSendMyMFAEmailCodeV4Params {
	o.SetLanguageTag(languageTag)
	return o
}

// SetLanguageTag adds the languageTag to the public send my mfa email code v4 params
func (o *PublicSendMyMFAEmailCodeV4Params) SetLanguageTag(languageTag *string) {
	o.LanguageTag = languageTag
}

// WithNamespace adds the namespace to the public send my mfa email code v4 params
func (o *PublicSendMyMFAEmailCodeV4Params) WithNamespace(namespace string) *PublicSendMyMFAEmailCodeV4Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public send my mfa email code v4 params
func (o *PublicSendMyMFAEmailCodeV4Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *PublicSendMyMFAEmailCodeV4Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Action != nil {

		// form param action
		var frAction string
		if o.Action != nil {
			frAction = *o.Action
		}
		fAction := frAction
		if fAction != "" {
			if err := r.SetFormParam("action", fAction); err != nil {
				return err
			}
		}

	}

	if o.LanguageTag != nil {

		// form param languageTag
		var frLanguageTag string
		if o.LanguageTag != nil {
			frLanguageTag = *o.LanguageTag
		}
		fLanguageTag := frLanguageTag
		if fLanguageTag != "" {
			if err := r.SetFormParam("languageTag", fLanguageTag); err != nil {
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
