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

// NewAdminListSchedulesParams creates a new AdminListSchedulesParams object
// with the default values initialized.
func NewAdminListSchedulesParams() *AdminListSchedulesParams {
	var (
		limitDefault  = int64(20)
		offsetDefault = int64(0)
	)
	return &AdminListSchedulesParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminListSchedulesParamsWithTimeout creates a new AdminListSchedulesParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminListSchedulesParamsWithTimeout(timeout time.Duration) *AdminListSchedulesParams {
	var (
		limitDefault  = int64(20)
		offsetDefault = int64(0)
	)
	return &AdminListSchedulesParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: timeout,
	}
}

// NewAdminListSchedulesParamsWithContext creates a new AdminListSchedulesParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminListSchedulesParamsWithContext(ctx context.Context) *AdminListSchedulesParams {
	var (
		limitDefault  = int64(20)
		offsetDefault = int64(0)
	)
	return &AdminListSchedulesParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		Context: ctx,
	}
}

// NewAdminListSchedulesParamsWithHTTPClient creates a new AdminListSchedulesParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminListSchedulesParamsWithHTTPClient(client *http.Client) *AdminListSchedulesParams {
	var (
		limitDefault  = int64(20)
		offsetDefault = int64(0)
	)
	return &AdminListSchedulesParams{
		Limit:      &limitDefault,
		Offset:     &offsetDefault,
		HTTPClient: client,
	}
}

/*AdminListSchedulesParams contains all the parameters to send to the API endpoint
for the admin list schedules operation typically these are written to a http.Request
*/
type AdminListSchedulesParams struct {

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
	/*DateTime
	  use RFC3339 format(2006-01-02T15:04:05Z).

	*/
	DateTime *string
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

// WithTimeout adds the timeout to the admin list schedules params
func (o *AdminListSchedulesParams) WithTimeout(timeout time.Duration) *AdminListSchedulesParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin list schedules params
func (o *AdminListSchedulesParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin list schedules params
func (o *AdminListSchedulesParams) WithContext(ctx context.Context) *AdminListSchedulesParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin list schedules params
func (o *AdminListSchedulesParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin list schedules params
func (o *AdminListSchedulesParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin list schedules params
func (o *AdminListSchedulesParams) WithHTTPClient(client *http.Client) *AdminListSchedulesParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin list schedules params
func (o *AdminListSchedulesParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin list schedules params
func (o *AdminListSchedulesParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminListSchedulesParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithChallengeCode adds the challengeCode to the admin list schedules params
func (o *AdminListSchedulesParams) WithChallengeCode(challengeCode string) *AdminListSchedulesParams {
	o.SetChallengeCode(challengeCode)
	return o
}

// SetChallengeCode adds the challengeCode to the admin list schedules params
func (o *AdminListSchedulesParams) SetChallengeCode(challengeCode string) {
	o.ChallengeCode = challengeCode
}

// WithNamespace adds the namespace to the admin list schedules params
func (o *AdminListSchedulesParams) WithNamespace(namespace string) *AdminListSchedulesParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin list schedules params
func (o *AdminListSchedulesParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithDateTime adds the dateTime to the admin list schedules params
func (o *AdminListSchedulesParams) WithDateTime(dateTime *string) *AdminListSchedulesParams {
	o.SetDateTime(dateTime)
	return o
}

// SetDateTime adds the dateTime to the admin list schedules params
func (o *AdminListSchedulesParams) SetDateTime(dateTime *string) {
	o.DateTime = dateTime
}

// WithLimit adds the limit to the admin list schedules params
func (o *AdminListSchedulesParams) WithLimit(limit *int64) *AdminListSchedulesParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the admin list schedules params
func (o *AdminListSchedulesParams) SetLimit(limit *int64) {
	o.Limit = limit
}

// WithOffset adds the offset to the admin list schedules params
func (o *AdminListSchedulesParams) WithOffset(offset *int64) *AdminListSchedulesParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the admin list schedules params
func (o *AdminListSchedulesParams) SetOffset(offset *int64) {
	o.Offset = offset
}

// WithUserID adds the userID to the admin list schedules params
func (o *AdminListSchedulesParams) WithUserID(userID *string) *AdminListSchedulesParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the admin list schedules params
func (o *AdminListSchedulesParams) SetUserID(userID *string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *AdminListSchedulesParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
