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

// NewPublicInviteUserV4Params creates a new PublicInviteUserV4Params object
// with the default values initialized.
func NewPublicInviteUserV4Params() *PublicInviteUserV4Params {
	var ()
	return &PublicInviteUserV4Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicInviteUserV4ParamsWithTimeout creates a new PublicInviteUserV4Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicInviteUserV4ParamsWithTimeout(timeout time.Duration) *PublicInviteUserV4Params {
	var ()
	return &PublicInviteUserV4Params{

		timeout: timeout,
	}
}

// NewPublicInviteUserV4ParamsWithContext creates a new PublicInviteUserV4Params object
// with the default values initialized, and the ability to set a context for a request
func NewPublicInviteUserV4ParamsWithContext(ctx context.Context) *PublicInviteUserV4Params {
	var ()
	return &PublicInviteUserV4Params{

		Context: ctx,
	}
}

// NewPublicInviteUserV4ParamsWithHTTPClient creates a new PublicInviteUserV4Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicInviteUserV4ParamsWithHTTPClient(client *http.Client) *PublicInviteUserV4Params {
	var ()
	return &PublicInviteUserV4Params{
		HTTPClient: client,
	}
}

/*PublicInviteUserV4Params contains all the parameters to send to the API endpoint
for the public invite user v4 operation typically these are written to a http.Request
*/
type PublicInviteUserV4Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *iamclientmodels.ModelPublicInviteUserRequestV4

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the public invite user v4 params
func (o *PublicInviteUserV4Params) WithTimeout(timeout time.Duration) *PublicInviteUserV4Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public invite user v4 params
func (o *PublicInviteUserV4Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public invite user v4 params
func (o *PublicInviteUserV4Params) WithContext(ctx context.Context) *PublicInviteUserV4Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public invite user v4 params
func (o *PublicInviteUserV4Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public invite user v4 params
func (o *PublicInviteUserV4Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public invite user v4 params
func (o *PublicInviteUserV4Params) WithHTTPClient(client *http.Client) *PublicInviteUserV4Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public invite user v4 params
func (o *PublicInviteUserV4Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public invite user v4 params
func (o *PublicInviteUserV4Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PublicInviteUserV4Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the public invite user v4 params
func (o *PublicInviteUserV4Params) WithBody(body *iamclientmodels.ModelPublicInviteUserRequestV4) *PublicInviteUserV4Params {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the public invite user v4 params
func (o *PublicInviteUserV4Params) SetBody(body *iamclientmodels.ModelPublicInviteUserRequestV4) {
	o.Body = body
}

// WriteToRequest writes these params to a swagger request
func (o *PublicInviteUserV4Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
