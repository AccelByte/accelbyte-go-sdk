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
	"github.com/go-openapi/swag"
)

// Deprecated: 2025-07-16 - Use PublicGetUserRewardsSortBy<EnumValue>Constant instead.
// Get the enum in PublicGetUserRewardsParams
const (
	PublicGetUserRewardsCreatedAtConstant     = "createdAt"
	PublicGetUserRewardsCreatedAtAscConstant  = "createdAt:asc"
	PublicGetUserRewardsCreatedAtDescConstant = "createdAt:desc"
	PublicGetUserRewardsUpdatedAtConstant     = "updatedAt"
	PublicGetUserRewardsUpdatedAtAscConstant  = "updatedAt:asc"
	PublicGetUserRewardsUpdatedAtDescConstant = "updatedAt:desc"
)

// Deprecated: 2025-07-16 - Use PublicGetUserRewardsStatus<EnumValue>Constant instead.
// Get the enum in PublicGetUserRewardsParams
const (
	PublicGetUserRewardsCLAIMEDConstant   = "CLAIMED"
	PublicGetUserRewardsUNCLAIMEDConstant = "UNCLAIMED"
)

// Get the enum in PublicGetUserRewardsParams
const (
	PublicGetUserRewardsSortByCreatedAtConstant     = "createdAt"
	PublicGetUserRewardsSortByCreatedAtAscConstant  = "createdAt:asc"
	PublicGetUserRewardsSortByCreatedAtDescConstant = "createdAt:desc"
	PublicGetUserRewardsSortByUpdatedAtConstant     = "updatedAt"
	PublicGetUserRewardsSortByUpdatedAtAscConstant  = "updatedAt:asc"
	PublicGetUserRewardsSortByUpdatedAtDescConstant = "updatedAt:desc"
)

// Get the enum in PublicGetUserRewardsParams
const (
	PublicGetUserRewardsStatusCLAIMEDConstant   = "CLAIMED"
	PublicGetUserRewardsStatusUNCLAIMEDConstant = "UNCLAIMED"
)

// NewPublicGetUserRewardsParams creates a new PublicGetUserRewardsParams object
// with the default values initialized.
func NewPublicGetUserRewardsParams() *PublicGetUserRewardsParams {
	var (
		limitDefault  = int64(20)
		offsetDefault = int64(0)
	)
	return &PublicGetUserRewardsParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicGetUserRewardsParamsWithTimeout creates a new PublicGetUserRewardsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicGetUserRewardsParamsWithTimeout(timeout time.Duration) *PublicGetUserRewardsParams {
	var (
		limitDefault  = int64(20)
		offsetDefault = int64(0)
	)
	return &PublicGetUserRewardsParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: timeout,
	}
}

// NewPublicGetUserRewardsParamsWithContext creates a new PublicGetUserRewardsParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicGetUserRewardsParamsWithContext(ctx context.Context) *PublicGetUserRewardsParams {
	var (
		limitDefault  = int64(20)
		offsetDefault = int64(0)
	)
	return &PublicGetUserRewardsParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		Context: ctx,
	}
}

// NewPublicGetUserRewardsParamsWithHTTPClient creates a new PublicGetUserRewardsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicGetUserRewardsParamsWithHTTPClient(client *http.Client) *PublicGetUserRewardsParams {
	var (
		limitDefault  = int64(20)
		offsetDefault = int64(0)
	)
	return &PublicGetUserRewardsParams{
		Limit:      &limitDefault,
		Offset:     &offsetDefault,
		HTTPClient: client,
	}
}

/*PublicGetUserRewardsParams contains all the parameters to send to the API endpoint
for the public get user rewards operation typically these are written to a http.Request
*/
type PublicGetUserRewardsParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace of the game

	*/
	Namespace string
	/*ChallengeCode
	  reward's challenge code

	*/
	ChallengeCode *string
	/*GoalProgressionID
	  reward's goal progression id

	*/
	GoalProgressionID *string
	/*Limit
	  limit the amount of data retrieved

	*/
	Limit *int64
	/*Offset
	  offset

	*/
	Offset *int64
	/*SortBy
	    sort list by attributes.
				default value: updatedAt:desc.

	*/
	SortBy *string
	/*Status
	  user reward status

	*/
	Status *string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the public get user rewards params
func (o *PublicGetUserRewardsParams) WithTimeout(timeout time.Duration) *PublicGetUserRewardsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public get user rewards params
func (o *PublicGetUserRewardsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public get user rewards params
func (o *PublicGetUserRewardsParams) WithContext(ctx context.Context) *PublicGetUserRewardsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public get user rewards params
func (o *PublicGetUserRewardsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public get user rewards params
func (o *PublicGetUserRewardsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public get user rewards params
func (o *PublicGetUserRewardsParams) WithHTTPClient(client *http.Client) *PublicGetUserRewardsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public get user rewards params
func (o *PublicGetUserRewardsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public get user rewards params
func (o *PublicGetUserRewardsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PublicGetUserRewardsParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the public get user rewards params
func (o *PublicGetUserRewardsParams) WithNamespace(namespace string) *PublicGetUserRewardsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public get user rewards params
func (o *PublicGetUserRewardsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithChallengeCode adds the challengeCode to the public get user rewards params
func (o *PublicGetUserRewardsParams) WithChallengeCode(challengeCode *string) *PublicGetUserRewardsParams {
	o.SetChallengeCode(challengeCode)
	return o
}

// SetChallengeCode adds the challengeCode to the public get user rewards params
func (o *PublicGetUserRewardsParams) SetChallengeCode(challengeCode *string) {
	o.ChallengeCode = challengeCode
}

// WithGoalProgressionID adds the goalProgressionID to the public get user rewards params
func (o *PublicGetUserRewardsParams) WithGoalProgressionID(goalProgressionID *string) *PublicGetUserRewardsParams {
	o.SetGoalProgressionID(goalProgressionID)
	return o
}

// SetGoalProgressionID adds the goalProgressionId to the public get user rewards params
func (o *PublicGetUserRewardsParams) SetGoalProgressionID(goalProgressionID *string) {
	o.GoalProgressionID = goalProgressionID
}

// WithLimit adds the limit to the public get user rewards params
func (o *PublicGetUserRewardsParams) WithLimit(limit *int64) *PublicGetUserRewardsParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the public get user rewards params
func (o *PublicGetUserRewardsParams) SetLimit(limit *int64) {
	o.Limit = limit
}

// WithOffset adds the offset to the public get user rewards params
func (o *PublicGetUserRewardsParams) WithOffset(offset *int64) *PublicGetUserRewardsParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the public get user rewards params
func (o *PublicGetUserRewardsParams) SetOffset(offset *int64) {
	o.Offset = offset
}

// WithSortBy adds the sortBy to the public get user rewards params
func (o *PublicGetUserRewardsParams) WithSortBy(sortBy *string) *PublicGetUserRewardsParams {
	o.SetSortBy(sortBy)
	return o
}

// SetSortBy adds the sortBy to the public get user rewards params
func (o *PublicGetUserRewardsParams) SetSortBy(sortBy *string) {
	o.SortBy = sortBy
}

// WithStatus adds the status to the public get user rewards params
func (o *PublicGetUserRewardsParams) WithStatus(status *string) *PublicGetUserRewardsParams {
	o.SetStatus(status)
	return o
}

// SetStatus adds the status to the public get user rewards params
func (o *PublicGetUserRewardsParams) SetStatus(status *string) {
	o.Status = status
}

// WriteToRequest writes these params to a swagger request
func (o *PublicGetUserRewardsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	if o.ChallengeCode != nil {

		// query param challengeCode
		var qrChallengeCode string
		if o.ChallengeCode != nil {
			qrChallengeCode = *o.ChallengeCode
		}
		qChallengeCode := qrChallengeCode
		if qChallengeCode != "" {
			if err := r.SetQueryParam("challengeCode", qChallengeCode); err != nil {
				return err
			}
		}

	}

	if o.GoalProgressionID != nil {

		// query param goalProgressionId
		var qrGoalProgressionID string
		if o.GoalProgressionID != nil {
			qrGoalProgressionID = *o.GoalProgressionID
		}
		qGoalProgressionID := qrGoalProgressionID
		if qGoalProgressionID != "" {
			if err := r.SetQueryParam("goalProgressionId", qGoalProgressionID); err != nil {
				return err
			}
		}

	}

	if o.Limit != nil {

		// query param limit
		var qrLimit int64
		if o.Limit != nil {
			qrLimit = *o.Limit
		}
		qLimit := swag.FormatInt64(qrLimit)
		if qLimit != "" {
			if err := r.SetQueryParam("limit", qLimit); err != nil {
				return err
			}
		}

	}

	if o.Offset != nil {

		// query param offset
		var qrOffset int64
		if o.Offset != nil {
			qrOffset = *o.Offset
		}
		qOffset := swag.FormatInt64(qrOffset)
		if qOffset != "" {
			if err := r.SetQueryParam("offset", qOffset); err != nil {
				return err
			}
		}

	}

	if o.SortBy != nil {

		// query param sortBy
		var qrSortBy string
		if o.SortBy != nil {
			qrSortBy = *o.SortBy
		}
		qSortBy := qrSortBy
		if qSortBy != "" {
			if err := r.SetQueryParam("sortBy", qSortBy); err != nil {
				return err
			}
		}

	}

	if o.Status != nil {

		// query param status
		var qrStatus string
		if o.Status != nil {
			qrStatus = *o.Status
		}
		qStatus := qrStatus
		if qStatus != "" {
			if err := r.SetQueryParam("status", qStatus); err != nil {
				return err
			}
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
