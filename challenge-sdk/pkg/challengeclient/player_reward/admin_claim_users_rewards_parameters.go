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

// NewAdminClaimUsersRewardsParams creates a new AdminClaimUsersRewardsParams object
// with the default values initialized.
func NewAdminClaimUsersRewardsParams() *AdminClaimUsersRewardsParams {
	var ()
	return &AdminClaimUsersRewardsParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminClaimUsersRewardsParamsWithTimeout creates a new AdminClaimUsersRewardsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminClaimUsersRewardsParamsWithTimeout(timeout time.Duration) *AdminClaimUsersRewardsParams {
	var ()
	return &AdminClaimUsersRewardsParams{

		timeout: timeout,
	}
}

// NewAdminClaimUsersRewardsParamsWithContext creates a new AdminClaimUsersRewardsParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminClaimUsersRewardsParamsWithContext(ctx context.Context) *AdminClaimUsersRewardsParams {
	var ()
	return &AdminClaimUsersRewardsParams{

		Context: ctx,
	}
}

// NewAdminClaimUsersRewardsParamsWithHTTPClient creates a new AdminClaimUsersRewardsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminClaimUsersRewardsParamsWithHTTPClient(client *http.Client) *AdminClaimUsersRewardsParams {
	var ()
	return &AdminClaimUsersRewardsParams{
		HTTPClient: client,
	}
}

/*AdminClaimUsersRewardsParams contains all the parameters to send to the API endpoint
for the admin claim users rewards operation typically these are written to a http.Request
*/
type AdminClaimUsersRewardsParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body []*challengeclientmodels.ModelClaimUsersRewardsRequest
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

// WithTimeout adds the timeout to the admin claim users rewards params
func (o *AdminClaimUsersRewardsParams) WithTimeout(timeout time.Duration) *AdminClaimUsersRewardsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin claim users rewards params
func (o *AdminClaimUsersRewardsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin claim users rewards params
func (o *AdminClaimUsersRewardsParams) WithContext(ctx context.Context) *AdminClaimUsersRewardsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin claim users rewards params
func (o *AdminClaimUsersRewardsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin claim users rewards params
func (o *AdminClaimUsersRewardsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin claim users rewards params
func (o *AdminClaimUsersRewardsParams) WithHTTPClient(client *http.Client) *AdminClaimUsersRewardsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin claim users rewards params
func (o *AdminClaimUsersRewardsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin claim users rewards params
func (o *AdminClaimUsersRewardsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminClaimUsersRewardsParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the admin claim users rewards params
func (o *AdminClaimUsersRewardsParams) WithBody(body []*challengeclientmodels.ModelClaimUsersRewardsRequest) *AdminClaimUsersRewardsParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the admin claim users rewards params
func (o *AdminClaimUsersRewardsParams) SetBody(body []*challengeclientmodels.ModelClaimUsersRewardsRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the admin claim users rewards params
func (o *AdminClaimUsersRewardsParams) WithNamespace(namespace string) *AdminClaimUsersRewardsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin claim users rewards params
func (o *AdminClaimUsersRewardsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *AdminClaimUsersRewardsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
