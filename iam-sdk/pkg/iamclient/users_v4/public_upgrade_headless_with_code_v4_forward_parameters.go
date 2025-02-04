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

	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
)

// NewPublicUpgradeHeadlessWithCodeV4ForwardParams creates a new PublicUpgradeHeadlessWithCodeV4ForwardParams object
// with the default values initialized.
func NewPublicUpgradeHeadlessWithCodeV4ForwardParams() *PublicUpgradeHeadlessWithCodeV4ForwardParams {
	var ()
	return &PublicUpgradeHeadlessWithCodeV4ForwardParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicUpgradeHeadlessWithCodeV4ForwardParamsWithTimeout creates a new PublicUpgradeHeadlessWithCodeV4ForwardParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicUpgradeHeadlessWithCodeV4ForwardParamsWithTimeout(timeout time.Duration) *PublicUpgradeHeadlessWithCodeV4ForwardParams {
	var ()
	return &PublicUpgradeHeadlessWithCodeV4ForwardParams{

		timeout: timeout,
	}
}

// NewPublicUpgradeHeadlessWithCodeV4ForwardParamsWithContext creates a new PublicUpgradeHeadlessWithCodeV4ForwardParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicUpgradeHeadlessWithCodeV4ForwardParamsWithContext(ctx context.Context) *PublicUpgradeHeadlessWithCodeV4ForwardParams {
	var ()
	return &PublicUpgradeHeadlessWithCodeV4ForwardParams{

		Context: ctx,
	}
}

// NewPublicUpgradeHeadlessWithCodeV4ForwardParamsWithHTTPClient creates a new PublicUpgradeHeadlessWithCodeV4ForwardParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicUpgradeHeadlessWithCodeV4ForwardParamsWithHTTPClient(client *http.Client) *PublicUpgradeHeadlessWithCodeV4ForwardParams {
	var ()
	return &PublicUpgradeHeadlessWithCodeV4ForwardParams{
		HTTPClient: client,
	}
}

/*PublicUpgradeHeadlessWithCodeV4ForwardParams contains all the parameters to send to the API endpoint
for the public upgrade headless with code v4 forward operation typically these are written to a http.Request
*/
type PublicUpgradeHeadlessWithCodeV4ForwardParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *iamclientmodels.AccountUpgradeHeadlessAccountWithVerificationCodeForwardRequestV4

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the public upgrade headless with code v4 forward params
func (o *PublicUpgradeHeadlessWithCodeV4ForwardParams) WithTimeout(timeout time.Duration) *PublicUpgradeHeadlessWithCodeV4ForwardParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public upgrade headless with code v4 forward params
func (o *PublicUpgradeHeadlessWithCodeV4ForwardParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public upgrade headless with code v4 forward params
func (o *PublicUpgradeHeadlessWithCodeV4ForwardParams) WithContext(ctx context.Context) *PublicUpgradeHeadlessWithCodeV4ForwardParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public upgrade headless with code v4 forward params
func (o *PublicUpgradeHeadlessWithCodeV4ForwardParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public upgrade headless with code v4 forward params
func (o *PublicUpgradeHeadlessWithCodeV4ForwardParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public upgrade headless with code v4 forward params
func (o *PublicUpgradeHeadlessWithCodeV4ForwardParams) WithHTTPClient(client *http.Client) *PublicUpgradeHeadlessWithCodeV4ForwardParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public upgrade headless with code v4 forward params
func (o *PublicUpgradeHeadlessWithCodeV4ForwardParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public upgrade headless with code v4 forward params
func (o *PublicUpgradeHeadlessWithCodeV4ForwardParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PublicUpgradeHeadlessWithCodeV4ForwardParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the public upgrade headless with code v4 forward params
func (o *PublicUpgradeHeadlessWithCodeV4ForwardParams) WithBody(body *iamclientmodels.AccountUpgradeHeadlessAccountWithVerificationCodeForwardRequestV4) *PublicUpgradeHeadlessWithCodeV4ForwardParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the public upgrade headless with code v4 forward params
func (o *PublicUpgradeHeadlessWithCodeV4ForwardParams) SetBody(body *iamclientmodels.AccountUpgradeHeadlessAccountWithVerificationCodeForwardRequestV4) {
	o.Body = body
}

// WriteToRequest writes these params to a swagger request
func (o *PublicUpgradeHeadlessWithCodeV4ForwardParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
