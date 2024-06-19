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

// NewPublicChallengeMyMFAV4Params creates a new PublicChallengeMyMFAV4Params object
// with the default values initialized.
func NewPublicChallengeMyMFAV4Params() *PublicChallengeMyMFAV4Params {
	var ()
	return &PublicChallengeMyMFAV4Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicChallengeMyMFAV4ParamsWithTimeout creates a new PublicChallengeMyMFAV4Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicChallengeMyMFAV4ParamsWithTimeout(timeout time.Duration) *PublicChallengeMyMFAV4Params {
	var ()
	return &PublicChallengeMyMFAV4Params{

		timeout: timeout,
	}
}

// NewPublicChallengeMyMFAV4ParamsWithContext creates a new PublicChallengeMyMFAV4Params object
// with the default values initialized, and the ability to set a context for a request
func NewPublicChallengeMyMFAV4ParamsWithContext(ctx context.Context) *PublicChallengeMyMFAV4Params {
	var ()
	return &PublicChallengeMyMFAV4Params{

		Context: ctx,
	}
}

// NewPublicChallengeMyMFAV4ParamsWithHTTPClient creates a new PublicChallengeMyMFAV4Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicChallengeMyMFAV4ParamsWithHTTPClient(client *http.Client) *PublicChallengeMyMFAV4Params {
	var ()
	return &PublicChallengeMyMFAV4Params{
		HTTPClient: client,
	}
}

/*PublicChallengeMyMFAV4Params contains all the parameters to send to the API endpoint
for the public challenge my mfav4 operation typically these are written to a http.Request
*/
type PublicChallengeMyMFAV4Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Code
	  MFA code

	*/
	Code *string
	/*Factor
	  MFA factor

	*/
	Factor *string
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

// WithTimeout adds the timeout to the public challenge my mfav4 params
func (o *PublicChallengeMyMFAV4Params) WithTimeout(timeout time.Duration) *PublicChallengeMyMFAV4Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public challenge my mfav4 params
func (o *PublicChallengeMyMFAV4Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public challenge my mfav4 params
func (o *PublicChallengeMyMFAV4Params) WithContext(ctx context.Context) *PublicChallengeMyMFAV4Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public challenge my mfav4 params
func (o *PublicChallengeMyMFAV4Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public challenge my mfav4 params
func (o *PublicChallengeMyMFAV4Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public challenge my mfav4 params
func (o *PublicChallengeMyMFAV4Params) WithHTTPClient(client *http.Client) *PublicChallengeMyMFAV4Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public challenge my mfav4 params
func (o *PublicChallengeMyMFAV4Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public challenge my mfav4 params
func (o *PublicChallengeMyMFAV4Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PublicChallengeMyMFAV4Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithCode adds the code to the public challenge my mfav4 params
func (o *PublicChallengeMyMFAV4Params) WithCode(code *string) *PublicChallengeMyMFAV4Params {
	o.SetCode(code)
	return o
}

// SetCode adds the code to the public challenge my mfav4 params
func (o *PublicChallengeMyMFAV4Params) SetCode(code *string) {
	o.Code = code
}

// WithFactor adds the factor to the public challenge my mfav4 params
func (o *PublicChallengeMyMFAV4Params) WithFactor(factor *string) *PublicChallengeMyMFAV4Params {
	o.SetFactor(factor)
	return o
}

// SetFactor adds the factor to the public challenge my mfav4 params
func (o *PublicChallengeMyMFAV4Params) SetFactor(factor *string) {
	o.Factor = factor
}

// WithNamespace adds the namespace to the public challenge my mfav4 params
func (o *PublicChallengeMyMFAV4Params) WithNamespace(namespace string) *PublicChallengeMyMFAV4Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public challenge my mfav4 params
func (o *PublicChallengeMyMFAV4Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *PublicChallengeMyMFAV4Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Code != nil {

		// form param code
		var frCode string
		if o.Code != nil {
			frCode = *o.Code
		}
		fCode := frCode
		if fCode != "" {
			if err := r.SetFormParam("code", fCode); err != nil {
				return err
			}
		}

	}

	if o.Factor != nil {

		// form param factor
		var frFactor string
		if o.Factor != nil {
			frFactor = *o.Factor
		}
		fFactor := frFactor
		if fFactor != "" {
			if err := r.SetFormParam("factor", fFactor); err != nil {
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
