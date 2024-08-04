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

// NewPublicGetPastUserProgressionParams creates a new PublicGetPastUserProgressionParams object
// with the default values initialized.
func NewPublicGetPastUserProgressionParams() *PublicGetPastUserProgressionParams {
	var (
		limitDefault  = int64(20)
		offsetDefault = int64(0)
	)
	return &PublicGetPastUserProgressionParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicGetPastUserProgressionParamsWithTimeout creates a new PublicGetPastUserProgressionParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicGetPastUserProgressionParamsWithTimeout(timeout time.Duration) *PublicGetPastUserProgressionParams {
	var (
		limitDefault  = int64(20)
		offsetDefault = int64(0)
	)
	return &PublicGetPastUserProgressionParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: timeout,
	}
}

// NewPublicGetPastUserProgressionParamsWithContext creates a new PublicGetPastUserProgressionParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicGetPastUserProgressionParamsWithContext(ctx context.Context) *PublicGetPastUserProgressionParams {
	var (
		limitDefault  = int64(20)
		offsetDefault = int64(0)
	)
	return &PublicGetPastUserProgressionParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		Context: ctx,
	}
}

// NewPublicGetPastUserProgressionParamsWithHTTPClient creates a new PublicGetPastUserProgressionParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicGetPastUserProgressionParamsWithHTTPClient(client *http.Client) *PublicGetPastUserProgressionParams {
	var (
		limitDefault  = int64(20)
		offsetDefault = int64(0)
	)
	return &PublicGetPastUserProgressionParams{
		Limit:      &limitDefault,
		Offset:     &offsetDefault,
		HTTPClient: client,
	}
}

/*PublicGetPastUserProgressionParams contains all the parameters to send to the API endpoint
for the public get past user progression operation typically these are written to a http.Request
*/
type PublicGetPastUserProgressionParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*ChallengeCode
	  challenge code

	*/
	ChallengeCode string
	/*Index
	  rotation index. Treat rotation as an array sorted by the start time of a rotation in descending manner. positive integer. 0 indicates current or latest active rotation. increment the value to refer to specific past rotation.

	*/
	Index int64
	/*Namespace
	  namespace of the game

	*/
	Namespace string
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

// WithTimeout adds the timeout to the public get past user progression params
func (o *PublicGetPastUserProgressionParams) WithTimeout(timeout time.Duration) *PublicGetPastUserProgressionParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public get past user progression params
func (o *PublicGetPastUserProgressionParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public get past user progression params
func (o *PublicGetPastUserProgressionParams) WithContext(ctx context.Context) *PublicGetPastUserProgressionParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public get past user progression params
func (o *PublicGetPastUserProgressionParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public get past user progression params
func (o *PublicGetPastUserProgressionParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public get past user progression params
func (o *PublicGetPastUserProgressionParams) WithHTTPClient(client *http.Client) *PublicGetPastUserProgressionParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public get past user progression params
func (o *PublicGetPastUserProgressionParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public get past user progression params
func (o *PublicGetPastUserProgressionParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PublicGetPastUserProgressionParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithChallengeCode adds the challengeCode to the public get past user progression params
func (o *PublicGetPastUserProgressionParams) WithChallengeCode(challengeCode string) *PublicGetPastUserProgressionParams {
	o.SetChallengeCode(challengeCode)
	return o
}

// SetChallengeCode adds the challengeCode to the public get past user progression params
func (o *PublicGetPastUserProgressionParams) SetChallengeCode(challengeCode string) {
	o.ChallengeCode = challengeCode
}

// WithIndex adds the index to the public get past user progression params
func (o *PublicGetPastUserProgressionParams) WithIndex(index int64) *PublicGetPastUserProgressionParams {
	o.SetIndex(index)
	return o
}

// SetIndex adds the index to the public get past user progression params
func (o *PublicGetPastUserProgressionParams) SetIndex(index int64) {
	o.Index = index
}

// WithNamespace adds the namespace to the public get past user progression params
func (o *PublicGetPastUserProgressionParams) WithNamespace(namespace string) *PublicGetPastUserProgressionParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public get past user progression params
func (o *PublicGetPastUserProgressionParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithGoalCode adds the goalCode to the public get past user progression params
func (o *PublicGetPastUserProgressionParams) WithGoalCode(goalCode *string) *PublicGetPastUserProgressionParams {
	o.SetGoalCode(goalCode)
	return o
}

// SetGoalCode adds the goalCode to the public get past user progression params
func (o *PublicGetPastUserProgressionParams) SetGoalCode(goalCode *string) {
	o.GoalCode = goalCode
}

// WithLimit adds the limit to the public get past user progression params
func (o *PublicGetPastUserProgressionParams) WithLimit(limit *int64) *PublicGetPastUserProgressionParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the public get past user progression params
func (o *PublicGetPastUserProgressionParams) SetLimit(limit *int64) {
	o.Limit = limit
}

// WithOffset adds the offset to the public get past user progression params
func (o *PublicGetPastUserProgressionParams) WithOffset(offset *int64) *PublicGetPastUserProgressionParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the public get past user progression params
func (o *PublicGetPastUserProgressionParams) SetOffset(offset *int64) {
	o.Offset = offset
}

// WithTags adds the tags to the public get past user progression params
func (o *PublicGetPastUserProgressionParams) WithTags(tags []string) *PublicGetPastUserProgressionParams {
	o.SetTags(tags)
	return o
}

// SetTags adds the tags to the public get past user progression params
func (o *PublicGetPastUserProgressionParams) SetTags(tags []string) {
	o.Tags = tags
}

// WriteToRequest writes these params to a swagger request
func (o *PublicGetPastUserProgressionParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param challengeCode
	if err := r.SetPathParam("challengeCode", o.ChallengeCode); err != nil {
		return err
	}

	// path param index
	if err := r.SetPathParam("index", swag.FormatInt64(o.Index)); err != nil {
		return err
	}

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
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
