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

// NewPublicEnableMyEmailV4Params creates a new PublicEnableMyEmailV4Params object
// with the default values initialized.
func NewPublicEnableMyEmailV4Params() *PublicEnableMyEmailV4Params {
	var ()
	return &PublicEnableMyEmailV4Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicEnableMyEmailV4ParamsWithTimeout creates a new PublicEnableMyEmailV4Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicEnableMyEmailV4ParamsWithTimeout(timeout time.Duration) *PublicEnableMyEmailV4Params {
	var ()
	return &PublicEnableMyEmailV4Params{

		timeout: timeout,
	}
}

// NewPublicEnableMyEmailV4ParamsWithContext creates a new PublicEnableMyEmailV4Params object
// with the default values initialized, and the ability to set a context for a request
func NewPublicEnableMyEmailV4ParamsWithContext(ctx context.Context) *PublicEnableMyEmailV4Params {
	var ()
	return &PublicEnableMyEmailV4Params{

		Context: ctx,
	}
}

// NewPublicEnableMyEmailV4ParamsWithHTTPClient creates a new PublicEnableMyEmailV4Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicEnableMyEmailV4ParamsWithHTTPClient(client *http.Client) *PublicEnableMyEmailV4Params {
	var ()
	return &PublicEnableMyEmailV4Params{
		HTTPClient: client,
	}
}

/*PublicEnableMyEmailV4Params contains all the parameters to send to the API endpoint
for the public enable my email v4 operation typically these are written to a http.Request
*/
type PublicEnableMyEmailV4Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Code
	  code

	*/
	Code string
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

// WithTimeout adds the timeout to the public enable my email v4 params
func (o *PublicEnableMyEmailV4Params) WithTimeout(timeout time.Duration) *PublicEnableMyEmailV4Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public enable my email v4 params
func (o *PublicEnableMyEmailV4Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public enable my email v4 params
func (o *PublicEnableMyEmailV4Params) WithContext(ctx context.Context) *PublicEnableMyEmailV4Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public enable my email v4 params
func (o *PublicEnableMyEmailV4Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public enable my email v4 params
func (o *PublicEnableMyEmailV4Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public enable my email v4 params
func (o *PublicEnableMyEmailV4Params) WithHTTPClient(client *http.Client) *PublicEnableMyEmailV4Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public enable my email v4 params
func (o *PublicEnableMyEmailV4Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public enable my email v4 params
func (o *PublicEnableMyEmailV4Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PublicEnableMyEmailV4Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithCode adds the code to the public enable my email v4 params
func (o *PublicEnableMyEmailV4Params) WithCode(code string) *PublicEnableMyEmailV4Params {
	o.SetCode(code)
	return o
}

// SetCode adds the code to the public enable my email v4 params
func (o *PublicEnableMyEmailV4Params) SetCode(code string) {
	o.Code = code
}

// WithNamespace adds the namespace to the public enable my email v4 params
func (o *PublicEnableMyEmailV4Params) WithNamespace(namespace string) *PublicEnableMyEmailV4Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public enable my email v4 params
func (o *PublicEnableMyEmailV4Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *PublicEnableMyEmailV4Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// form param code
	frCode := o.Code
	fCode := frCode
	if fCode != "" {
		if err := r.SetFormParam("code", fCode); err != nil {
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
