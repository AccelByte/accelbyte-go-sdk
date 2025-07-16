// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package challenge_list

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

// Deprecated: 2025-07-16 - Use PublicGetScheduledGoalsSortBy<EnumValue>Constant instead.
// Get the enum in PublicGetScheduledGoalsParams
const (
	PublicGetScheduledGoalsCreatedAtConstant     = "createdAt"
	PublicGetScheduledGoalsCreatedAtAscConstant  = "createdAt:asc"
	PublicGetScheduledGoalsCreatedAtDescConstant = "createdAt:desc"
	PublicGetScheduledGoalsUpdatedAtConstant     = "updatedAt"
	PublicGetScheduledGoalsUpdatedAtAscConstant  = "updatedAt:asc"
	PublicGetScheduledGoalsUpdatedAtDescConstant = "updatedAt:desc"
)

// Get the enum in PublicGetScheduledGoalsParams
const (
	PublicGetScheduledGoalsSortByCreatedAtConstant     = "createdAt"
	PublicGetScheduledGoalsSortByCreatedAtAscConstant  = "createdAt:asc"
	PublicGetScheduledGoalsSortByCreatedAtDescConstant = "createdAt:desc"
	PublicGetScheduledGoalsSortByUpdatedAtConstant     = "updatedAt"
	PublicGetScheduledGoalsSortByUpdatedAtAscConstant  = "updatedAt:asc"
	PublicGetScheduledGoalsSortByUpdatedAtDescConstant = "updatedAt:desc"
)

// NewPublicGetScheduledGoalsParams creates a new PublicGetScheduledGoalsParams object
// with the default values initialized.
func NewPublicGetScheduledGoalsParams() *PublicGetScheduledGoalsParams {
	var (
		limitDefault  = int64(20)
		offsetDefault = int64(0)
	)
	return &PublicGetScheduledGoalsParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicGetScheduledGoalsParamsWithTimeout creates a new PublicGetScheduledGoalsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicGetScheduledGoalsParamsWithTimeout(timeout time.Duration) *PublicGetScheduledGoalsParams {
	var (
		limitDefault  = int64(20)
		offsetDefault = int64(0)
	)
	return &PublicGetScheduledGoalsParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: timeout,
	}
}

// NewPublicGetScheduledGoalsParamsWithContext creates a new PublicGetScheduledGoalsParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicGetScheduledGoalsParamsWithContext(ctx context.Context) *PublicGetScheduledGoalsParams {
	var (
		limitDefault  = int64(20)
		offsetDefault = int64(0)
	)
	return &PublicGetScheduledGoalsParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		Context: ctx,
	}
}

// NewPublicGetScheduledGoalsParamsWithHTTPClient creates a new PublicGetScheduledGoalsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicGetScheduledGoalsParamsWithHTTPClient(client *http.Client) *PublicGetScheduledGoalsParams {
	var (
		limitDefault  = int64(20)
		offsetDefault = int64(0)
	)
	return &PublicGetScheduledGoalsParams{
		Limit:      &limitDefault,
		Offset:     &offsetDefault,
		HTTPClient: client,
	}
}

/*PublicGetScheduledGoalsParams contains all the parameters to send to the API endpoint
for the public get scheduled goals operation typically these are written to a http.Request
*/
type PublicGetScheduledGoalsParams struct {

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
	/*Tags
	  filter list by tags

	*/
	Tags []string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the public get scheduled goals params
func (o *PublicGetScheduledGoalsParams) WithTimeout(timeout time.Duration) *PublicGetScheduledGoalsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public get scheduled goals params
func (o *PublicGetScheduledGoalsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public get scheduled goals params
func (o *PublicGetScheduledGoalsParams) WithContext(ctx context.Context) *PublicGetScheduledGoalsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public get scheduled goals params
func (o *PublicGetScheduledGoalsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public get scheduled goals params
func (o *PublicGetScheduledGoalsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public get scheduled goals params
func (o *PublicGetScheduledGoalsParams) WithHTTPClient(client *http.Client) *PublicGetScheduledGoalsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public get scheduled goals params
func (o *PublicGetScheduledGoalsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public get scheduled goals params
func (o *PublicGetScheduledGoalsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PublicGetScheduledGoalsParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithChallengeCode adds the challengeCode to the public get scheduled goals params
func (o *PublicGetScheduledGoalsParams) WithChallengeCode(challengeCode string) *PublicGetScheduledGoalsParams {
	o.SetChallengeCode(challengeCode)
	return o
}

// SetChallengeCode adds the challengeCode to the public get scheduled goals params
func (o *PublicGetScheduledGoalsParams) SetChallengeCode(challengeCode string) {
	o.ChallengeCode = challengeCode
}

// WithNamespace adds the namespace to the public get scheduled goals params
func (o *PublicGetScheduledGoalsParams) WithNamespace(namespace string) *PublicGetScheduledGoalsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public get scheduled goals params
func (o *PublicGetScheduledGoalsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithLimit adds the limit to the public get scheduled goals params
func (o *PublicGetScheduledGoalsParams) WithLimit(limit *int64) *PublicGetScheduledGoalsParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the public get scheduled goals params
func (o *PublicGetScheduledGoalsParams) SetLimit(limit *int64) {
	o.Limit = limit
}

// WithOffset adds the offset to the public get scheduled goals params
func (o *PublicGetScheduledGoalsParams) WithOffset(offset *int64) *PublicGetScheduledGoalsParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the public get scheduled goals params
func (o *PublicGetScheduledGoalsParams) SetOffset(offset *int64) {
	o.Offset = offset
}

// WithSortBy adds the sortBy to the public get scheduled goals params
func (o *PublicGetScheduledGoalsParams) WithSortBy(sortBy *string) *PublicGetScheduledGoalsParams {
	o.SetSortBy(sortBy)
	return o
}

// SetSortBy adds the sortBy to the public get scheduled goals params
func (o *PublicGetScheduledGoalsParams) SetSortBy(sortBy *string) {
	o.SortBy = sortBy
}

// WithTags adds the tags to the public get scheduled goals params
func (o *PublicGetScheduledGoalsParams) WithTags(tags []string) *PublicGetScheduledGoalsParams {
	o.SetTags(tags)
	return o
}

// SetTags adds the tags to the public get scheduled goals params
func (o *PublicGetScheduledGoalsParams) SetTags(tags []string) {
	o.Tags = tags
}

// WriteToRequest writes these params to a swagger request
func (o *PublicGetScheduledGoalsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
