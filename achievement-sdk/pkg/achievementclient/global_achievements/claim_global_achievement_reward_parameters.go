// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package global_achievements

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

// NewClaimGlobalAchievementRewardParams creates a new ClaimGlobalAchievementRewardParams object
// with the default values initialized.
func NewClaimGlobalAchievementRewardParams() *ClaimGlobalAchievementRewardParams {
	var ()
	return &ClaimGlobalAchievementRewardParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewClaimGlobalAchievementRewardParamsWithTimeout creates a new ClaimGlobalAchievementRewardParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewClaimGlobalAchievementRewardParamsWithTimeout(timeout time.Duration) *ClaimGlobalAchievementRewardParams {
	var ()
	return &ClaimGlobalAchievementRewardParams{

		timeout: timeout,
	}
}

// NewClaimGlobalAchievementRewardParamsWithContext creates a new ClaimGlobalAchievementRewardParams object
// with the default values initialized, and the ability to set a context for a request
func NewClaimGlobalAchievementRewardParamsWithContext(ctx context.Context) *ClaimGlobalAchievementRewardParams {
	var ()
	return &ClaimGlobalAchievementRewardParams{

		Context: ctx,
	}
}

// NewClaimGlobalAchievementRewardParamsWithHTTPClient creates a new ClaimGlobalAchievementRewardParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewClaimGlobalAchievementRewardParamsWithHTTPClient(client *http.Client) *ClaimGlobalAchievementRewardParams {
	var ()
	return &ClaimGlobalAchievementRewardParams{
		HTTPClient: client,
	}
}

/*ClaimGlobalAchievementRewardParams contains all the parameters to send to the API endpoint
for the claim global achievement reward operation typically these are written to a http.Request
*/
type ClaimGlobalAchievementRewardParams struct {

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
	  user ID

	*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the claim global achievement reward params
func (o *ClaimGlobalAchievementRewardParams) WithTimeout(timeout time.Duration) *ClaimGlobalAchievementRewardParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the claim global achievement reward params
func (o *ClaimGlobalAchievementRewardParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the claim global achievement reward params
func (o *ClaimGlobalAchievementRewardParams) WithContext(ctx context.Context) *ClaimGlobalAchievementRewardParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the claim global achievement reward params
func (o *ClaimGlobalAchievementRewardParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the claim global achievement reward params
func (o *ClaimGlobalAchievementRewardParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the claim global achievement reward params
func (o *ClaimGlobalAchievementRewardParams) WithHTTPClient(client *http.Client) *ClaimGlobalAchievementRewardParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the claim global achievement reward params
func (o *ClaimGlobalAchievementRewardParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the claim global achievement reward params
func (o *ClaimGlobalAchievementRewardParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *ClaimGlobalAchievementRewardParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithAchievementCode adds the achievementCode to the claim global achievement reward params
func (o *ClaimGlobalAchievementRewardParams) WithAchievementCode(achievementCode string) *ClaimGlobalAchievementRewardParams {
	o.SetAchievementCode(achievementCode)
	return o
}

// SetAchievementCode adds the achievementCode to the claim global achievement reward params
func (o *ClaimGlobalAchievementRewardParams) SetAchievementCode(achievementCode string) {
	o.AchievementCode = achievementCode
}

// WithNamespace adds the namespace to the claim global achievement reward params
func (o *ClaimGlobalAchievementRewardParams) WithNamespace(namespace string) *ClaimGlobalAchievementRewardParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the claim global achievement reward params
func (o *ClaimGlobalAchievementRewardParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the claim global achievement reward params
func (o *ClaimGlobalAchievementRewardParams) WithUserID(userID string) *ClaimGlobalAchievementRewardParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the claim global achievement reward params
func (o *ClaimGlobalAchievementRewardParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *ClaimGlobalAchievementRewardParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
