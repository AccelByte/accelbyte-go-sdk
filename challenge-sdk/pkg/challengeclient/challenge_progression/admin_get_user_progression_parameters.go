// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package challenge_progression

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

// NewAdminGetUserProgressionParams creates a new AdminGetUserProgressionParams object
// with the default values initialized.
func NewAdminGetUserProgressionParams() *AdminGetUserProgressionParams {
	var (
		limitDefault  = int64(20)
		offsetDefault = int64(0)
	)
	return &AdminGetUserProgressionParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminGetUserProgressionParamsWithTimeout creates a new AdminGetUserProgressionParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminGetUserProgressionParamsWithTimeout(timeout time.Duration) *AdminGetUserProgressionParams {
	var (
		limitDefault  = int64(20)
		offsetDefault = int64(0)
	)
	return &AdminGetUserProgressionParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: timeout,
	}
}

// NewAdminGetUserProgressionParamsWithContext creates a new AdminGetUserProgressionParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminGetUserProgressionParamsWithContext(ctx context.Context) *AdminGetUserProgressionParams {
	var (
		limitDefault  = int64(20)
		offsetDefault = int64(0)
	)
	return &AdminGetUserProgressionParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		Context: ctx,
	}
}

// NewAdminGetUserProgressionParamsWithHTTPClient creates a new AdminGetUserProgressionParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminGetUserProgressionParamsWithHTTPClient(client *http.Client) *AdminGetUserProgressionParams {
	var (
		limitDefault  = int64(20)
		offsetDefault = int64(0)
	)
	return &AdminGetUserProgressionParams{
		Limit:      &limitDefault,
		Offset:     &offsetDefault,
		HTTPClient: client,
	}
}

/*AdminGetUserProgressionParams contains all the parameters to send to the API endpoint
for the admin get user progression operation typically these are written to a http.Request
*/
type AdminGetUserProgressionParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*ChallengeCode
	  challenge code

	*/
	ChallengeCode string
	/*Namespace
	  namespace of the game

	*/
	Namespace string
	/*UserID
	  user id

	*/
	UserID string
	/*DateTime
	  specific schedule date time. use RFC3339 format(2006-01-02T15:04:05Z).

	*/
	DateTime *string
	/*GoalCode
	  goal code

	*/
	GoalCode *string
	/*Limit
	  limit the amount of data retrieved

	*/
	Limit *int64
	/*Offset
	  offset

	*/
	Offset *int64
	/*Tags
	  filter goals by tags, comma separated value

	*/
	Tags []string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin get user progression params
func (o *AdminGetUserProgressionParams) WithTimeout(timeout time.Duration) *AdminGetUserProgressionParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin get user progression params
func (o *AdminGetUserProgressionParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin get user progression params
func (o *AdminGetUserProgressionParams) WithContext(ctx context.Context) *AdminGetUserProgressionParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin get user progression params
func (o *AdminGetUserProgressionParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin get user progression params
func (o *AdminGetUserProgressionParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin get user progression params
func (o *AdminGetUserProgressionParams) WithHTTPClient(client *http.Client) *AdminGetUserProgressionParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin get user progression params
func (o *AdminGetUserProgressionParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin get user progression params
func (o *AdminGetUserProgressionParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminGetUserProgressionParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithChallengeCode adds the challengeCode to the admin get user progression params
func (o *AdminGetUserProgressionParams) WithChallengeCode(challengeCode string) *AdminGetUserProgressionParams {
	o.SetChallengeCode(challengeCode)
	return o
}

// SetChallengeCode adds the challengeCode to the admin get user progression params
func (o *AdminGetUserProgressionParams) SetChallengeCode(challengeCode string) {
	o.ChallengeCode = challengeCode
}

// WithNamespace adds the namespace to the admin get user progression params
func (o *AdminGetUserProgressionParams) WithNamespace(namespace string) *AdminGetUserProgressionParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin get user progression params
func (o *AdminGetUserProgressionParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the admin get user progression params
func (o *AdminGetUserProgressionParams) WithUserID(userID string) *AdminGetUserProgressionParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the admin get user progression params
func (o *AdminGetUserProgressionParams) SetUserID(userID string) {
	o.UserID = userID
}

// WithDateTime adds the dateTime to the admin get user progression params
func (o *AdminGetUserProgressionParams) WithDateTime(dateTime *string) *AdminGetUserProgressionParams {
	o.SetDateTime(dateTime)
	return o
}

// SetDateTime adds the dateTime to the admin get user progression params
func (o *AdminGetUserProgressionParams) SetDateTime(dateTime *string) {
	o.DateTime = dateTime
}

// WithGoalCode adds the goalCode to the admin get user progression params
func (o *AdminGetUserProgressionParams) WithGoalCode(goalCode *string) *AdminGetUserProgressionParams {
	o.SetGoalCode(goalCode)
	return o
}

// SetGoalCode adds the goalCode to the admin get user progression params
func (o *AdminGetUserProgressionParams) SetGoalCode(goalCode *string) {
	o.GoalCode = goalCode
}

// WithLimit adds the limit to the admin get user progression params
func (o *AdminGetUserProgressionParams) WithLimit(limit *int64) *AdminGetUserProgressionParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the admin get user progression params
func (o *AdminGetUserProgressionParams) SetLimit(limit *int64) {
	o.Limit = limit
}

// WithOffset adds the offset to the admin get user progression params
func (o *AdminGetUserProgressionParams) WithOffset(offset *int64) *AdminGetUserProgressionParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the admin get user progression params
func (o *AdminGetUserProgressionParams) SetOffset(offset *int64) {
	o.Offset = offset
}

// WithTags adds the tags to the admin get user progression params
func (o *AdminGetUserProgressionParams) WithTags(tags []string) *AdminGetUserProgressionParams {
	o.SetTags(tags)
	return o
}

// SetTags adds the tags to the admin get user progression params
func (o *AdminGetUserProgressionParams) SetTags(tags []string) {
	o.Tags = tags
}

// WriteToRequest writes these params to a swagger request
func (o *AdminGetUserProgressionParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param challengeCode
	if err := r.SetPathParam("challengeCode", o.ChallengeCode); err != nil {
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

	if o.DateTime != nil {

		// query param dateTime
		var qrDateTime string
		if o.DateTime != nil {
			qrDateTime = *o.DateTime
		}
		qDateTime := qrDateTime
		if qDateTime != "" {
			if err := r.SetQueryParam("dateTime", qDateTime); err != nil {
				return err
			}
		}

	}

	if o.GoalCode != nil {

		// query param goalCode
		var qrGoalCode string
		if o.GoalCode != nil {
			qrGoalCode = *o.GoalCode
		}
		qGoalCode := qrGoalCode
		if qGoalCode != "" {
			if err := r.SetQueryParam("goalCode", qGoalCode); err != nil {
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

	valuesTags := o.Tags

	joinedTags := swag.JoinByFormat(valuesTags, "csv")
	// query array param tags
	if err := r.SetQueryParam("tags", joinedTags...); err != nil {
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
