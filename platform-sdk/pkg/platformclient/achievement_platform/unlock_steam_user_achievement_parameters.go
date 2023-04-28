// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package achievement_platform

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
)

// NewUnlockSteamUserAchievementParams creates a new UnlockSteamUserAchievementParams object
// with the default values initialized.
func NewUnlockSteamUserAchievementParams() *UnlockSteamUserAchievementParams {
	var ()
	return &UnlockSteamUserAchievementParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewUnlockSteamUserAchievementParamsWithTimeout creates a new UnlockSteamUserAchievementParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewUnlockSteamUserAchievementParamsWithTimeout(timeout time.Duration) *UnlockSteamUserAchievementParams {
	var ()
	return &UnlockSteamUserAchievementParams{

		timeout: timeout,
	}
}

// NewUnlockSteamUserAchievementParamsWithContext creates a new UnlockSteamUserAchievementParams object
// with the default values initialized, and the ability to set a context for a request
func NewUnlockSteamUserAchievementParamsWithContext(ctx context.Context) *UnlockSteamUserAchievementParams {
	var ()
	return &UnlockSteamUserAchievementParams{

		Context: ctx,
	}
}

// NewUnlockSteamUserAchievementParamsWithHTTPClient creates a new UnlockSteamUserAchievementParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewUnlockSteamUserAchievementParamsWithHTTPClient(client *http.Client) *UnlockSteamUserAchievementParams {
	var ()
	return &UnlockSteamUserAchievementParams{
		HTTPClient: client,
	}
}

/*UnlockSteamUserAchievementParams contains all the parameters to send to the API endpoint
for the unlock steam user achievement operation typically these are written to a http.Request
*/
type UnlockSteamUserAchievementParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *platformclientmodels.SteamAchievementUpdateRequest
	/*Namespace*/
	Namespace string
	/*UserID*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the unlock steam user achievement params
func (o *UnlockSteamUserAchievementParams) WithTimeout(timeout time.Duration) *UnlockSteamUserAchievementParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the unlock steam user achievement params
func (o *UnlockSteamUserAchievementParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the unlock steam user achievement params
func (o *UnlockSteamUserAchievementParams) WithContext(ctx context.Context) *UnlockSteamUserAchievementParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the unlock steam user achievement params
func (o *UnlockSteamUserAchievementParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the unlock steam user achievement params
func (o *UnlockSteamUserAchievementParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the unlock steam user achievement params
func (o *UnlockSteamUserAchievementParams) WithHTTPClient(client *http.Client) *UnlockSteamUserAchievementParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the unlock steam user achievement params
func (o *UnlockSteamUserAchievementParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the unlock steam user achievement params
func (o *UnlockSteamUserAchievementParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the unlock steam user achievement params
func (o *UnlockSteamUserAchievementParams) WithBody(body *platformclientmodels.SteamAchievementUpdateRequest) *UnlockSteamUserAchievementParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the unlock steam user achievement params
func (o *UnlockSteamUserAchievementParams) SetBody(body *platformclientmodels.SteamAchievementUpdateRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the unlock steam user achievement params
func (o *UnlockSteamUserAchievementParams) WithNamespace(namespace string) *UnlockSteamUserAchievementParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the unlock steam user achievement params
func (o *UnlockSteamUserAchievementParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the unlock steam user achievement params
func (o *UnlockSteamUserAchievementParams) WithUserID(userID string) *UnlockSteamUserAchievementParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the unlock steam user achievement params
func (o *UnlockSteamUserAchievementParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *UnlockSteamUserAchievementParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
