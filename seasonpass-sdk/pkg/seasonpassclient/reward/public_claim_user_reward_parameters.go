// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package reward

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/seasonpass-sdk/pkg/seasonpassclientmodels"
)

// NewPublicClaimUserRewardParams creates a new PublicClaimUserRewardParams object
// with the default values initialized.
func NewPublicClaimUserRewardParams() *PublicClaimUserRewardParams {
	var ()
	return &PublicClaimUserRewardParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicClaimUserRewardParamsWithTimeout creates a new PublicClaimUserRewardParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicClaimUserRewardParamsWithTimeout(timeout time.Duration) *PublicClaimUserRewardParams {
	var ()
	return &PublicClaimUserRewardParams{

		timeout: timeout,
	}
}

// NewPublicClaimUserRewardParamsWithContext creates a new PublicClaimUserRewardParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicClaimUserRewardParamsWithContext(ctx context.Context) *PublicClaimUserRewardParams {
	var ()
	return &PublicClaimUserRewardParams{

		Context: ctx,
	}
}

// NewPublicClaimUserRewardParamsWithHTTPClient creates a new PublicClaimUserRewardParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicClaimUserRewardParamsWithHTTPClient(client *http.Client) *PublicClaimUserRewardParams {
	var ()
	return &PublicClaimUserRewardParams{
		HTTPClient: client,
	}
}

/*PublicClaimUserRewardParams contains all the parameters to send to the API endpoint
for the public claim user reward operation typically these are written to a http.Request
*/
type PublicClaimUserRewardParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *seasonpassclientmodels.UserRewardClaim
	/*Namespace
	  Namespace

	*/
	Namespace string
	/*UserID*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the public claim user reward params
func (o *PublicClaimUserRewardParams) WithTimeout(timeout time.Duration) *PublicClaimUserRewardParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public claim user reward params
func (o *PublicClaimUserRewardParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public claim user reward params
func (o *PublicClaimUserRewardParams) WithContext(ctx context.Context) *PublicClaimUserRewardParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public claim user reward params
func (o *PublicClaimUserRewardParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public claim user reward params
func (o *PublicClaimUserRewardParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public claim user reward params
func (o *PublicClaimUserRewardParams) WithHTTPClient(client *http.Client) *PublicClaimUserRewardParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public claim user reward params
func (o *PublicClaimUserRewardParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public claim user reward params
func (o *PublicClaimUserRewardParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PublicClaimUserRewardParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the public claim user reward params
func (o *PublicClaimUserRewardParams) WithBody(body *seasonpassclientmodels.UserRewardClaim) *PublicClaimUserRewardParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the public claim user reward params
func (o *PublicClaimUserRewardParams) SetBody(body *seasonpassclientmodels.UserRewardClaim) {
	o.Body = body
}

// WithNamespace adds the namespace to the public claim user reward params
func (o *PublicClaimUserRewardParams) WithNamespace(namespace string) *PublicClaimUserRewardParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public claim user reward params
func (o *PublicClaimUserRewardParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the public claim user reward params
func (o *PublicClaimUserRewardParams) WithUserID(userID string) *PublicClaimUserRewardParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the public claim user reward params
func (o *PublicClaimUserRewardParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *PublicClaimUserRewardParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	// path param userId
	if err := r.SetPathParam("userId", o.UserID); err != nil {
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
