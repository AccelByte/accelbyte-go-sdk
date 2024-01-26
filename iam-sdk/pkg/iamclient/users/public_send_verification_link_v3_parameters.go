// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package users

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
)

// NewPublicSendVerificationLinkV3Params creates a new PublicSendVerificationLinkV3Params object
// with the default values initialized.
func NewPublicSendVerificationLinkV3Params() *PublicSendVerificationLinkV3Params {
	var ()
	return &PublicSendVerificationLinkV3Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicSendVerificationLinkV3ParamsWithTimeout creates a new PublicSendVerificationLinkV3Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicSendVerificationLinkV3ParamsWithTimeout(timeout time.Duration) *PublicSendVerificationLinkV3Params {
	var ()
	return &PublicSendVerificationLinkV3Params{

		timeout: timeout,
	}
}

// NewPublicSendVerificationLinkV3ParamsWithContext creates a new PublicSendVerificationLinkV3Params object
// with the default values initialized, and the ability to set a context for a request
func NewPublicSendVerificationLinkV3ParamsWithContext(ctx context.Context) *PublicSendVerificationLinkV3Params {
	var ()
	return &PublicSendVerificationLinkV3Params{

		Context: ctx,
	}
}

// NewPublicSendVerificationLinkV3ParamsWithHTTPClient creates a new PublicSendVerificationLinkV3Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicSendVerificationLinkV3ParamsWithHTTPClient(client *http.Client) *PublicSendVerificationLinkV3Params {
	var ()
	return &PublicSendVerificationLinkV3Params{
		HTTPClient: client,
	}
}

/*PublicSendVerificationLinkV3Params contains all the parameters to send to the API endpoint
for the public send verification link v3 operation typically these are written to a http.Request
*/
type PublicSendVerificationLinkV3Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *iamclientmodels.ModelSendVerificationLinkRequest

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the public send verification link v3 params
func (o *PublicSendVerificationLinkV3Params) WithTimeout(timeout time.Duration) *PublicSendVerificationLinkV3Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public send verification link v3 params
func (o *PublicSendVerificationLinkV3Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public send verification link v3 params
func (o *PublicSendVerificationLinkV3Params) WithContext(ctx context.Context) *PublicSendVerificationLinkV3Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public send verification link v3 params
func (o *PublicSendVerificationLinkV3Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public send verification link v3 params
func (o *PublicSendVerificationLinkV3Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public send verification link v3 params
func (o *PublicSendVerificationLinkV3Params) WithHTTPClient(client *http.Client) *PublicSendVerificationLinkV3Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public send verification link v3 params
func (o *PublicSendVerificationLinkV3Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public send verification link v3 params
func (o *PublicSendVerificationLinkV3Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PublicSendVerificationLinkV3Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the public send verification link v3 params
func (o *PublicSendVerificationLinkV3Params) WithBody(body *iamclientmodels.ModelSendVerificationLinkRequest) *PublicSendVerificationLinkV3Params {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the public send verification link v3 params
func (o *PublicSendVerificationLinkV3Params) SetBody(body *iamclientmodels.ModelSendVerificationLinkRequest) {
	o.Body = body
}

// WriteToRequest writes these params to a swagger request
func (o *PublicSendVerificationLinkV3Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
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
