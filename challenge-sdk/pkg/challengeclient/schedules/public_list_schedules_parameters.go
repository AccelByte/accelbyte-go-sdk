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

// NewPublicListSchedulesParams creates a new PublicListSchedulesParams object
// with the default values initialized.
func NewPublicListSchedulesParams() *PublicListSchedulesParams {
	var (
		limitDefault  = int64(20)
		offsetDefault = int64(0)
	)
	return &PublicListSchedulesParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicListSchedulesParamsWithTimeout creates a new PublicListSchedulesParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicListSchedulesParamsWithTimeout(timeout time.Duration) *PublicListSchedulesParams {
	var (
		limitDefault  = int64(20)
		offsetDefault = int64(0)
	)
	return &PublicListSchedulesParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: timeout,
	}
}

// NewPublicListSchedulesParamsWithContext creates a new PublicListSchedulesParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicListSchedulesParamsWithContext(ctx context.Context) *PublicListSchedulesParams {
	var (
		limitDefault  = int64(20)
		offsetDefault = int64(0)
	)
	return &PublicListSchedulesParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		Context: ctx,
	}
}

// NewPublicListSchedulesParamsWithHTTPClient creates a new PublicListSchedulesParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicListSchedulesParamsWithHTTPClient(client *http.Client) *PublicListSchedulesParams {
	var (
		limitDefault  = int64(20)
		offsetDefault = int64(0)
	)
	return &PublicListSchedulesParams{
		Limit:      &limitDefault,
		Offset:     &offsetDefault,
		HTTPClient: client,
	}
}

/*PublicListSchedulesParams contains all the parameters to send to the API endpoint
for the public list schedules operation typically these are written to a http.Request
*/
type PublicListSchedulesParams struct {

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

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the public list schedules params
func (o *PublicListSchedulesParams) WithTimeout(timeout time.Duration) *PublicListSchedulesParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public list schedules params
func (o *PublicListSchedulesParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public list schedules params
func (o *PublicListSchedulesParams) WithContext(ctx context.Context) *PublicListSchedulesParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public list schedules params
func (o *PublicListSchedulesParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public list schedules params
func (o *PublicListSchedulesParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public list schedules params
func (o *PublicListSchedulesParams) WithHTTPClient(client *http.Client) *PublicListSchedulesParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public list schedules params
func (o *PublicListSchedulesParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public list schedules params
func (o *PublicListSchedulesParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PublicListSchedulesParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithChallengeCode adds the challengeCode to the public list schedules params
func (o *PublicListSchedulesParams) WithChallengeCode(challengeCode string) *PublicListSchedulesParams {
	o.SetChallengeCode(challengeCode)
	return o
}

// SetChallengeCode adds the challengeCode to the public list schedules params
func (o *PublicListSchedulesParams) SetChallengeCode(challengeCode string) {
	o.ChallengeCode = challengeCode
}

// WithNamespace adds the namespace to the public list schedules params
func (o *PublicListSchedulesParams) WithNamespace(namespace string) *PublicListSchedulesParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public list schedules params
func (o *PublicListSchedulesParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithDateTime adds the dateTime to the public list schedules params
func (o *PublicListSchedulesParams) WithDateTime(dateTime *string) *PublicListSchedulesParams {
	o.SetDateTime(dateTime)
	return o
}

// SetDateTime adds the dateTime to the public list schedules params
func (o *PublicListSchedulesParams) SetDateTime(dateTime *string) {
	o.DateTime = dateTime
}

// WithLimit adds the limit to the public list schedules params
func (o *PublicListSchedulesParams) WithLimit(limit *int64) *PublicListSchedulesParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the public list schedules params
func (o *PublicListSchedulesParams) SetLimit(limit *int64) {
	o.Limit = limit
}

// WithOffset adds the offset to the public list schedules params
func (o *PublicListSchedulesParams) WithOffset(offset *int64) *PublicListSchedulesParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the public list schedules params
func (o *PublicListSchedulesParams) SetOffset(offset *int64) {
	o.Offset = offset
}

// WriteToRequest writes these params to a swagger request
func (o *PublicListSchedulesParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
