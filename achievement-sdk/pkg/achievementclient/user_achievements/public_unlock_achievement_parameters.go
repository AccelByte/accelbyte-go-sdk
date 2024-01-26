// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package user_achievements

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

// NewPublicUnlockAchievementParams creates a new PublicUnlockAchievementParams object
// with the default values initialized.
func NewPublicUnlockAchievementParams() *PublicUnlockAchievementParams {
	var ()
	return &PublicUnlockAchievementParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicUnlockAchievementParamsWithTimeout creates a new PublicUnlockAchievementParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicUnlockAchievementParamsWithTimeout(timeout time.Duration) *PublicUnlockAchievementParams {
	var ()
	return &PublicUnlockAchievementParams{

		timeout: timeout,
	}
}

// NewPublicUnlockAchievementParamsWithContext creates a new PublicUnlockAchievementParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicUnlockAchievementParamsWithContext(ctx context.Context) *PublicUnlockAchievementParams {
	var ()
	return &PublicUnlockAchievementParams{

		Context: ctx,
	}
}

// NewPublicUnlockAchievementParamsWithHTTPClient creates a new PublicUnlockAchievementParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicUnlockAchievementParamsWithHTTPClient(client *http.Client) *PublicUnlockAchievementParams {
	var ()
	return &PublicUnlockAchievementParams{
		HTTPClient: client,
	}
}

/*PublicUnlockAchievementParams contains all the parameters to send to the API endpoint
for the public unlock achievement operation typically these are written to a http.Request
*/
type PublicUnlockAchievementParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*AchievementCode
	  achievement code

	*/
	AchievementCode string
	/*Namespace
	  namespace of the game

	*/
	Namespace string
	/*UserID
	  user id

	*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the public unlock achievement params
func (o *PublicUnlockAchievementParams) WithTimeout(timeout time.Duration) *PublicUnlockAchievementParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public unlock achievement params
func (o *PublicUnlockAchievementParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public unlock achievement params
func (o *PublicUnlockAchievementParams) WithContext(ctx context.Context) *PublicUnlockAchievementParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public unlock achievement params
func (o *PublicUnlockAchievementParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public unlock achievement params
func (o *PublicUnlockAchievementParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public unlock achievement params
func (o *PublicUnlockAchievementParams) WithHTTPClient(client *http.Client) *PublicUnlockAchievementParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public unlock achievement params
func (o *PublicUnlockAchievementParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public unlock achievement params
func (o *PublicUnlockAchievementParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PublicUnlockAchievementParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithAchievementCode adds the achievementCode to the public unlock achievement params
func (o *PublicUnlockAchievementParams) WithAchievementCode(achievementCode string) *PublicUnlockAchievementParams {
	o.SetAchievementCode(achievementCode)
	return o
}

// SetAchievementCode adds the achievementCode to the public unlock achievement params
func (o *PublicUnlockAchievementParams) SetAchievementCode(achievementCode string) {
	o.AchievementCode = achievementCode
}

// WithNamespace adds the namespace to the public unlock achievement params
func (o *PublicUnlockAchievementParams) WithNamespace(namespace string) *PublicUnlockAchievementParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public unlock achievement params
func (o *PublicUnlockAchievementParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the public unlock achievement params
func (o *PublicUnlockAchievementParams) WithUserID(userID string) *PublicUnlockAchievementParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the public unlock achievement params
func (o *PublicUnlockAchievementParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *PublicUnlockAchievementParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param achievementCode
	if err := r.SetPathParam("achievementCode", o.AchievementCode); err != nil {
		return err
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
