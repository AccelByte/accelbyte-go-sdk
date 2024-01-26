// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package leaderboard_configuration

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/leaderboard-sdk/pkg/leaderboardclientmodels"
)

// NewUpdateLeaderboardConfigurationAdminV1Params creates a new UpdateLeaderboardConfigurationAdminV1Params object
// with the default values initialized.
func NewUpdateLeaderboardConfigurationAdminV1Params() *UpdateLeaderboardConfigurationAdminV1Params {
	var ()
	return &UpdateLeaderboardConfigurationAdminV1Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewUpdateLeaderboardConfigurationAdminV1ParamsWithTimeout creates a new UpdateLeaderboardConfigurationAdminV1Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewUpdateLeaderboardConfigurationAdminV1ParamsWithTimeout(timeout time.Duration) *UpdateLeaderboardConfigurationAdminV1Params {
	var ()
	return &UpdateLeaderboardConfigurationAdminV1Params{

		timeout: timeout,
	}
}

// NewUpdateLeaderboardConfigurationAdminV1ParamsWithContext creates a new UpdateLeaderboardConfigurationAdminV1Params object
// with the default values initialized, and the ability to set a context for a request
func NewUpdateLeaderboardConfigurationAdminV1ParamsWithContext(ctx context.Context) *UpdateLeaderboardConfigurationAdminV1Params {
	var ()
	return &UpdateLeaderboardConfigurationAdminV1Params{

		Context: ctx,
	}
}

// NewUpdateLeaderboardConfigurationAdminV1ParamsWithHTTPClient creates a new UpdateLeaderboardConfigurationAdminV1Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewUpdateLeaderboardConfigurationAdminV1ParamsWithHTTPClient(client *http.Client) *UpdateLeaderboardConfigurationAdminV1Params {
	var ()
	return &UpdateLeaderboardConfigurationAdminV1Params{
		HTTPClient: client,
	}
}

/*UpdateLeaderboardConfigurationAdminV1Params contains all the parameters to send to the API endpoint
for the update leaderboard configuration admin v1 operation typically these are written to a http.Request
*/
type UpdateLeaderboardConfigurationAdminV1Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *leaderboardclientmodels.ModelsUpdateLeaderboardConfigReq
	/*LeaderboardCode
	  human readable unique code to indentify leaderboard. Must be lowercase and maximum length is 48

	*/
	LeaderboardCode string
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

// WithTimeout adds the timeout to the update leaderboard configuration admin v1 params
func (o *UpdateLeaderboardConfigurationAdminV1Params) WithTimeout(timeout time.Duration) *UpdateLeaderboardConfigurationAdminV1Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the update leaderboard configuration admin v1 params
func (o *UpdateLeaderboardConfigurationAdminV1Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the update leaderboard configuration admin v1 params
func (o *UpdateLeaderboardConfigurationAdminV1Params) WithContext(ctx context.Context) *UpdateLeaderboardConfigurationAdminV1Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the update leaderboard configuration admin v1 params
func (o *UpdateLeaderboardConfigurationAdminV1Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the update leaderboard configuration admin v1 params
func (o *UpdateLeaderboardConfigurationAdminV1Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the update leaderboard configuration admin v1 params
func (o *UpdateLeaderboardConfigurationAdminV1Params) WithHTTPClient(client *http.Client) *UpdateLeaderboardConfigurationAdminV1Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the update leaderboard configuration admin v1 params
func (o *UpdateLeaderboardConfigurationAdminV1Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the update leaderboard configuration admin v1 params
func (o *UpdateLeaderboardConfigurationAdminV1Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *UpdateLeaderboardConfigurationAdminV1Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the update leaderboard configuration admin v1 params
func (o *UpdateLeaderboardConfigurationAdminV1Params) WithBody(body *leaderboardclientmodels.ModelsUpdateLeaderboardConfigReq) *UpdateLeaderboardConfigurationAdminV1Params {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the update leaderboard configuration admin v1 params
func (o *UpdateLeaderboardConfigurationAdminV1Params) SetBody(body *leaderboardclientmodels.ModelsUpdateLeaderboardConfigReq) {
	o.Body = body
}

// WithLeaderboardCode adds the leaderboardCode to the update leaderboard configuration admin v1 params
func (o *UpdateLeaderboardConfigurationAdminV1Params) WithLeaderboardCode(leaderboardCode string) *UpdateLeaderboardConfigurationAdminV1Params {
	o.SetLeaderboardCode(leaderboardCode)
	return o
}

// SetLeaderboardCode adds the leaderboardCode to the update leaderboard configuration admin v1 params
func (o *UpdateLeaderboardConfigurationAdminV1Params) SetLeaderboardCode(leaderboardCode string) {
	o.LeaderboardCode = leaderboardCode
}

// WithNamespace adds the namespace to the update leaderboard configuration admin v1 params
func (o *UpdateLeaderboardConfigurationAdminV1Params) WithNamespace(namespace string) *UpdateLeaderboardConfigurationAdminV1Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the update leaderboard configuration admin v1 params
func (o *UpdateLeaderboardConfigurationAdminV1Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *UpdateLeaderboardConfigurationAdminV1Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
	}

	// path param leaderboardCode
	if err := r.SetPathParam("leaderboardCode", o.LeaderboardCode); err != nil {
		return err
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
