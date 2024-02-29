// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package player_reward

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/challenge-sdk/pkg/challengeclientmodels"
)

// NewPublicClaimUserRewardsParams creates a new PublicClaimUserRewardsParams object
// with the default values initialized.
func NewPublicClaimUserRewardsParams() *PublicClaimUserRewardsParams {
	var ()
	return &PublicClaimUserRewardsParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicClaimUserRewardsParamsWithTimeout creates a new PublicClaimUserRewardsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicClaimUserRewardsParamsWithTimeout(timeout time.Duration) *PublicClaimUserRewardsParams {
	var ()
	return &PublicClaimUserRewardsParams{

		timeout: timeout,
	}
}

// NewPublicClaimUserRewardsParamsWithContext creates a new PublicClaimUserRewardsParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicClaimUserRewardsParamsWithContext(ctx context.Context) *PublicClaimUserRewardsParams {
	var ()
	return &PublicClaimUserRewardsParams{

		Context: ctx,
	}
}

// NewPublicClaimUserRewardsParamsWithHTTPClient creates a new PublicClaimUserRewardsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicClaimUserRewardsParamsWithHTTPClient(client *http.Client) *PublicClaimUserRewardsParams {
	var ()
	return &PublicClaimUserRewardsParams{
		HTTPClient: client,
	}
}

/*PublicClaimUserRewardsParams contains all the parameters to send to the API endpoint
for the public claim user rewards operation typically these are written to a http.Request
*/
type PublicClaimUserRewardsParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *challengeclientmodels.ModelClaimUserRewardsReq
	/*Namespace
	  namespace of the game

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the public claim user rewards params
func (o *PublicClaimUserRewardsParams) WithTimeout(timeout time.Duration) *PublicClaimUserRewardsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public claim user rewards params
func (o *PublicClaimUserRewardsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public claim user rewards params
func (o *PublicClaimUserRewardsParams) WithContext(ctx context.Context) *PublicClaimUserRewardsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public claim user rewards params
func (o *PublicClaimUserRewardsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public claim user rewards params
func (o *PublicClaimUserRewardsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public claim user rewards params
func (o *PublicClaimUserRewardsParams) WithHTTPClient(client *http.Client) *PublicClaimUserRewardsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public claim user rewards params
func (o *PublicClaimUserRewardsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public claim user rewards params
func (o *PublicClaimUserRewardsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PublicClaimUserRewardsParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the public claim user rewards params
func (o *PublicClaimUserRewardsParams) WithBody(body *challengeclientmodels.ModelClaimUserRewardsReq) *PublicClaimUserRewardsParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the public claim user rewards params
func (o *PublicClaimUserRewardsParams) SetBody(body *challengeclientmodels.ModelClaimUserRewardsReq) {
	o.Body = body
}

// WithNamespace adds the namespace to the public claim user rewards params
func (o *PublicClaimUserRewardsParams) WithNamespace(namespace string) *PublicClaimUserRewardsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public claim user rewards params
func (o *PublicClaimUserRewardsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *PublicClaimUserRewardsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
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
