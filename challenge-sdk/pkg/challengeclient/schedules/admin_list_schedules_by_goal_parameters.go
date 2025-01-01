// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package schedules

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

// NewAdminListSchedulesByGoalParams creates a new AdminListSchedulesByGoalParams object
// with the default values initialized.
func NewAdminListSchedulesByGoalParams() *AdminListSchedulesByGoalParams {
	var (
		limitDefault  = int64(20)
		offsetDefault = int64(0)
	)
	return &AdminListSchedulesByGoalParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminListSchedulesByGoalParamsWithTimeout creates a new AdminListSchedulesByGoalParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminListSchedulesByGoalParamsWithTimeout(timeout time.Duration) *AdminListSchedulesByGoalParams {
	var (
		limitDefault  = int64(20)
		offsetDefault = int64(0)
	)
	return &AdminListSchedulesByGoalParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: timeout,
	}
}

// NewAdminListSchedulesByGoalParamsWithContext creates a new AdminListSchedulesByGoalParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminListSchedulesByGoalParamsWithContext(ctx context.Context) *AdminListSchedulesByGoalParams {
	var (
		limitDefault  = int64(20)
		offsetDefault = int64(0)
	)
	return &AdminListSchedulesByGoalParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		Context: ctx,
	}
}

// NewAdminListSchedulesByGoalParamsWithHTTPClient creates a new AdminListSchedulesByGoalParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminListSchedulesByGoalParamsWithHTTPClient(client *http.Client) *AdminListSchedulesByGoalParams {
	var (
		limitDefault  = int64(20)
		offsetDefault = int64(0)
	)
	return &AdminListSchedulesByGoalParams{
		Limit:      &limitDefault,
		Offset:     &offsetDefault,
		HTTPClient: client,
	}
}

/*AdminListSchedulesByGoalParams contains all the parameters to send to the API endpoint
for the admin list schedules by goal operation typically these are written to a http.Request
*/
type AdminListSchedulesByGoalParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*ChallengeCode
	  challenge code

	*/
	ChallengeCode string
	/*Code
	  goal code

	*/
	Code string
	/*Namespace
	  namespace of the game

	*/
	Namespace string
	/*Limit
	  limit the amount of data retrieved

	*/
	Limit *int64
	/*Offset
	  offset

	*/
	Offset *int64
	/*UserID
	  userId, UUIDv4 format without hyphen, required when querying CUSTOM challenge schedule

	*/
	UserID *string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin list schedules by goal params
func (o *AdminListSchedulesByGoalParams) WithTimeout(timeout time.Duration) *AdminListSchedulesByGoalParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin list schedules by goal params
func (o *AdminListSchedulesByGoalParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin list schedules by goal params
func (o *AdminListSchedulesByGoalParams) WithContext(ctx context.Context) *AdminListSchedulesByGoalParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin list schedules by goal params
func (o *AdminListSchedulesByGoalParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin list schedules by goal params
func (o *AdminListSchedulesByGoalParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin list schedules by goal params
func (o *AdminListSchedulesByGoalParams) WithHTTPClient(client *http.Client) *AdminListSchedulesByGoalParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin list schedules by goal params
func (o *AdminListSchedulesByGoalParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin list schedules by goal params
func (o *AdminListSchedulesByGoalParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminListSchedulesByGoalParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithChallengeCode adds the challengeCode to the admin list schedules by goal params
func (o *AdminListSchedulesByGoalParams) WithChallengeCode(challengeCode string) *AdminListSchedulesByGoalParams {
	o.SetChallengeCode(challengeCode)
	return o
}

// SetChallengeCode adds the challengeCode to the admin list schedules by goal params
func (o *AdminListSchedulesByGoalParams) SetChallengeCode(challengeCode string) {
	o.ChallengeCode = challengeCode
}

// WithCode adds the code to the admin list schedules by goal params
func (o *AdminListSchedulesByGoalParams) WithCode(code string) *AdminListSchedulesByGoalParams {
	o.SetCode(code)
	return o
}

// SetCode adds the code to the admin list schedules by goal params
func (o *AdminListSchedulesByGoalParams) SetCode(code string) {
	o.Code = code
}

// WithNamespace adds the namespace to the admin list schedules by goal params
func (o *AdminListSchedulesByGoalParams) WithNamespace(namespace string) *AdminListSchedulesByGoalParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin list schedules by goal params
func (o *AdminListSchedulesByGoalParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithLimit adds the limit to the admin list schedules by goal params
func (o *AdminListSchedulesByGoalParams) WithLimit(limit *int64) *AdminListSchedulesByGoalParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the admin list schedules by goal params
func (o *AdminListSchedulesByGoalParams) SetLimit(limit *int64) {
	o.Limit = limit
}

// WithOffset adds the offset to the admin list schedules by goal params
func (o *AdminListSchedulesByGoalParams) WithOffset(offset *int64) *AdminListSchedulesByGoalParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the admin list schedules by goal params
func (o *AdminListSchedulesByGoalParams) SetOffset(offset *int64) {
	o.Offset = offset
}

// WithUserID adds the userID to the admin list schedules by goal params
func (o *AdminListSchedulesByGoalParams) WithUserID(userID *string) *AdminListSchedulesByGoalParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the admin list schedules by goal params
func (o *AdminListSchedulesByGoalParams) SetUserID(userID *string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *AdminListSchedulesByGoalParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param challengeCode
	if err := r.SetPathParam("challengeCode", o.ChallengeCode); err != nil {
		return err
	}

	// path param code
	if err := r.SetPathParam("code", o.Code); err != nil {
		return err
	}

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
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

	if o.UserID != nil {

		// query param userId
		var qrUserID string
		if o.UserID != nil {
			qrUserID = *o.UserID
		}
		qUserID := qrUserID
		if qUserID != "" {
			if err := r.SetQueryParam("userId", qUserID); err != nil {
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
